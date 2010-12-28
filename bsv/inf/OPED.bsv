// OPED.bsv
// Copyright (c) 2010 Atomic Rules LLC - ALL RIGHTS RESERVED

// Infrastucture Imports...
import Config            ::*;
import OCWip             ::*;
import OCCP              ::*;
import OCDP              ::*;
import PCIE              ::*;
import PCIEwrap          ::*;
import TimeService       ::*;
import TLPMF             ::*;
import UNoC              ::*;
import ARAXI4L           ::*;
import WCIS2AL4M         ::*;

// BSV Imports...
import Clocks            ::*;
import ClientServer      ::*;
import Connectable       ::*;
import DefaultValue      ::*;
import FIFO              ::*;
import GetPut            ::*;
import Vector            ::*;

interface OPEDIfc#(numeric type lanes);
  interface PCIE_EXP#(lanes)       pcie;
  interface Clock                  p125clk;
  interface Reset                  p125rst;
  interface A4LMIfc                axi4m;
  //TODO: A4-Stream-Master
  //TODO: A4-Stream-Slave
  (*always_ready*) method Bit#(32) debug;
endinterface: OPEDIfc

(* synthesize, no_default_clock, no_default_reset, clock_prefix="" *)
module mkOPEDv5#(Clock pci0_clkp, Clock pci0_clkn, Reset pci0_rstn) (OPEDIfc#(8));
  OPEDIfc#(8) _a <- mkOPED("V5",pci0_clkp,pci0_clkn,pci0_rstn); return _a;
endmodule

(* synthesize, no_default_clock, no_default_reset, clock_prefix="" *)
module mkOPEDv6#(Clock pci0_clkp, Clock pci0_clkn, Reset pci0_rstn) (OPEDIfc#(4));
  OPEDIfc#(4) _a <- mkOPED("V6",pci0_clkp,pci0_clkn,pci0_rstn); return _a;
endmodule

// This top-level wrapper module has no default clock or reset...
module mkOPED#(String family, Clock pci0_clkp, Clock pci0_clkn, Reset pci0_rstn)(OPEDIfc#(lanes)) provisos(Add#(1,z,lanes));
  PCIEwrapIfc#(lanes) pciw  <- mkPCIEwrap(family,pci0_clkp, pci0_clkn, pci0_rstn);
  Clock p125Clk = pciw.pClk;
  Reset p125Rst = pciw.pRst;

  // This is the inner body of mkOPED, which enjoys having the default 125 MHz Clock and Reset provided...
  module mkOPED_inner (OPEDIfc#(lanes)) provisos(Add#(1,z,lanes));
    Reg#(PciId)          pciDevice  <- mkReg(unpack(0));
    (* fire_when_enabled, no_implicit_conditions *) rule pdev; pciDevice <= pciw.device; endrule
    UNoCIfc              noc        <- mkUNoC;                              // uNoC Network-on-Chip
    OCCPIfc#(Nwcit)      cp         <- mkOCCP(pciDevice, p125Clk, p125Rst); // Control Plane

    Vector#(15,WciOcp_Em#(20)) vWci; vWci = cp.wci_Vm; // splay apart the individual Reset signals from the Control Plane
    Vector#(15, Reset) rst = newVector; for (Integer i=0; i<15; i=i+1) rst[i] = vWci[i].mReset_n;

    WCIS2A4LMIfc  wci2axi <- mkWCIS2A4LM(True,reset_by rst[0]); // W1: WCI to AXI4-Lite Bridge
    mkConnection(vWci[0], wci2axi.wciS0);                        // Connect the WCI to W1, the wci2axi bridge
    OCDP4BIfc dp0 <- mkOCDP(insertFNum(pciDevice,0),False,True, reset_by rst[13]); // W14: data-plane fabric consumer PULL Only
    OCDP4BIfc dp1 <- mkOCDP(insertFNum(pciDevice,1),True,False, reset_by rst[14]); // W15: data-plane fabric producer PUSH Only

    mkConnection(pciw.client, noc.fab);   // PCIe to uNoC
    mkConnection(noc.cp,    cp.server);   // uNoC to Control Plane
    mkConnection(noc.dp0,   dp0.server);  // uNoC to Data Plane 0
    mkConnection(noc.dp1,   dp1.server);  // uNoC to Data Plane 1

    interface PCI_EXP  pcie    = pciw.pcie;
    interface Clock    p125clk = pciw.pClk;
    interface Reset    p125rst = pciw.pRst;
    interface A4LMIfc  axi4m   = wci2axi.axiM0;
    method Bit#(32)    debug   = extend(pack(pciw.linkUp));
  endmodule: mkOPED_inner

  OPEDIfc#(lanes) _b  <- mkOPED_inner(clocked_by p125Clk, reset_by p125Rst); return _b; // Instance wrapped inner module

endmodule: mkOPED