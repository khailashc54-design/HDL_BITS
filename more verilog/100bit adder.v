// Create a 100-bit binary ripple-carry adder by instantiating 100 full adders. The adder adds two 100-bit numbers and a carry-in to produce a 100-bit sum and carry out. 
// To encourage you to actually instantiate full adders, also output the carry-out from each full adder in the ripple-carry adder. 
// cout[99] is the final carry-out from the last full adder, and is the carry-out you usually see.
module full_adder(input a,b,cin,output cout,sum);
    assign sum=a^b^cin;
    assign cout=(a&b)|(b&cin)|(a&cin);
endmodule

module top_module( input [99:0] a, b,input cin,output [99:0] cout,output [99:0] sum );
    genvar i;
    generate
        for(i=0;i<100;i=i+1)begin:ripple
            if(i==0)
                full_adder fi(.a(a[i]),.b(b[i]),.cin(cin),.cout(cout[i]),.sum(sum[i]));
            else
                full_adder fi(.a(a[i]),.b(b[i]),.cin(cout[i-1]),.cout(cout[i]),.sum(sum[i]));
        end
    endgenerate

endmodule
