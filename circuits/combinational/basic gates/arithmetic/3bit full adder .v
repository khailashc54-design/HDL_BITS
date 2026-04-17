module fa(input a,b, cin,output sum,cout);
    assign sum=a^b^cin;
    assign cout=a&cin|a&b|b&cin;
endmodule
module top_module(input [2:0] a, b ,input cin,output [2:0]cout,output [2:0] sum );
    wire [2:0]c;
    fa f1(.a(a[0]),.b(b[0]),.cin(cin),.cout(c[0]),.sum(sum[0]));
    fa f2(.a(a[1]),.b(b[1]),.cin(c[0]),.cout(c[1]),.sum(sum[1]));
    fa f3(.a(a[2]),.b(b[2]),.cin(c[1]),.cout(c[2]),.sum(sum[2]));
    assign cout=c;
    
endmodule
