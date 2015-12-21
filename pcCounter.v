/****************************************************************************
 * pcCounter.v
 ****************************************************************************/

/**
 * Module: pcCounter
 * 
 * TODO: Add module documentation
 */
module pc_counter(
		//input clk, HazardUnitControl ;
		input clk,
		input reset,
		input [31:0] next_addr,
		output reg [31:0] current
		);
	
	reg [31:0] internalReg;
	
	always @(posedge clk) begin
		if (reset == 1) 
			begin
				current[31:0] = 32'h00003000;
			end
		else begin
			current = next_addr; 		
		end
	end
		
endmodule


