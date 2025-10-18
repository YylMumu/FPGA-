
module adder_1bit(
	input   wire    a,
	input   wire    b,
	input   wire    ci,
	
	output  wire    s,
	output  wire    co
);

	wire		s_ab  ; 
	wire		co_ab ;
	wire		co_abi;
adder_half inst0_adder_half(
	.a (a),
	.b (b),	
	.s (s_ab),
	.co(co_ab)
);

adder_half inst1_adder_half(
	.a (s_ab),
	.b (ci),	
	.s (s),
	.co(co_abi)
);

or_add inst_or_add(
	.a (co_abi),
	.b (co_ab),	
	.co(co)
);

endmodule








