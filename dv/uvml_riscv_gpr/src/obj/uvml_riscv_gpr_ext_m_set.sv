// 
// Copyright 2020 Datum Technology Corporation
// SPDX-License-Identifier: Apache-2.0 WITH SHL-2.1
// 
// Licensed under the Solderpad Hardware License v 2.1 (the �License�); you may
// not use this file except in compliance with the License, or, at your option,
// the Apache License version 2.0. You may obtain a copy of the License at
// 
//     https://solderpad.org/licenses/SHL-2.1/
// 
// Unless required by applicable law or agreed to in writing, any work
// distributed under the License is distributed on an �AS IS� BASIS, WITHOUT
// WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the
// License for the specific language governing permissions and limitations
// under the License.
// 


`ifndef __UVML_RISCV_GPR_EXT_M_SET_SV__
`define __UVML_RISCV_GPR_EXT_M_SET_SV__


/**
 * TODO Describe uvml_riscv_gpr_ext_m_set_c
 */
class uvml_riscv_gpr_ext_m_set_c extends uvml_riscv_gpr_ext_base_set_c;
   
   `uvm_object_utils_begin(uvml_riscv_gpr_ext_m_set_c)
   `uvm_object_utils_end
   
   
   /**
    * Default constructor.
    */
   extern function new(string name="uvml_riscv_gpr_ext_m_set");
   
endclass : uvml_riscv_gpr_ext_m_set_c


function uvml_riscv_gpr_ext_m_set_c::new(string name="uvml_riscv_gpr_ext_m_set");
   
   super.new(name);
   version.major = 2;
   version.minor = 0;
   
endfunction : new


`endif // __UVML_RISCV_GPR_EXT_M_SET_SV__
