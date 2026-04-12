//Vectors are used to group related signals using one name to make it more convenient to manipulate. For example, wire [7:0] w; declares an 8-bit vector named w that is equivalent to having 8 separate wires.
module top_module( 
    input wire [15:0] in,
    output wire [7:0] out_hi,
    output wire [7:0] out_lo );
    wire upper,lower;
    assign out_hi=in[15:8];
    assign out_lo=in[7:0];
    

endmodule
