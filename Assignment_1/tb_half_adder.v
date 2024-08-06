// This code describes a testbench for testing and simulating the half adder circuit model
module tb_half_adder;
reg a, b;
wire s, c;
half_adder h1(a, b, s, c);
initial 
begin
  # 10
  a = 1'b0;
  b = 1'b1;
  # 20
  a = 1'b0;
  b = 1'b0;
  # 20
  a = 1'b1;
  b = 1'b0;
  # 20
  a = 1'b1;
  b = 1'b1;
  # 30 $finish;
end
initial $monitor($time, " a = %b, b = %b, s = %b, c = %b ", a, b, s, c);
endmodule