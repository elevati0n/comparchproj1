/****************************************************************************
 * mux4_2_1.v
 ****************************************************************************/

/**
 * Module: mux4_2_1
 * 
 * TODO: Add module documentation
 */
module mux4_2_1(
		input [4:0] in0,
		input [4:0] in1,
		input s,
		output reg [4:0] out);
	
	always @(s or in0 or in1)
		if (s==1) begin
			out = in1;
	 end 
	 else begin 
			out = in0;
	 end
		
endmodule


