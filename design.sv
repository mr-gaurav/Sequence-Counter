// Code your design here
`include "dff.v"
module counter(
  output reg [2:0] count,
  input clk
);
  reg [4:0] Dout, Din;
  genvar i;
  assign count = Dout[2:0];
  
  generate for (i=0; i<5; i=i+1) begin : init
    dff inst (Dout[i], Din[i], clk);
  end
  endgenerate
  
  always @(posedge clk) begin
    case(Din)
      5'b00010: #1 Din<=5'b00001;
      5'b00001: #1 Din<=5'b01010;
      5'b01010: #1 Din<=5'b01011;
      5'b01011: #1 Din<=5'b10010;
      5'b10010: #1 Din<=5'b10100;
      5'b10100: #1 Din<=5'b11010;
      5'b11010: #1 Din<=5'b11101;
      5'b11101: #1 Din<=5'b00010;
      default : #1 Din<=5'b00010;
    endcase
  end
endmodule

// module dff (
//   output reg q,
//   input din, clk
// );
//   always @(posedge clk) begin
//     q<=din;
//   end
// endmodule