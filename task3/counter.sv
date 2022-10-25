module counter #(
    parameter WIDTH = 8
)(
    input logic clk,
    input logic rst,
    input logic en,
    input logic [7:0] vbdVal,
    output logic [WIDTH-1:0] count
);

always_ff @ (posedge clk)
  if (rst)  count <= vbdVal;
  else      count <= count + {{WIDTH-1{1'b0}}, en};
    
endmodule
