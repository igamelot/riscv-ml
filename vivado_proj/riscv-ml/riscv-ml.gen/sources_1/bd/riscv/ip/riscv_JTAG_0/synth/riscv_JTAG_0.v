// (c) Copyright 1995-2022 Xilinx, Inc. All rights reserved.
// 
// This file contains confidential and proprietary information
// of Xilinx, Inc. and is protected under U.S. and
// international copyright and other intellectual property
// laws.
// 
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// Xilinx, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) Xilinx shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or Xilinx had been advised of the
// possibility of the same.
// 
// CRITICAL APPLICATIONS
// Xilinx products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of Xilinx products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
// 
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
// 
// DO NOT MODIFY THIS FILE.


// IP VLNV: xilinx.com:module_ref:bscan2jtag:1.0
// IP Revision: 1

(* X_CORE_INFO = "bscan2jtag,Vivado 2022.1" *)
(* CHECK_LICENSE_TYPE = "riscv_JTAG_0,bscan2jtag,{}" *)
(* CORE_GENERATION_INFO = "riscv_JTAG_0,bscan2jtag,{x_ipProduct=Vivado 2022.1,x_ipVendor=xilinx.com,x_ipLibrary=module_ref,x_ipName=bscan2jtag,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED,enable_tck_bufg=true}" *)
(* IP_DEFINITION_SOURCE = "module_ref" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module riscv_JTAG_0 (
  S_BSCAN_bscanid_en,
  S_BSCAN_capture,
  S_BSCAN_drck,
  S_BSCAN_reset,
  S_BSCAN_runtest,
  S_BSCAN_sel,
  S_BSCAN_shift,
  S_BSCAN_tck,
  S_BSCAN_tdi,
  S_BSCAN_tdo,
  S_BSCAN_tms,
  S_BSCAN_update,
  jtag_tdo,
  jtag_tdi,
  jtag_tms,
  jtag_tck,
  jtag_tdt
);

(* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 S_BSCAN BSCANID_EN" *)
input wire S_BSCAN_bscanid_en;
(* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 S_BSCAN CAPTURE" *)
input wire S_BSCAN_capture;
(* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 S_BSCAN DRCK" *)
input wire S_BSCAN_drck;
(* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 S_BSCAN RESET" *)
input wire S_BSCAN_reset;
(* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 S_BSCAN RUNTEST" *)
input wire S_BSCAN_runtest;
(* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 S_BSCAN SEL" *)
input wire S_BSCAN_sel;
(* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 S_BSCAN SHIFT" *)
input wire S_BSCAN_shift;
(* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 S_BSCAN TCK" *)
input wire S_BSCAN_tck;
(* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 S_BSCAN TDI" *)
input wire S_BSCAN_tdi;
(* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 S_BSCAN TDO" *)
output wire S_BSCAN_tdo;
(* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 S_BSCAN TMS" *)
input wire S_BSCAN_tms;
(* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 S_BSCAN UPDATE" *)
input wire S_BSCAN_update;
(* X_INTERFACE_INFO = "xilinx.com:interface:jtag:1.0 JTAG TD_O" *)
input wire jtag_tdo;
(* X_INTERFACE_INFO = "xilinx.com:interface:jtag:1.0 JTAG TD_I" *)
output wire jtag_tdi;
(* X_INTERFACE_INFO = "xilinx.com:interface:jtag:1.0 JTAG TMS" *)
output wire jtag_tms;
(* X_INTERFACE_INFO = "xilinx.com:interface:jtag:1.0 JTAG TCK" *)
output wire jtag_tck;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME JTAG, BUFFER_TYPE NONE" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:jtag:1.0 JTAG TD_T" *)
input wire jtag_tdt;

  bscan2jtag #(
    .enable_tck_bufg(1'B1)
  ) inst (
    .S_BSCAN_bscanid_en(S_BSCAN_bscanid_en),
    .S_BSCAN_capture(S_BSCAN_capture),
    .S_BSCAN_drck(S_BSCAN_drck),
    .S_BSCAN_reset(S_BSCAN_reset),
    .S_BSCAN_runtest(S_BSCAN_runtest),
    .S_BSCAN_sel(S_BSCAN_sel),
    .S_BSCAN_shift(S_BSCAN_shift),
    .S_BSCAN_tck(S_BSCAN_tck),
    .S_BSCAN_tdi(S_BSCAN_tdi),
    .S_BSCAN_tdo(S_BSCAN_tdo),
    .S_BSCAN_tms(S_BSCAN_tms),
    .S_BSCAN_update(S_BSCAN_update),
    .jtag_tdo(jtag_tdo),
    .jtag_tdi(jtag_tdi),
    .jtag_tms(jtag_tms),
    .jtag_tck(jtag_tck),
    .jtag_tdt(jtag_tdt)
  );
endmodule