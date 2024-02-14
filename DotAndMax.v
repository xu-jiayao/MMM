//get the information of measurement_num
`include "StaticDefines.v"

//negtive number calculation
module DotAndMax
(	input clk,
	input reset,
	input[25:0] measurements0,
	input[25:0] measurements1,
	input[25:0] measurements2,
	input[25:0] measurements3,
	input[25:0] measurements4,
	input[25:0] measurements5,
	input[25:0] measurements6,
	input[25:0] measurements7,
	input[25:0] measurements8,
	input[25:0] measurements9,
	
	input[25:0] measurements10,
	input[25:0] measurements11,
	input[25:0] measurements12,
	input[25:0] measurements13,
	input[25:0] measurements14,
	input[25:0] measurements15,
	input[25:0] measurements16,
	input[25:0] measurements17,
	input[25:0] measurements18,
	input[25:0] measurements19,
	
	input[25:0] measurements20,
	input[25:0] measurements21,
	input[25:0] measurements22,
	input[25:0] measurements23,
	input[25:0] measurements24,
	input[25:0] measurements25,
	input[25:0] measurements26,
	input[25:0] measurements27,
	input[25:0] measurements28,
	input[25:0] measurements29,
	
	input[25:0] measurements30,
	input[25:0] measurements31,
	input[25:0] measurements32,
	input[25:0] measurements33,
	input[25:0] measurements34,
	input[25:0] measurements35,
	input[25:0] measurements36,
	input[25:0] measurements37,
	input[25:0] measurements38,
	input[25:0] measurements39,
	
	input[25:0] measurements40,
	input[25:0] measurements41,
	input[25:0] measurements42,
	input[25:0] measurements43,
	input[25:0] measurements44,
	input[25:0] measurements45,
	input[25:0] measurements46,
	input[25:0] measurements47,
	
	output reg[7:0] index_max,
	output reg finish_flag
);

	//static SR  -- 16/32/48
	reg[7:0] measurement_num; 
	
	
	//absolute value
	reg[25:0] pos_measure0;
	reg[25:0] pos_measure1;
	reg[25:0] pos_measure2;
	reg[25:0] pos_measure3;
	reg[25:0] pos_measure4;
	reg[25:0] pos_measure5;
	reg[25:0] pos_measure6;
	reg[25:0] pos_measure7;
	reg[25:0] pos_measure8;
	reg[25:0] pos_measure9;
	
	reg[25:0] pos_measure10;
	reg[25:0] pos_measure11;
	reg[25:0] pos_measure12;
	reg[25:0] pos_measure13;
	reg[25:0] pos_measure14;
	reg[25:0] pos_measure15;
	reg[25:0] pos_measure16;
	reg[25:0] pos_measure17;
	reg[25:0] pos_measure18;
	reg[25:0] pos_measure19;
	
	reg[25:0] pos_measure20;
	reg[25:0] pos_measure21;
	reg[25:0] pos_measure22;
	reg[25:0] pos_measure23;
	reg[25:0] pos_measure24;
	reg[25:0] pos_measure25;
	reg[25:0] pos_measure26;
	reg[25:0] pos_measure27;
	reg[25:0] pos_measure28;
	reg[25:0] pos_measure29;
	
	reg[25:0] pos_measure30;
	reg[25:0] pos_measure31;
	reg[25:0] pos_measure32;
	reg[25:0] pos_measure33;
	reg[25:0] pos_measure34;
	reg[25:0] pos_measure35;
	reg[25:0] pos_measure36;
	reg[25:0] pos_measure37;
	reg[25:0] pos_measure38;
	reg[25:0] pos_measure39;
	
	reg[25:0] pos_measure40;
	reg[25:0] pos_measure41;
	reg[25:0] pos_measure42;
	reg[25:0] pos_measure43;
	reg[25:0] pos_measure44;
	reg[25:0] pos_measure45;
	reg[25:0] pos_measure46;
	reg[25:0] pos_measure47;
	
	
	//first time compare
	//index
	reg[7:0] compare_index_temp0;
	reg[7:0] compare_index_temp1;
	reg[7:0] compare_index_temp2;
	reg[7:0] compare_index_temp3;
	reg[7:0] compare_index_temp4;
	reg[7:0] compare_index_temp5;
	reg[7:0] compare_index_temp6;
	reg[7:0] compare_index_temp7;
	reg[7:0] compare_index_temp8;
	reg[7:0] compare_index_temp9;
	
	reg[7:0] compare_index_temp10;
	reg[7:0] compare_index_temp11;
	reg[7:0] compare_index_temp12;
	reg[7:0] compare_index_temp13;
	reg[7:0] compare_index_temp14;
	reg[7:0] compare_index_temp15;
	reg[7:0] compare_index_temp16;
	reg[7:0] compare_index_temp17;
	reg[7:0] compare_index_temp18;
	reg[7:0] compare_index_temp19;
	
	reg[7:0] compare_index_temp20;
	reg[7:0] compare_index_temp21;
	reg[7:0] compare_index_temp22;
	reg[7:0] compare_index_temp23;
	
	//value
	reg[25:0] compare_value_temp0;
	reg[25:0] compare_value_temp1;
	reg[25:0] compare_value_temp2;
	reg[25:0] compare_value_temp3;
	reg[25:0] compare_value_temp4;
	reg[25:0] compare_value_temp5;
	reg[25:0] compare_value_temp6;
	reg[25:0] compare_value_temp7;
	reg[25:0] compare_value_temp8;
	reg[25:0] compare_value_temp9;
	
	reg[25:0] compare_value_temp10;
	reg[25:0] compare_value_temp11;
	reg[25:0] compare_value_temp12;
	reg[25:0] compare_value_temp13;
	reg[25:0] compare_value_temp14;
	reg[25:0] compare_value_temp15;
	reg[25:0] compare_value_temp16;
	reg[25:0] compare_value_temp17;
	reg[25:0] compare_value_temp18;
	reg[25:0] compare_value_temp19;
	
	reg[25:0] compare_value_temp20;
	reg[25:0] compare_value_temp21;
	reg[25:0] compare_value_temp22;
	reg[25:0] compare_value_temp23;
	
	
	//second time compare
	//index
	reg[7:0] _compare_index_temp0;
	reg[7:0] _compare_index_temp1;
	reg[7:0] _compare_index_temp2;
	reg[7:0] _compare_index_temp3;
	reg[7:0] _compare_index_temp4;
	reg[7:0] _compare_index_temp5;
	reg[7:0] _compare_index_temp6;
	reg[7:0] _compare_index_temp7;
	reg[7:0] _compare_index_temp8;
	reg[7:0] _compare_index_temp9;
	
	reg[7:0] _compare_index_temp10;
	reg[7:0] _compare_index_temp11;
	
	//value
	reg[25:0] _compare_value_temp0;
	reg[25:0] _compare_value_temp1;
	reg[25:0] _compare_value_temp2;
	reg[25:0] _compare_value_temp3;
	reg[25:0] _compare_value_temp4;
	reg[25:0] _compare_value_temp5;
	reg[25:0] _compare_value_temp6;
	reg[25:0] _compare_value_temp7;
	reg[25:0] _compare_value_temp8;
	reg[25:0] _compare_value_temp9;
	
	reg[25:0] _compare_value_temp10;
	reg[25:0] _compare_value_temp11;
	
	
	//third time compare 
	reg[7:0] __compare_index_temp0;
	reg[7:0] __compare_index_temp1;
	reg[7:0] __compare_index_temp2;
	reg[7:0] __compare_index_temp3;
	reg[7:0] __compare_index_temp4;
	reg[7:0] __compare_index_temp5;
	
	reg[25:0] __compare_value_temp0;
	reg[25:0] __compare_value_temp1;
	reg[25:0] __compare_value_temp2;
	reg[25:0] __compare_value_temp3;
	reg[25:0] __compare_value_temp4;
	reg[25:0] __compare_value_temp5;
	
	
	//fourth time compare
	//index
	reg[7:0] ___compare_index_temp0;
	reg[7:0] ___compare_index_temp1;
	reg[7:0] ___compare_index_temp2;
	
	//value
	reg[25:0] ___compare_value_temp0;
	reg[25:0] ___compare_value_temp1;
	reg[25:0] ___compare_value_temp2;
	
	
	//fifth time compare
	reg[7:0] ____compare_index_temp0;
	reg[25:0] ____compare_value_temp0;
	
	//time record
	reg[3:0] times;
	


always@(posedge clk ) begin
	if(!reset || finish_flag == 1)begin
		
		//static measurement_num
		measurement_num <= `MEASUREMENT_NUM;
		
		//absolute value
		pos_measure0 <= 0;
		pos_measure1 <= 0;
		pos_measure2 <= 0;
		pos_measure3 <= 0;
		pos_measure4 <= 0;
		pos_measure5 <= 0;
		pos_measure6 <= 0;
		pos_measure7 <= 0;
		pos_measure8 <= 0;
		pos_measure9 <= 0;
		
		pos_measure10 <= 0;
		pos_measure11 <= 0;
		pos_measure12 <= 0;
		pos_measure13 <= 0;
		pos_measure14 <= 0;
		pos_measure15 <= 0;
		pos_measure16 <= 0;
		pos_measure17 <= 0;
		pos_measure18 <= 0;
		pos_measure19 <= 0;
		
		pos_measure20 <= 0;
		pos_measure21 <= 0;
		pos_measure22 <= 0;
		pos_measure23 <= 0;
		pos_measure24 <= 0;
		pos_measure25 <= 0;
		pos_measure26 <= 0;
		pos_measure27 <= 0;
		pos_measure28 <= 0;
		pos_measure29 <= 0;
		
		pos_measure30 <= 0;
		pos_measure31 <= 0;
		pos_measure32 <= 0;
		pos_measure33 <= 0;
		pos_measure34 <= 0;
		pos_measure35 <= 0;
		pos_measure36 <= 0;
		pos_measure37 <= 0;
		pos_measure38 <= 0;
		pos_measure39 <= 0;
		
		pos_measure40 <= 0;
		pos_measure41 <= 0;
		pos_measure42 <= 0;
		pos_measure43 <= 0;
		pos_measure44 <= 0;
		pos_measure45 <= 0;
		pos_measure46 <= 0;
		pos_measure47 <= 0;
	
	
		//first time compare
		//index
		compare_index_temp0 <= 0;
		compare_index_temp1 <= 0;
		compare_index_temp2 <= 0;
		compare_index_temp3 <= 0;
		compare_index_temp4 <= 0;
		compare_index_temp5 <= 0;
		compare_index_temp6 <= 0;
		compare_index_temp7 <= 0;
		compare_index_temp8 <= 0;
		compare_index_temp9 <= 0;
		
		compare_index_temp10 <= 0;
		compare_index_temp11 <= 0;
		compare_index_temp12 <= 0;
		compare_index_temp13 <= 0;
		compare_index_temp14 <= 0;
		compare_index_temp15 <= 0;
		compare_index_temp16 <= 0;
		compare_index_temp17 <= 0;
		compare_index_temp18 <= 0;
		compare_index_temp19 <= 0;
		
		compare_index_temp20 <= 0;
		compare_index_temp21 <= 0;
		compare_index_temp22 <= 0;
		compare_index_temp23 <= 0;
	
		//value
		compare_value_temp0 <= 0;
		compare_value_temp1 <= 0;
		compare_value_temp2 <= 0;
		compare_value_temp3 <= 0;
		compare_value_temp4 <= 0;
		compare_value_temp5 <= 0;
		compare_value_temp6 <= 0;
		compare_value_temp7 <= 0;
		compare_value_temp8 <= 0;
		compare_value_temp9 <= 0;
		
		compare_value_temp10 <= 0;
		compare_value_temp11 <= 0;
		compare_value_temp12 <= 0;
		compare_value_temp13 <= 0;
		compare_value_temp14 <= 0;
		compare_value_temp15 <= 0;
		compare_value_temp16 <= 0;
		compare_value_temp17 <= 0;
		compare_value_temp18 <= 0;
		compare_value_temp19 <= 0;
		
		compare_value_temp20 <= 0;
		compare_value_temp21 <= 0;
		compare_value_temp22 <= 0;
		compare_value_temp23 <= 0;
	
	
		//second time compare
		//index
		_compare_index_temp0 <= 0;
		_compare_index_temp1 <= 0;
		_compare_index_temp2 <= 0;
		_compare_index_temp3 <= 0;
		_compare_index_temp4 <= 0;
		_compare_index_temp5 <= 0;
		_compare_index_temp6 <= 0;
		_compare_index_temp7 <= 0;
		_compare_index_temp8 <= 0;
		_compare_index_temp9 <= 0;
		
		_compare_index_temp10 <= 0;
		_compare_index_temp11 <= 0;
	
		//value
		_compare_value_temp0 <= 0;
		_compare_value_temp1 <= 0;
		_compare_value_temp2 <= 0;
		_compare_value_temp3 <= 0;
		_compare_value_temp4 <= 0;
		_compare_value_temp5 <= 0;
		_compare_value_temp6 <= 0;
		_compare_value_temp7 <= 0;
		_compare_value_temp8 <= 0;
		_compare_value_temp9 <= 0;
		
		_compare_value_temp10 <= 0;
		_compare_value_temp11 <= 0;
	
	
		//third time compare 
		__compare_index_temp0 <= 0;
		__compare_index_temp1 <= 0;
		__compare_index_temp2 <= 0;
		__compare_index_temp3 <= 0;
		__compare_index_temp4 <= 0;
		__compare_index_temp5 <= 0;
	
		__compare_value_temp0 <= 0;
		__compare_value_temp1 <= 0;
		__compare_value_temp2 <= 0;
		__compare_value_temp3 <= 0;
		__compare_value_temp4 <= 0;
		__compare_value_temp5 <= 0;
	
	
		//fourth time compare
		//index
		___compare_index_temp0 <= 0;
		___compare_index_temp1 <= 0;
		___compare_index_temp2 <= 0;
	
		//value
		___compare_value_temp0 <= 0;
		___compare_value_temp1 <= 0;
		___compare_value_temp2 <= 0;
	
	
		//fifth time compare
		____compare_index_temp0 <= 0;
		____compare_value_temp0 <= 0;
	
		//time record
		times <= 0;
	

		//output	
		index_max <= 0;
		finish_flag <= 0;
		
	end
	else begin
		
		//delete sign bit and compare
		times<=times+1;
		//clock 1
		//switch all of the numbers into positive 
		if(measurements1[25] == 1'd1) begin
			pos_measure1 <= 0-measurements1;
		end
		else begin 
			pos_measure1 <= measurements1;
		end
		if(measurements2[25] == 1'd1) begin
			pos_measure2 <= 0-measurements2;
		end
		else begin 
			pos_measure2 <= measurements2;
		end
		if(measurements3[25] == 1'd1) begin
			pos_measure3 <= 0-measurements3;
		end
		else begin 
			pos_measure3 <= measurements3;
		end
		if(measurements4[25] == 1'd1) begin
			pos_measure4 <= 0-measurements4;
		end
		else begin 
			pos_measure4 <= measurements4;
		end
		if(measurements5[25] == 1'd1) begin
			pos_measure5 <= 0-measurements5;
		end
		else begin 
			pos_measure5 <= measurements5;
		end
		if(measurements6[25] == 1'd1) begin
			pos_measure6 <= 0-measurements6;
		end
		else begin 
			pos_measure6 <= measurements6;
		end
		if(measurements7[25] == 1'd1) begin
			pos_measure7 <= 0-measurements7;
		end
		else begin 
			pos_measure7 <= measurements7;
		end
		if(measurements8[25] == 1'd1) begin
			pos_measure8 <= 0-measurements8;
		end
		else begin 
			pos_measure8 <= measurements8;
		end
		if(measurements9[25] == 1'd1) begin
			pos_measure9 <= 0-measurements9;
		end
		else begin 
			pos_measure9 <= measurements9;
		end
		
		
		if(measurements10[25] == 1'd1) begin
			pos_measure10 <= 0-measurements10;
		end
		else begin 
			pos_measure10 <= measurements10;
		end
		if(measurements11[25] == 1'd1) begin
			pos_measure11 <= 0-measurements11;
		end
		else begin 
			pos_measure11 <= measurements11;
		end
		if(measurements12[25] == 1'd1) begin
			pos_measure12 <= 0-measurements12;
		end
		else begin 
			pos_measure12 <= measurements12;
		end
		if(measurements13[25] == 1'd1) begin
			pos_measure13 <= 0-measurements13;
		end
		else begin 
			pos_measure13 <= measurements13;
		end
		if(measurements14[25] == 1'd1) begin
			pos_measure14 <= 0-measurements14;
		end
		else begin 
			pos_measure14 <= measurements14;
		end
		if(measurements15[25] == 1'd1) begin
			pos_measure15 <= 0-measurements15;
		end
		else begin 
			pos_measure15 <= measurements15;
		end
		if(measurements16[25] == 1'd1) begin
			pos_measure16 <= 0-measurements16;
		end
		else begin 
			pos_measure16 <= measurements16;
		end
		if(measurements17[25] == 1'd1) begin
			pos_measure17 <= 0-measurements17;
		end
		else begin 
			pos_measure17 <= measurements17;
		end
		if(measurements18[25] == 1'd1) begin
			pos_measure18 <= 0-measurements18;
		end
		else begin 
			pos_measure18 <= measurements18;
		end
		if(measurements19[25] == 1'd1) begin
			pos_measure19 <= 0-measurements19;
		end
		else begin 
			pos_measure19 <= measurements19;
		end
		
		if(measurements20[25] == 1'd1) begin
			pos_measure20 <= 0-measurements20;
		end
		else begin 
			pos_measure20 <= measurements20;
		end
		if(measurements21[25] == 1'd1) begin
			pos_measure21 <= 0-measurements21;
		end
		else begin 
			pos_measure21 <= measurements21;
		end
		if(measurements22[25] == 1'd1) begin
			pos_measure22 <= 0-measurements22;
		end
		else begin 
			pos_measure22 <= measurements22;
		end
		if(measurements23[25] == 1'd1) begin
			pos_measure23 <= 0-measurements23;
		end
		else begin 
			pos_measure23 <= measurements23;
		end
		if(measurements24[25] == 1'd1) begin
			pos_measure24 <= 0-measurements24;
		end
		else begin 
			pos_measure24 <= measurements24;
		end
		if(measurements25[25] == 1'd1) begin
			pos_measure25 <= 0-measurements25;
		end
		else begin 
			pos_measure25 <= measurements25;
		end
		if(measurements26[25] == 1'd1) begin
			pos_measure26 <= 0-measurements26;
		end
		else begin 
			pos_measure26 <= measurements26;
		end
		if(measurements27[25] == 1'd1) begin
			pos_measure27 <= 0-measurements27;
		end
		else begin 
			pos_measure27 <= measurements27;
		end
		if(measurements28[25] == 1'd1) begin
			pos_measure28 <= 0-measurements28;
		end
		else begin 
			pos_measure28 <= measurements28;
		end
		if(measurements29[25] == 1'd1) begin
			pos_measure29 <= 0-measurements29;
		end
		else begin 
			pos_measure29 <= measurements29;
		end
		
		if(measurements30[25] == 1'd1) begin
			pos_measure30 <= 0-measurements30;
		end
		else begin 
			pos_measure30 <= measurements30;
		end
		if(measurements31[25] == 1'd1) begin
			pos_measure31 <= 0-measurements31;
		end
		else begin 
			pos_measure31 <= measurements31;
		end
		if(measurements32[25] == 1'd1) begin
			pos_measure32 <= 0-measurements32;
		end
		else begin 
			pos_measure32 <= measurements32;
		end
		if(measurements33[25] == 1'd1) begin
			pos_measure33 <= 0-measurements33;
		end
		else begin 
			pos_measure33 <= measurements33;
		end
		if(measurements34[25] == 1'd1) begin
			pos_measure34 <= 0-measurements34;
		end
		else begin 
			pos_measure34 <= measurements34;
		end
		if(measurements35[25] == 1'd1) begin
			pos_measure35 <= 0-measurements35;
		end
		else begin 
			pos_measure35 <= measurements35;
		end
		if(measurements36[25] == 1'd1) begin
			pos_measure36 <= 0-measurements36;
		end
		else begin 
			pos_measure36 <= measurements36;
		end
		if(measurements37[25] == 1'd1) begin
			pos_measure37 <= 0-measurements37;
		end
		else begin 
			pos_measure37 <= measurements37;
		end
		if(measurements38[25] == 1'd1) begin
			pos_measure38 <= 0-measurements38;
		end
		else begin 
			pos_measure38 <= measurements38;
		end
		if(measurements39[25] == 1'd1) begin
			pos_measure39 <= 0-measurements39;
		end
		else begin 
			pos_measure39 <= measurements39;
		end
		
		if(measurements40[25] == 1'd1) begin
			pos_measure40 <= 0-measurements40;
		end
		else begin 
			pos_measure40 <= measurements40;
		end
		if(measurements41[25] == 1'd1) begin
			pos_measure41 <= 0-measurements41;
		end
		else begin 
			pos_measure41 <= measurements41;
		end
		if(measurements42[25] == 1'd1) begin
			pos_measure42 <= 0-measurements42;
		end
		else begin 
			pos_measure42 <= measurements42;
		end
		if(measurements43[25] == 1'd1) begin
			pos_measure43 <= 0-measurements43;
		end
		else begin 
			pos_measure43 <= measurements43;
		end
		if(measurements44[25] == 1'd1) begin
			pos_measure44 <= 0-measurements44;
		end
		else begin 
			pos_measure44 <= measurements44;
		end
		if(measurements45[25] == 1'd1) begin
			pos_measure45 <= 0-measurements45;
		end
		else begin 
			pos_measure45 <= measurements45;
		end
		if(measurements46[25] == 1'd1) begin
			pos_measure46 <= 0-measurements46;
		end
		else begin 
			pos_measure46 <= measurements46;
		end
		if(measurements47[25] == 1'd1) begin
			pos_measure47 <= 0-measurements47;
		end
		else begin 
			pos_measure47 <= measurements47;
		end
		
		pos_measure0 <= 0;
		
		
		//clock 2
		//index
		compare_index_temp0<=  pos_measure1 > pos_measure0? 6'd1 : 6'd0;
		compare_index_temp1<=  pos_measure3 > pos_measure2? 6'd3 : 6'd2;
		compare_index_temp2<=  pos_measure5 > pos_measure4? 6'd5 : 6'd4;
		compare_index_temp3<=  pos_measure7 > pos_measure6? 6'd7 : 6'd6;
		compare_index_temp4<=  pos_measure9 > pos_measure8? 6'd9 : 6'd8;
		compare_index_temp5<=  pos_measure11 > pos_measure10? 6'd11 : 6'd10;
		compare_index_temp6<=  pos_measure13 > pos_measure12? 6'd13 : 6'd12;
		compare_index_temp7<=  pos_measure15 > pos_measure14? 6'd15 : 6'd14;
		compare_index_temp8<=  pos_measure17 > pos_measure16? 6'd17 : 6'd16;
		compare_index_temp9<=  pos_measure19 > pos_measure18? 6'd19 : 6'd18;
		compare_index_temp10<=  pos_measure21 > pos_measure20? 6'd21 : 6'd20;
		compare_index_temp11<=  pos_measure23 > pos_measure22? 6'd23 : 6'd22;
		compare_index_temp12<=  pos_measure25 > pos_measure24? 6'd25 : 6'd24;
		compare_index_temp13<=  pos_measure27 > pos_measure26? 6'd27 : 6'd26;
		compare_index_temp14<=  pos_measure29 > pos_measure28? 6'd29 : 6'd28;
		compare_index_temp15<=  pos_measure31 > pos_measure30? 6'd31 : 6'd30;
		compare_index_temp16<=  pos_measure33 > pos_measure32? 6'd33 : 6'd32;
		compare_index_temp17<=  pos_measure35 > pos_measure34? 6'd35 : 6'd34;
		compare_index_temp18<=  pos_measure37 > pos_measure36? 6'd37 : 6'd36;
		compare_index_temp19<=  pos_measure39 > pos_measure38? 6'd39 : 6'd38;
		compare_index_temp20<=  pos_measure41 > pos_measure40? 6'd41 : 6'd40;
		compare_index_temp21<=  pos_measure43 > pos_measure42? 6'd43 : 6'd42;
		compare_index_temp22<=  pos_measure45 > pos_measure44? 6'd45 : 6'd44;
		compare_index_temp23<=  pos_measure47 > pos_measure46? 6'd47 : 6'd46;
		
		//value
		compare_value_temp0<= pos_measure1>pos_measure0?pos_measure1:pos_measure0; 
		compare_value_temp1<= pos_measure3>pos_measure2?pos_measure3:pos_measure2;
		compare_value_temp2<= pos_measure5>pos_measure4?pos_measure5:pos_measure4;
		compare_value_temp3<= pos_measure7>pos_measure6?pos_measure7:pos_measure6;
		compare_value_temp4<= pos_measure9>pos_measure8?pos_measure9:pos_measure8;
		compare_value_temp5<= pos_measure11>pos_measure10?pos_measure11:pos_measure10;
		compare_value_temp6<= pos_measure13>pos_measure12?pos_measure13:pos_measure12;
		compare_value_temp7<= pos_measure15>pos_measure14?pos_measure15:pos_measure14;
		compare_value_temp8<= pos_measure17>pos_measure16?pos_measure17:pos_measure16;
		compare_value_temp9<= pos_measure19>pos_measure18?pos_measure19:pos_measure18;
		compare_value_temp10<= pos_measure21>pos_measure20?pos_measure21:pos_measure20; 
		compare_value_temp11<= pos_measure23>pos_measure22?pos_measure23:pos_measure22;
		compare_value_temp12<= pos_measure25>pos_measure24?pos_measure25:pos_measure24;
		compare_value_temp13<= pos_measure27>pos_measure26?pos_measure27:pos_measure26;
		compare_value_temp14<= pos_measure29>pos_measure28?pos_measure29:pos_measure28;
		compare_value_temp15<= pos_measure31>pos_measure30?pos_measure31:pos_measure30; 
		compare_value_temp16<= pos_measure33>pos_measure32?pos_measure33:pos_measure32;
		compare_value_temp17<= pos_measure35>pos_measure34?pos_measure35:pos_measure34;
		compare_value_temp18<= pos_measure37>pos_measure36?pos_measure37:pos_measure36;
		compare_value_temp19<= pos_measure39>pos_measure38?pos_measure39:pos_measure38;
		compare_value_temp20<= pos_measure41>pos_measure40?pos_measure41:pos_measure40; 
		compare_value_temp21<= pos_measure43>pos_measure42?pos_measure43:pos_measure42;
		compare_value_temp22<= pos_measure45>pos_measure44?pos_measure45:pos_measure44;
		compare_value_temp23<= pos_measure47>pos_measure46?pos_measure47:pos_measure46;
		
		
		//clock 3
		//index
		_compare_index_temp0<= compare_value_temp1>compare_value_temp0?compare_index_temp1:compare_index_temp0;
		_compare_index_temp1<= compare_value_temp3>compare_value_temp2?compare_index_temp3:compare_index_temp2;
		_compare_index_temp2<= compare_value_temp5>compare_value_temp4?compare_index_temp5:compare_index_temp4;
		_compare_index_temp3<= compare_value_temp7>compare_value_temp6?compare_index_temp7:compare_index_temp6;
		_compare_index_temp4<= compare_value_temp9>compare_value_temp8?compare_index_temp9:compare_index_temp8;
		_compare_index_temp5<= compare_value_temp11>compare_value_temp10?compare_index_temp11:compare_index_temp10;
		_compare_index_temp6<= compare_value_temp13>compare_value_temp12?compare_index_temp13:compare_index_temp12;
		_compare_index_temp7<= compare_value_temp15>compare_value_temp14?compare_index_temp15:compare_index_temp14;
		_compare_index_temp8<= compare_value_temp17>compare_value_temp16?compare_index_temp17:compare_index_temp16;
		_compare_index_temp9<= compare_value_temp19>compare_value_temp18?compare_index_temp19:compare_index_temp18;
		_compare_index_temp10<= compare_value_temp21>compare_value_temp20?compare_index_temp21:compare_index_temp20;
		_compare_index_temp11<= compare_value_temp23>compare_value_temp22?compare_index_temp23:compare_index_temp22;
		
		//value
		_compare_value_temp0<= compare_value_temp1>compare_value_temp0 ? compare_value_temp1:compare_value_temp0;
		_compare_value_temp1<= compare_value_temp3>compare_value_temp2 ? compare_value_temp3:compare_value_temp2;
		_compare_value_temp2<= compare_value_temp5>compare_value_temp4 ? compare_value_temp5:compare_value_temp4;
		_compare_value_temp3<= compare_value_temp7>compare_value_temp6 ? compare_value_temp7:compare_value_temp6;
		_compare_value_temp4<= compare_value_temp9>compare_value_temp8 ? compare_value_temp9:compare_value_temp8;
		_compare_value_temp5<= compare_value_temp11>compare_value_temp10 ? compare_value_temp11:compare_value_temp10;
		_compare_value_temp6<= compare_value_temp13>compare_value_temp12 ? compare_value_temp13:compare_value_temp12;
		_compare_value_temp7<= compare_value_temp15>compare_value_temp14 ? compare_value_temp15:compare_value_temp14;
		_compare_value_temp8<= compare_value_temp17>compare_value_temp16 ? compare_value_temp17:compare_value_temp16;
		_compare_value_temp9<= compare_value_temp19>compare_value_temp18 ? compare_value_temp19:compare_value_temp18;
		_compare_value_temp10<= compare_value_temp21>compare_value_temp20 ? compare_value_temp21:compare_value_temp20;
		_compare_value_temp11<= compare_value_temp23>compare_value_temp22 ? compare_value_temp23:compare_value_temp22;
		
		
		//clock 4
		//index
		__compare_index_temp0<= _compare_value_temp1>_compare_value_temp0 ? _compare_index_temp1:_compare_index_temp0;
		__compare_index_temp1<= _compare_value_temp3>_compare_value_temp2 ? _compare_index_temp3:_compare_index_temp2;
		__compare_index_temp2<= _compare_value_temp5>_compare_value_temp4 ? _compare_index_temp5:_compare_index_temp4;
		__compare_index_temp3<= _compare_value_temp7>_compare_value_temp6 ? _compare_index_temp7:_compare_index_temp6;
		__compare_index_temp4<= _compare_value_temp9>_compare_value_temp8 ? _compare_index_temp9:_compare_index_temp8;
		__compare_index_temp5<= _compare_value_temp11>_compare_value_temp10 ? _compare_index_temp11:_compare_index_temp10;

		//value
		__compare_value_temp0<= _compare_value_temp1>_compare_value_temp0? _compare_value_temp1:_compare_value_temp0;
		__compare_value_temp1<= _compare_value_temp3>_compare_value_temp2? _compare_value_temp3:_compare_value_temp2;
		__compare_value_temp2<= _compare_value_temp5>_compare_value_temp4? _compare_value_temp5:_compare_value_temp4;
		__compare_value_temp3<= _compare_value_temp7>_compare_value_temp6? _compare_value_temp7:_compare_value_temp6;
		__compare_value_temp4<= _compare_value_temp9>_compare_value_temp8? _compare_value_temp9:_compare_value_temp8;
		__compare_value_temp5<= _compare_value_temp11>_compare_value_temp10? _compare_value_temp11:_compare_value_temp10;
		
		
		//clock 5
		//index 
		___compare_index_temp0<= __compare_value_temp1>__compare_value_temp0? __compare_index_temp1:__compare_index_temp0;
		___compare_index_temp1<= __compare_value_temp3>__compare_value_temp2? __compare_index_temp3:__compare_index_temp2;
		___compare_index_temp2<= __compare_value_temp5>__compare_value_temp4? __compare_index_temp5:__compare_index_temp4;
		
		//value
		___compare_value_temp0<= __compare_value_temp1>__compare_value_temp0? __compare_value_temp1:__compare_value_temp0;
		___compare_value_temp1<= __compare_value_temp3>__compare_value_temp2? __compare_value_temp3:__compare_value_temp2;
		___compare_value_temp2<= __compare_value_temp5>__compare_value_temp4? __compare_value_temp5:__compare_value_temp4;
		
		
		//clock 6
		//index
		____compare_index_temp0 <= ___compare_value_temp1>___compare_value_temp0? ___compare_index_temp1:___compare_index_temp0;
		
		//value
		____compare_value_temp0 <= ___compare_value_temp1>___compare_value_temp0? ___compare_value_temp1:___compare_value_temp0;
		
		//times change --depends on the measurement_num
		if(times==4 && measurement_num == 16) begin
			//final result
			index_max<= __compare_value_temp1>__compare_value_temp0 ? __compare_index_temp1:__compare_index_temp0;
			
			//finish 
			finish_flag<=1;
		end
		else if(times==5 && measurement_num == 32) begin
			//final result
			index_max<= ___compare_value_temp1>___compare_value_temp0 ? ___compare_index_temp1:___compare_index_temp0;
			
			//finish 
			finish_flag<=1;
		end
		else if(times==6 && measurement_num == 48) begin
			//final result
			index_max<= ___compare_value_temp2>____compare_value_temp0 ? ___compare_index_temp2:____compare_index_temp0;
			
			//finish 
			finish_flag<=1;
		end
		else begin
		end
		
	end
end
	
	
endmodule