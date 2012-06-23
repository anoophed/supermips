// NOTE: THIS MODULE IS AUTOGENERATED
//       DO NOT EDIT BY HAND!
import pipTypes::*;

module pipreg_id_ex(

  input [31:0] id_pc,
  input [31:0] id_inst_word,
  input [11:0] id_opc,
  input [31:0] id_A,
  input [31:0] id_B,
  input [4:0] id_A_reg,
  input [0:0] id_A_reg_valid,
  input fwd_t id_A_fwd_from,
  input [4:0] id_B_reg,
  input [0:0] id_B_reg_valid,
  input [0:0] id_B_need_late,
  input fwd_t id_B_fwd_from,
  input [31:0] id_imm,
  input [0:0] id_imm_valid,
  input [4:0] id_shamt,
  input [0:0] id_alu_inst,
  input alu_op_t id_alu_op,
  input alu_res_t id_alu_res_sel,
  input [0:0] id_alu_set_u,
  input ls_op_t id_ls_op,
  input [0:0] id_ls_sext,
  input [0:0] id_load_inst,
  input [0:0] id_store_inst,
  input [0:0] id_jmp_inst,
  input [4:0] id_dest_reg,
  input [0:0] id_dest_reg_valid,


  output reg [31:0] ex_pc,
  output reg [31:0] ex_inst_word,
  output reg [11:0] ex_opc,
  output reg [31:0] ex_A,
  output reg [31:0] ex_B,
  output reg [4:0] ex_A_reg,
  output reg [0:0] ex_A_reg_valid,
  output fwd_t ex_A_fwd_from,
  output reg [4:0] ex_B_reg,
  output reg [0:0] ex_B_reg_valid,
  output reg [0:0] ex_B_need_late,
  output fwd_t ex_B_fwd_from,
  output reg [31:0] ex_imm,
  output reg [0:0] ex_imm_valid,
  output reg [4:0] ex_shamt,
  output reg [0:0] ex_alu_inst,
  output alu_op_t ex_alu_op,
  output alu_res_t ex_alu_res_sel,
  output reg [0:0] ex_alu_set_u,
  output ls_op_t ex_ls_op,
  output reg [0:0] ex_ls_sext,
  output reg [0:0] ex_load_inst,
  output reg [0:0] ex_store_inst,
  output reg [0:0] ex_jmp_inst,
  output reg [4:0] ex_dest_reg,
  output reg [0:0] ex_dest_reg_valid,

  input stall,
  input clock,
  input reset_n
);

  always_ff @(posedge clock, negedge reset_n) begin
    if (~reset_n) begin
    
      ex_pc<= 'b0;
      ex_inst_word<= 'b0;
      ex_opc<= 'b0;
      ex_A<= 'b0;
      ex_B<= 'b0;
      ex_A_reg<= 'b0;
      ex_A_reg_valid<= 'b0;
      ex_A_fwd_from<= FWD_NONE;
      ex_B_reg<= 'b0;
      ex_B_reg_valid<= 'b0;
      ex_B_need_late<= 'b0;
      ex_B_fwd_from<= FWD_NONE;
      ex_imm<= 'b0;
      ex_imm_valid<= 'b0;
      ex_shamt<= 'b0;
      ex_alu_inst<= 'b0;
      ex_alu_op<= OP_PASS_A;
      ex_alu_res_sel<= RES_ALU;
      ex_alu_set_u<= 'b0;
      ex_ls_op<= OP_LS_WORD;
      ex_ls_sext<= 'b0;
      ex_load_inst<= 'b0;
      ex_store_inst<= 'b0;
      ex_jmp_inst<= 'b0;
      ex_dest_reg<= 'b0;
      ex_dest_reg_valid<= 'b0;
    end
    else if (~stall) begin
    
      ex_pc <= id_pc;
      ex_inst_word <= id_inst_word;
      ex_opc <= id_opc;
      ex_A <= id_A;
      ex_B <= id_B;
      ex_A_reg <= id_A_reg;
      ex_A_reg_valid <= id_A_reg_valid;
      ex_A_fwd_from <= id_A_fwd_from;
      ex_B_reg <= id_B_reg;
      ex_B_reg_valid <= id_B_reg_valid;
      ex_B_need_late <= id_B_need_late;
      ex_B_fwd_from <= id_B_fwd_from;
      ex_imm <= id_imm;
      ex_imm_valid <= id_imm_valid;
      ex_shamt <= id_shamt;
      ex_alu_inst <= id_alu_inst;
      ex_alu_op <= id_alu_op;
      ex_alu_res_sel <= id_alu_res_sel;
      ex_alu_set_u <= id_alu_set_u;
      ex_ls_op <= id_ls_op;
      ex_ls_sext <= id_ls_sext;
      ex_load_inst <= id_load_inst;
      ex_store_inst <= id_store_inst;
      ex_jmp_inst <= id_jmp_inst;
      ex_dest_reg <= id_dest_reg;
      ex_dest_reg_valid <= id_dest_reg_valid;
    end
  end

endmodule
