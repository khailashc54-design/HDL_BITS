module top_module(
    input [31:0] a,
    input [31:0] b,
    output [31:0] sum
);
    wire c;
    wire[15:0]sum0,sum1;
    add16 f1(.a(a[15:0]),.b(b[15:0]),.sum(sum[15:0]),.cout(c),.cin(1'b0));
    add16 f2(.a(a[31:16]),.b(b[31:16]),.sum(sum0),.cin(1'b0),.cout());
    add16 f3(.a(a[31:16]),.b(b[31:16]),.sum(sum1),.cin(1'b1),.cout());

   assign sum[31:16] = c ? sum1 : sum0;
    

endmodule
