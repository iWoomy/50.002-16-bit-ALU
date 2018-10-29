/*
   This file was generated automatically by the Mojo IDE version B1.3.6.
   Do not edit this file directly. Instead edit the original Lucid source.
   This is a temporary file and any changes made to it will be destroyed.
*/

module alu_1 (
    input [15:0] a,
    input [15:0] b,
    input [5:0] alufn,
    output reg [15:0] out
  );
  
  
  
  wire [16-1:0] M_aluadder_adder;
  adder_5 aluadder (
    .a(a),
    .b(b),
    .alufn(alufn[0+5-:6]),
    .adder(M_aluadder_adder)
  );
  wire [16-1:0] M_alubool_boolean;
  boolean_6 alubool (
    .a(a),
    .b(b),
    .alufn(alufn[0+5-:6]),
    .boolean(M_alubool_boolean)
  );
  wire [16-1:0] M_alucmp_cmp;
  comparator_7 alucmp (
    .a(a),
    .b(b),
    .alufn(alufn[0+5-:6]),
    .cmp(M_alucmp_cmp)
  );
  wire [16-1:0] M_alushift_shift;
  shifter_8 alushift (
    .a(a),
    .b(b),
    .alufn(alufn[0+5-:6]),
    .shift(M_alushift_shift)
  );
  
  always @* begin
    out = 1'h0;
    
    case (alufn[4+1-:2])
      2'h0: begin
        out = M_aluadder_adder;
      end
      2'h3: begin
        out = M_alucmp_cmp;
      end
      2'h1: begin
        out = M_alubool_boolean;
      end
      2'h2: begin
        out = M_alushift_shift;
      end
      default: begin
        out = 1'h0;
      end
    endcase
  end
endmodule
