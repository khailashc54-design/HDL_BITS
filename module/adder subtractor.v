module top_module(
    input [31:0] a,
    input [31:0] b,
    input sub,
    output [31:0] sum
);
    wire [31:0]c;
    wire d;
    assign c=b^{32{sub}};
    add16 f1(.a(a[15:0]),.b(c[15:0]),.sum(sum[15:0]),.cout(d),.cin(sub));
    add16 f2(.a(a[31:16]),.b(c[31:16]),.sum(sum[31:16]),.cout(),.cin(d));


endmodule
