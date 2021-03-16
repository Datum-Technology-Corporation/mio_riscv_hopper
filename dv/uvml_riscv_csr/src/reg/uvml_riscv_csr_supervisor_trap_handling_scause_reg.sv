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


`ifndef __UVML_RISCV_CSR_SUPERVISOR_TRAP_HANDLNG_SCAUSE_REG_SV__
`define __UVML_RISCV_CSR_SUPERVISOR_TRAP_HANDLNG_SCAUSE_REG_SV__


/**
 * RISC-V Machine Cause Register.
 */
class uvml_riscv_csr_supervisor_trap_handling_scause_reg_c#(
   int unsigned XLEN = 32
) extends uvml_riscv_csr_base_reg_c#(
   .XLEN(XLEN)
);
   
   rand uvml_ral_reg_field_c  exception_code;
   rand uvml_ral_reg_field_c  interrupt     ;
   
   
   `uvm_object_param_utils_begin(uvml_riscv_csr_supervisor_trap_handling_scause_reg_c#(.XLEN(XLEN)))
      `uvm_field_object(exception_code, UVM_DEFAULT)
      `uvm_field_object(interrupt     , UVM_DEFAULT)
   `uvm_object_utils_end
   
   
   /**
    * Default constructor.
    */
   extern function new(string name="uvml_riscv_csr_supervisor_trap_handling_scause_reg", int unsigned n_bits=XLEN, int has_coverage=UVM_NO_COVERAGE);
   
   /**
    * Create and configure register fields.
    */
   extern virtual function void build();
   
endclass : uvml_riscv_csr_supervisor_trap_handling_scause_reg_c


function uvml_riscv_csr_supervisor_trap_handling_scause_reg_c::new(string name="uvml_riscv_csr_supervisor_trap_handling_scause_reg", int unsigned n_bits=XLEN, int has_coverage=UVM_NO_COVERAGE);
   
   super.new(name, n_bits, has_coverage);
   
endfunction : new


function void uvml_riscv_csr_supervisor_trap_handling_scause_reg_c::build();
   
   exception_code = uvml_ral_reg_field_c::type_id::create("exception_code");
   exception_code.configure(
      .parent                 (  this),
      .size                   (XLEN-1),
      .lsb_pos                (     0),
      .access                 (  "RW"),
      .volatile               (     0),
      .reset                  (     0),
      .has_reset              (     1),
      .is_rand                (     1),
      .individually_accessible(     1)
   );
   
   interrupt = uvml_ral_reg_field_c::type_id::create("interrupt");
   interrupt.configure(
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


`endif // __UVML_RISCV_CSR_SUPERVISOR_TRAP_HANDLNG_SCAUSE_REG_SV__
