`timescale 1ns/1ns

module OMP;

// integer 	file_bit_stream, temp_bit_stream;
// initial begin
        // file_bit_stream = $fopen("testData.txt","r");
// end


///////////ReadTestImage //////////////////////
reg clk;
reg reset;

wire finish_flag;
 
Block_1024 block_1024 
(	.clk(clk),
	.reset(reset),
	
	.finish_flag(finish_flag)
);
/////////////ReadTestImage //////////////////////

initial begin


clk=1;
reset = 0;

end



always begin
	#10   clk=~clk;
	reset =1;

	
	if(finish_flag == 1) begin
	
		$display("store");
		$display("store_");
	
	end
  

end





endmodule