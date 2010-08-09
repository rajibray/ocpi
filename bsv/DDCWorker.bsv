// DDCWorker - Four DDC channels
// Copyright (c) 2010 Atomic Rules LLC - ALL RIGHTS RESERVED

import OCWip::*;
import DDC::*;

import Alias::*;
import Complex::*;
import Connectable::*;
import FIFO::*;
import FIFOF::*;
import GetPut::*;

typedef 20 NwciAddr; // Implementer chosen number of WCI address byte bits
typedef enum {DDCPass, DDCEnable, DDCSpare2, DDCSpare3} DDCMode deriving (Bits, Eq);  // DDC mode bits in ddcCtrl[1:0]

interface DDCWorkerIfc;
  interface Wci_Es#(NwciAddr)        wciS0;    // Worker Control and Configuration 
  interface Wsi_Es#(12,32,4,8,0)     wsiS0;    // WSI-S Stream Input
  interface Wsi_Em#(12,32,4,8,0)     wsiM0;    // WSI-M Stream Output
endinterface 

(* synthesize, default_clock_osc="wciS0_Clk", default_reset="wciS0_MReset_n" *)
module mkDDCWorker#(parameter Bit#(32) ddcCtrlInit, parameter Bool hasDebugLogic) (DDCWorkerIfc);

  WciSlaveIfc #(NwciAddr)            wci         <- mkWciSlave;
  WsiSlaveIfc #(12,32,4,8,0)         wsiS        <- mkWsiSlave;
  WsiMasterIfc#(12,32,4,8,0)         wsiM        <- mkWsiMaster;
  Reg#(Bit#(32))                     ddcCtrl     <- mkReg(ddcCtrlInit);
  DDCIfc                             ddc         <- mkDDC;
  Reg#(UInt#(16))                    unloadCnt   <- mkReg(0);
  FIFOF#(Bit#(32))                   xnF         <- mkFIFOF;
  Reg#(Bool)                         takeEven    <- mkReg(True); // start with 0
  Reg#(Bool)                         sendEven    <- mkReg(True); // start with 0
  Reg#(UInt#(16))                    evenMag     <- mkRegU;

  DDCMode pmod = unpack(ddcCtrl[1:0]);
  Bool fromOffsetBin = unpack(ddcCtrl[4]);

(* fire_when_enabled, no_implicit_conditions *)
rule operating_actions (wci.isOperating);
  wsiS.operate(); wsiM.operate();
endrule

rule ddcPass_bypass (wci.isOperating && pmod==DDCPass);
  WsiReq#(12,32,4,8,0) r <- wsiS.reqGet.get;
  wsiM.reqPut.put(r);
endrule

/*
rule ddcEnable_doIngress (wci.isOperating && pmod==DDCEnable); // rule will fire 4K times per frame
  Bit#(32) d32   = xnF.first;
  Bit#(16) dReal = (takeEven) ? d32[15:0] : d32[31:16]; // little-endian: first, even sample at LS word
  if (fromOffsetBin) dReal[15] = ~dReal[15];            // If converting from Offset Binary, flip MSP to get 2's comp
  fft.putXn.put(Complex{rel:dReal, img:0});             // put 4K real time-domain samples
  if (!takeEven) xnF.deq;                               // only 2K DEQs per frame
  takeEven <= !takeEven;
endrule

rule ddcEnable_doEgress (wci.isOperating && pmod==DDCEnable);
  Cmp16 xk  = fft.fifoXk.first;
  Int#(16) xkRel = unpack(xk.rel);                                 // Signed 16b I FFT Outout
  Int#(16) xkImg = unpack(xk.img);                                 // Signed 16b Q FFT Outout
  UInt#(16) absXkRel =  unpack(pack(abs(xkRel)));                  // take |i| and convert to UInt
  UInt#(16) absXkImg =  unpack(pack(abs(xkImg)));                  // take |q| and convert to UInt
  UInt#(16) mag = magApprox2(Complex{rel:absXkRel,img:absXkImg});  // pass the 1st quadrant to magApprox1
  Bool lastWord = (unloadCnt == 4095);                             // Hardcoded to 4K Transform
  if (sendEven) evenMag <= mag;                                    // stage and store for the next firing
  else begin
    wsiM.reqPut.put (WsiReq    {cmd  : WR ,
                             reqLast : lastWord,
                             reqInfo : 0,
                        burstPrecise : True,
                         burstLength : 2048, // 4B words =  8KB      Hardcoded to 4K Transform
                               data  : {pack(mag), pack(evenMag)},
                             byteEn  : '1,
                           dataInfo  : '0 });
  end
  fft.fifoXk.deq;                                                  // 4K FFT unloads
  sendEven <= !sendEven;
  unloadCnt <= (lastWord) ? 0 : unloadCnt + 1;
endrule

*/



//
// WCI...
//

Bit#(32) ddcStatus = extend({pack(hasDebugLogic)});

(* descending_urgency = "wci_ctl_op_complete, wci_ctl_op_start, wci_cfwr, wci_cfrd" *)
(* mutually_exclusive = "wci_cfwr, wci_cfrd, wci_ctrl_EiI, wci_ctrl_IsO, wci_ctrl_OrE" *)

rule wci_cfwr (wci.configWrite); // WCI Configuration Property Writes...
 let wciReq <- wci.reqGet.get;
   case (wciReq.addr) matches
     'h04 : ddcCtrl <= unpack(wciReq.data);
   endcase
   //$display("[%0d]: %m: WCI CONFIG WRITE Addr:%0x BE:%0x Data:%0x", //$time, wciReq.addr, wciReq.byteEn, wciReq.data);
   wci.respPut.put(wciOKResponse); // write response
endrule

rule wci_cfrd (wci.configRead);  // WCI Configuration Property Reads...
 let wciReq <- wci.reqGet.get; Bit#(32) rdat = '0;
   case (wciReq.addr) matches
     'h00 : rdat = pack(ddcStatus);
     'h04 : rdat = pack(ddcCtrl);
     'h10 : rdat = !hasDebugLogic ? 0 : extend({pack(wsiS.status),pack(wsiM.status)});
     'h14 : rdat = !hasDebugLogic ? 0 : pack(wsiS.extStatus.pMesgCount);
     'h18 : rdat = !hasDebugLogic ? 0 : pack(wsiS.extStatus.iMesgCount);
     'h1C : rdat = !hasDebugLogic ? 0 : pack(wsiS.extStatus.tBusyCount);
     'h20 : rdat = !hasDebugLogic ? 0 : pack(wsiM.extStatus.pMesgCount);
     'h24 : rdat = !hasDebugLogic ? 0 : pack(wsiM.extStatus.iMesgCount);
     'h28 : rdat = !hasDebugLogic ? 0 : pack(wsiM.extStatus.tBusyCount);
   endcase
   //$display("[%0d]: %m: WCI CONFIG READ Addr:%0x BE:%0x Data:%0x", //$time, wciReq.addr, wciReq.byteEn, rdat);
   wci.respPut.put(WciResp{resp:DVA, data:rdat}); // read response
endrule

rule wci_ctrl_IsO (wci.ctlState==Initialized && wci.ctlOp==Start);
  wci.ctlAck;
  $display("[%0d]: %m: Starting DDC ddcCtrl:%0x", $time, ddcCtrl);
endrule

rule wci_ctrl_EiI (wci.ctlState==Exists && wci.ctlOp==Initialize); wci.ctlAck; endrule
rule wci_ctrl_OrE (wci.isOperating && wci.ctlOp==Release); wci.ctlAck; endrule

  Wci_Es#(NwciAddr)        wci_Es    <- mkWciStoES(wci.slv); 
  Wsi_Es#(12,32,4,8,0)     wsi_Es    <- mkWsiStoES(wsiS.slv);

  interface wciS0  = wci_Es;
  interface wsiS0  = wsi_Es;
  interface wsiM0 = toWsiEM(wsiM.mas); 
endmodule

