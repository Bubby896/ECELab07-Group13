module ones_compliment(
    input [3:0]A,
    input [3:0]B,
    output [3:0]Y
);

    wire [3:0]Carry1;
    wire [3:0]Carry2;
    wire [3:0]StageBus;
    genvar i;
    
generate 

full_adder lsb(
        .A(A[0]),
        .B(B[0]),
        .Y(StageBus[0]),
        .Cin(1'b0),
        .Cout(Carry1[0])
);

for (i = 1; i < 4; i=i+1) begin
    full_adder add(
        .A(A[i]),
        .B(B[i]),
        .Y(StageBus[i]),
        .Cin(Carry1[i-1]),
        .Cout(Carry1[i])
    );
    
  end  
  
  full_adder lsb2(
        .A(A[0]),
        .B(1'b0),
        .Y(Y[0]),
        .Cin(Carry1[3]),
        .Cout(Carry2[0])
);

for (i = 1; i < 4; i=i+1) begin
    full_adder add2(
        .A(A[i]),
        .B(1'b0),
        .Y(Y[i]),
        .Cin(Carry2[i-1]),
        .Cout(Carry2[i])
    );
    
end
endgenerate

endmodule