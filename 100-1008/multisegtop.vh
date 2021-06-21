module multisegtop ( 
	clock,
	reset,
	count,
	gate,
	settled,
	max,
	hold,
	maxo,
	holdo,
	state
	) ;

input  clock;
input  reset;
inout [2:0] count;
input  gate;
input  settled;
input [2:0] max;
input [2:0] hold;
inout  maxo;
inout  holdo;
inout [1:0] state;
