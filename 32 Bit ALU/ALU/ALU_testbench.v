module ALU_testbench();

	reg [31:0] operand0, operand1;
	reg [2:0] funcSel;
	wire [31:0] out;
	
	ALU DUT(operand0, operand1, funcSel, out);
	
	// funcSel 000 Arithmetic Addition
	// funcSel 001 Logic bitwise Xor
	// funcSel 010 Logic bitwise And
	// funcSel 011 Logic bitwise Or
	// funcSel 100 Logic bitwise Nor
	// funcSel 101 Register right logic shift
	// funcSel 110 Register left logic shift
	// funcSel 111 disable
	
	initial begin
		
		operand0 <= 5;
		operand1 <= 7;
		funcSel <= 3'b111;
		
		#10 funcSel = 3'b000;
		#10 funcSel = 3'b001;
		#10 funcSel = 3'b010;
		#10 funcSel = 3'b011;
		#10 funcSel = 3'b100;
		#10 funcSel = 3'b101;
		#10 funcSel = 3'b110;
		
		#10 funcSel = 3'b111;
			
	end
	
	initial begin
		#90 $stop;
	end

endmodule
