module top_module(
    input a,
    input b,
    input c,
    input d,
    output out  ); 
    assign out=(c|~d|~b)&(~c|d|~a)&(a|b|~c|~d)&(c|~a|~b);
endmodule
