
module adder_half(
	input wire a,
	input wire b,
	
	output wire  s,
	output wire  co

);

assign s  =  a ^ b ;   	//和
assign co =  a & b ;	//进位

//
//always @ (*)  begin
//	s  =  a ^ b ; 
//	co =  a & b ;
//
//end

endmodule

