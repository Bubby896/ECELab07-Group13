module full_adder(

input A,
input B,
input Cin, 
output Y,
output Cout
);

assign Y = A^B^Cin;
assign Cout = (A&Cin)|(A&B)|(B&Cin);

endmodule
// Implement module called full_adder