module dff (
  output reg q,
  input din, clk
);
  always @(posedge clk) begin
    q<=din;
  end
endmodule