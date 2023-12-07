// Copyright 2021 ETH Zurich and University of Bologna.
// Solderpad Hardware License, Version 0.51, see LICENSE for details.
// SPDX-License-Identifier: SHL-0.51
//
// Author: Matheus Cavalcante <matheusd@iis.ee.ethz.ch>
// Date: 21/10/2020
// Description: Top level testbench module for Verilator.

module ara_tb_verilator #(
    parameter int unsigned NrLanes = 0
  )(
    input  logic        clk_i,
    input  logic        rst_ni,
    output logic [63:0] exit_o
  );

  /*****************
   *  Definitions  *
   *****************/

  localparam AxiAddrWidth     = 64;
  localparam AxiWideDataWidth = 64 * NrLanes / 2;

  /*********
   *  DUT  *
   *********/

  ara_testharness #(
    .NrLanes     (NrLanes         ),
    .AxiAddrWidth(AxiAddrWidth    ),
    .AxiDataWidth(AxiWideDataWidth)
  ) dut (
    .clk_i (clk_i ),
    .rst_ni(rst_ni),
    .exit_o(exit_o)
  );

  /*********
   *  EOC  *
   *********/

  always @(posedge clk_i) begin
    if (exit_o[0]) begin
      if (exit_o >> 1) begin
        $warning("Core Test ", $sformatf("*** FAILED *** (tohost = %0d)", (exit_o >> 1)));
      end else begin
        // Print vector HW runtime
        $display("[hw-cycles]: %d", int'(dut.runtime_buf_q));
        $info("Core Test ", $sformatf("*** SUCCESS *** (tohost = %0d)", (exit_o >> 1)));
      end
      $finish(exit_o >> 1);
    end
  end
  
  final begin
    int memory [100000];
    //int read_address = $fopen("begin.signature", "r");
    //int sigdump = $fopen("DUT-ara.signature", "w");
    reg [31:0] begin_signature [0:1];
    reg [31:0] end_signature [0:1];
    
    //$fread(begin_signature, read_address);
    $readmemh("begin.signature", begin_signature);
    $display("%h", begin_signature[0]);
    begin_signature[0] = ((begin_signature[0] - 32'h8000_0000)/4)-1;
    $display("%h", begin_signature[0]);
    //$fclose(read_address);
    
    //read_address = $fopen("end.signature", "r");
    //$fread(end_signature, read_address);
    $readmemh("end.signature", end_signature);
    $display("%h", end_signature[0]);
    end_signature[0] = ((end_signature[0] - 32'h8000_0000)/4)-1;
    $display("%h", end_signature[0]);
    //$fclose(read_address);
    
    for (reg [31:0] iter = 0; iter < end_signature[0]; iter++) begin
      memory[(4*iter)+0] = dut.i_ara_soc.i_dram.sram[iter][31:0];
      memory[(4*iter)+1] = dut.i_ara_soc.i_dram.sram[iter][63:32];
      memory[(4*iter)+2] = dut.i_ara_soc.i_dram.sram[iter][95:64];
      memory[(4*iter)+3] = dut.i_ara_soc.i_dram.sram[iter][127:96];
    end
    
    //int memory [];
    //memory = new[end_signature[0] - begin_signature[0]];
    $writememh("DUT-ara.signature", memory, begin_signature[0], end_signature[0]-1);
    /*for (reg [31:0] iter = begin_signature[0]; iter < end_signature[0]; iter++) begin
      $fwrite(sigdump, "%x\n",memory[iter]);
      //$display("%x\t%d\n",iter,iter);
    end*/
    
    /*for (int iter = 0; iter < 64'h6000; iter++) begin
      $fwrite(sigdump, "%x\n%x\n%x\n%x\n",dut.i_ara_soc.i_dram.sram[iter][31:0],dut.i_ara_soc.i_dram.sram[iter][63:32],dut.i_ara_soc.i_dram.sram[iter][95:64],dut.i_ara_soc.i_dram.sram[iter][127:96]);
    end*/
    
    //$fclose(sigdump);
  end

endmodule : ara_tb_verilator
