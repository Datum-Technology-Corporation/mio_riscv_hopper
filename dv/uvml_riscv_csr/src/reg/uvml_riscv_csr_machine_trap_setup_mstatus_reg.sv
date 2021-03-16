// 
// Copyright 2021 Datum Technology Corporation
// SPDX-License-Identifier: Apache-2.0 WITH SHL-2.1
// 
// Licensed under the Solderpad Hardware License v 2.1 (the "License"); you may
// not use this file except in compliance with the License, or, at your option,
// the Apache License version 2.0. You may obtain a copy of the License at
// 
//     https://solderpad.org/licenses/SHL-2.1/
// 
// Unless required by applicable law or agreed to in writing, any work
// distributed under the License is distributed on an "AS IS" BASIS, WITHOUT
// WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the
// License for the specific language governing permissions and limitations
// under the License.
// 


`ifndef __UVML_RISCV_CSR_MACHINE_TRAP_SETUP_MSTATUS_REG_SV__
`define __UVML_RISCV_CSR_MACHINE_TRAP_SETUP_MSTATUS_REG_SV__


/**
 * RISC-V Machine Status Register.
 */
class uvml_riscv_csr_machine_trap_setup_mstatus_reg_c#(
   int unsigned XLEN = 32
) extends uvml_riscv_csr_base_reg_c#(
   .XLEN(XLEN)
);
   
   rand uvml_ral_reg_field_c  uie ;
   rand uvml_ral_reg_field_c  sie ;
   rand uvml_ral_reg_field_c  mie ;
   rand uvml_ral_reg_field_c  upie;
   rand uvml_ral_reg_field_c  spie;
   rand uvml_ral_reg_field_c  mpie;
   rand uvml_ral_reg_field_c  spp ;
   rand uvml_ral_reg_field_c  mpp ;
   rand uvml_ral_reg_field_c  fs  ;
   rand uvml_ral_reg_field_c  xs  ;
   rand uvml_ral_reg_field_c  mprv;
   rand uvml_ral_reg_field_c  sum ;
   rand uvml_ral_reg_field_c  mxr ;
   rand uvml_ral_reg_field_c  tvm ;
   rand uvml_ral_reg_field_c  tw  ;
   rand uvml_ral_reg_field_c  tsr ;
   rand uvml_ral_reg_field_c  uxl ;
   rand uvml_ral_reg_field_c  sxl ;
   rand uvml_ral_reg_field_c  sd  ;
   
   
   `uvm_object_param_utils_begin(uvml_riscv_csr_machine_trap_setup_mstatus_reg_c#(.XLEN(XLEN)))
      `uvm_field_object(uie , UVM_DEFAULT)
      `uvm_field_object(sie , UVM_DEFAULT)
      `uvm_field_object(mie , UVM_DEFAULT)
      `uvm_field_object(upie, UVM_DEFAULT)
      `uvm_field_object(spie, UVM_DEFAULT)
      `uvm_field_object(mpie, UVM_DEFAULT)
      `uvm_field_object(spp , UVM_DEFAULT)
      `uvm_field_object(mpp , UVM_DEFAULT)
      `uvm_field_object(fs  , UVM_DEFAULT)
      `uvm_field_object(xs  , UVM_DEFAULT)
      `uvm_field_object(mprv, UVM_DEFAULT)
      `uvm_field_object(sum , UVM_DEFAULT)
      `uvm_field_object(mxr , UVM_DEFAULT)
      `uvm_field_object(tvm , UVM_DEFAULT)
      `uvm_field_object(tw  , UVM_DEFAULT)
      `uvm_field_object(tsr , UVM_DEFAULT)
      `uvm_field_object(uxl , UVM_DEFAULT)
      `uvm_field_object(sxl , UVM_DEFAULT)
      `uvm_field_object(sd  , UVM_DEFAULT)
   `uvm_object_utils_end
   
   
   /**
    * Default constructor.
    */
   extern function new(string name="uvml_riscv_csr_machine_trap_setup_mstatus_reg", int unsigned n_bits=XLEN, int has_coverage=UVM_NO_COVERAGE);
   
   /**
    * Create and configure register fields.
    */
   extern virtual function void build();
   
endclass : uvml_riscv_csr_machine_trap_setup_mstatus_reg_c


function uvml_riscv_csr_machine_trap_setup_mstatus_reg_c::new(string name="uvml_riscv_csr_machine_trap_setup_mstatus_reg", int unsigned n_bits=XLEN, int has_coverage=UVM_NO_COVERAGE);
   
   super.new(name, n_bits, has_coverage);
   
endfunction : new


function void uvml_riscv_csr_machine_trap_setup_mstatus_reg_c::build();
   
   uie = uvml_ral_reg_field_c::type_id::create("uie");
   uie.configure(
      .parent                 (this),
      .size                   (   1),
      .lsb_pos                (   0),
      .access                 ("RW"),
      .volatile               (   0),
      .reset                  (   0),
      .has_reset              (   1),
      .is_rand                (   1),
      .individually_accessible(   1)
   );
   
   sie = uvml_ral_reg_field_c::type_id::create("sie");
   sie.configure(
      .parent                 (this),
      .size                   (   1),
      .lsb_pos                (   1),
      .access                 ("RW"),
      .volatile               (   0),
      .reset                  (   0),
      .has_reset              (   1),
      .is_rand                (   1),
      .individually_accessible(   1)
   );
   
   mie = uvml_ral_reg_field_c::type_id::create("mie");
   mie.configure(
      .parent                 (this),
      .size                   (   1),
      .lsb_pos                (   3),
      .access                 ("RW"),
      .volatile               (   0),
      .reset                  (   0),
      .has_reset              (   1),
      .is_rand                (   1),
      .individually_accessible(   1)
   );
   
   upie = uvml_ral_reg_field_c::type_id::create("upie");
   upie.configure(
      .parent                 (this),
      .size                   (   1),
      .lsb_pos                (   4),
      .access                 ("RW"),
      .volatile               (   0),
      .reset                  (   0),
      .has_reset              (   1),
      .is_rand                (   1),
      .individually_accessible(   1)
   );
   
   spie = uvml_ral_reg_field_c::type_id::create("spie");
   spie.configure(
      .parent                 (this),
      .size                   (   1),
      .lsb_pos                (   5),
      .access                 ("RW"),
      .volatile               (   0),
      .reset                  (   0),
      .has_reset              (   1),
      .is_rand                (   1),
      .individually_accessible(   1)
   );
   
   mpie = uvml_ral_reg_field_c::type_id::create("mpie");
   mpie.configure(
      .parent                 (this),
      .size                   (   1),
      .lsb_pos                (   7),
      .access                 ("RW"),
      .volatile               (   0),
      .reset                  (   0),
      .has_reset              (   1),
      .is_rand                (   1),
      .individually_accessible(   1)
   );
   
   spp = uvml_ral_reg_field_c::type_id::create("spp");
   spp.configure(
      .parent                 (this),
      .size                   (   1),
      .lsb_pos                (   8),
      .access                 ("RW"),
      .volatile               (   0),
      .reset                  (   0),
      .has_reset              (   1),
      .is_rand                (   1),
      .individually_accessible(   1)
   );
   
   mpp = uvml_ral_reg_field_c::type_id::create("");
   mpp.configure(
      .parent                 (this),
      .size                   (   2),
      .lsb_pos                (  11),
      .access                 ("RW"),
      .volatile               (   0),
      .reset                  (   0),
      .has_reset              (   1),
      .is_rand                (   1),
      .individually_accessible(   1)
   );
   
   fs = uvml_ral_reg_field_c::type_id::create("fs");
   fs.configure(
      .parent                 (this),
      .size                   (   2),
      .lsb_pos                (  13),
      .access                 ("RW"),
      .volatile               (   0),
      .reset                  (   0),
      .has_reset              (   1),
      .is_rand                (   1),
      .individually_accessible(   1)
   );
   
   xs = uvml_ral_reg_field_c::type_id::create("xs");
   xs.configure(
      .parent                 (this),
      .size                   (   2),
      .lsb_pos                (  15),
      .access                 ("RW"),
      .volatile               (   0),
      .reset                  (   0),
      .has_reset              (   1),
      .is_rand                (   1),
      .individually_accessible(   1)
   );
   
   mprv = uvml_ral_reg_field_c::type_id::create("mprv");
   mprv.configure(
      .parent                 (this),
      .size                   (   1),
      .lsb_pos                (  17),
      .access                 ("RW"),
      .volatile               (   0),
      .reset                  (   0),
      .has_reset              (   1),
      .is_rand                (   1),
      .individually_accessible(   1)
   );
   
   sum = uvml_ral_reg_field_c::type_id::create("sum");
   sum.configure(
      .parent                 (this),
      .size                   (   1),
      .lsb_pos                (  18),
      .access                 ("RW"),
      .volatile               (   0),
      .reset                  (   0),
      .has_reset              (   1),
      .is_rand                (   1),
      .individually_accessible(   1)
   );
   
   mxr = uvml_ral_reg_field_c::type_id::create("mxr");
   mxr.configure(
      .parent                 (this),
      .size                   (   1),
      .lsb_pos                (  19),
      .access                 ("RW"),
      .volatile               (   0),
      .reset                  (   0),
      .has_reset              (   1),
      .is_rand                (   1),
      .individually_accessible(   1)
   );
   
   tvm = uvml_ral_reg_field_c::type_id::create("tvm");
   tvm.configure(
      .parent                 (this),
      .size                   (   1),
      .lsb_pos                (  20),
      .access                 ("RW"),
      .volatile               (   0),
      .reset                  (   0),
      .has_reset              (   1),
      .is_rand                (   1),
      .individually_accessible(   1)
   );
   
   tw = uvml_ral_reg_field_c::type_id::create("tw");
   tw.configure(
      .parent                 (this),
      .size                   (   1),
      .lsb_pos                (  21),
      .access                 ("RW"),
      .volatile               (   0),
      .reset                  (   0),
      .has_reset              (   1),
      .is_rand                (   1),
      .individually_accessible(   1)
   );
   
   tsr = uvml_ral_reg_field_c::type_id::create("tsr");
   tsr.configure(
      .parent                 (this),
      .size                   (   1),
      .lsb_pos                (  22),
      .access                 ("RW"),
      .volatile               (   0),
      .reset                  (   0),
      .has_reset              (   1),
      .is_rand                (   1),
      .individually_accessible(   1)
   );
   
   case (XLEN)
      64: begin
         uxl = uvml_ral_reg_field_c::type_id::create("uxl");
         uxl.configure(
            .parent                 (this),
            .size                   (   2),
            .lsb_pos                (  32),
            .access                 ("RW"),
            .volatile               (   0),
            .reset                  (   0),
            .has_reset              (   1),
            .is_rand                (   1),
            .individually_accessible(   1)
         );
         
         sxl = uvml_ral_reg_field_c::type_id::create("sxl");
         sxl.configure(
            .parent                 (this),
            .size                   (   2),
            .lsb_pos                (  34),
            .access                 ("RW"),
            .volatile               (   0),
            .reset                  (   0),
            .has_reset              (   1),
            .is_rand                (   1),
            .individually_accessible(   1)
         );
      end
   endcase
   
   sd = uvml_ral_reg_field_c::type_id::create("sd");
   sd.configure(
      .parent                 (  this),
      .size                   (     1),
      .lsb_pos                (XLEN-1),
      .access                 (  "RW"),
      .volatile               (     0),
      .reset                  (     0),
      .has_reset              (     1),
      .is_rand                (     1),
      .individually_accessible(     1)
   );
   
endfunction: build


`endif // __UVML_RISCV_CSR_MACHINE_TRAP_SETUP_MSTATUS_REG_SV__
