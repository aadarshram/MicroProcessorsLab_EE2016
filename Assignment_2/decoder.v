// This code demonstrates the decoder module to display 3-bit Johnson counter results on the Seven-Segment display
module decoder(cntr, Sevem_Seg);
input [2:0] cntr;
output [7:0] Seven_Seg;
reg [6:0] val;
assign Seven_Seg = {1'b1, ~val} // Concatenate bitx for decimal and counter value (value negated because Seven Segment display is active low)
always@(cntr) // Whenever counter value changes -> get value for display
begin
    case(cntr)
    3'd0: val = 7'b0111111;
    3'd4: val = 7'b1111111;
    3'd6: val = 7'b0001111;
    3'd7: val = 7'b0000111;
    3'd3: val = 7'b0000011;
    3'd1: val = 7'b0111111;

