`include "StaticDefines.v"

module Iteration
(	input clk,
	input reset,
	input[15:0] measurements0,
	input[15:0] measurements1,
	input[15:0] measurements2,
	input[15:0] measurements3,
	input[15:0] measurements4,
	input[15:0] measurements5,
	input[15:0] measurements6,
	input[15:0] measurements7,
	input[15:0] measurements8,
	input[15:0] measurements9,
	
	input[15:0] measurements10,
	input[15:0] measurements11,
	input[15:0] measurements12,
	input[15:0] measurements13,
	input[15:0] measurements14,
	input[15:0] measurements15,
	input[15:0] measurements16,
	input[15:0] measurements17,
	input[15:0] measurements18,
	input[15:0] measurements19,
		  
	input[15:0] measurements20,
	input[15:0] measurements21,
	input[15:0] measurements22,
	input[15:0] measurements23,
	input[15:0] measurements24,
	input[15:0] measurements25,
	input[15:0] measurements26,
	input[15:0] measurements27,
	input[15:0] measurements28,
	input[15:0] measurements29,
		  
	input[15:0] measurements30,
	input[15:0] measurements31,
	input[15:0] measurements32,
	input[15:0] measurements33,
	input[15:0] measurements34,
	input[15:0] measurements35,
	input[15:0] measurements36,
	input[15:0] measurements37,
	input[15:0] measurements38,
	input[15:0] measurements39,
		  
	input[15:0] measurements40,
	input[15:0] measurements41,
	input[15:0] measurements42,
	input[15:0] measurements43,
	input[15:0] measurements44,
	input[15:0] measurements45,
	input[15:0] measurements46,
	input[15:0] measurements47,
	
	//index values
	input [7:0] Index1,
	input [7:0] Index2,
	input [7:0] Index3,
	input [7:0] Index4,
	input [7:0] Index5,
	input [7:0] Index6,
	input [7:0] Index7,
	input [7:0] Index8,
	input [7:0] Index9,
		   
	input [7:0] Index10,
	input [7:0] Index11,
	input [7:0] Index12,
	input [7:0] Index13,
	input [7:0] Index14,
	input [7:0] Index15,
	input [7:0] Index16,
	input [7:0] Index17,
	input [7:0] Index18,
	input [7:0] Index19,
	
	input [7:0] Index20,
	
	//max values
	input [25:0] Value_Max1,
	input [25:0] Value_Max2,
	input [25:0] Value_Max3,
	input [25:0] Value_Max4,
	input [25:0] Value_Max5,
	input [25:0] Value_Max6,
	input [25:0] Value_Max7,
	input [25:0] Value_Max8,
	input [25:0] Value_Max9,
		   
	input [25:0] Value_Max10,
	input [25:0] Value_Max11,
	input [25:0] Value_Max12,
	input [25:0] Value_Max13,
	input [25:0] Value_Max14,
	input [25:0] Value_Max15,
	input [25:0] Value_Max16,
	input [25:0] Value_Max17,
	input [25:0] Value_Max18,
	input [25:0] Value_Max19,
	
	input [25:0] Value_Max20,
	
	//judge if the last iteration or not
	input [6:0] iterIndex,

	
	output reg[25:0] r_n0,
	output reg[25:0] r_n1,
	output reg[25:0] r_n2,
	output reg[25:0] r_n3,
	output reg[25:0] r_n4,
	output reg[25:0] r_n5,
	output reg[25:0] r_n6,
	output reg[25:0] r_n7,
	output reg[25:0] r_n8,
	output reg[25:0] r_n9,
	
	output reg[25:0] r_n10,
	output reg[25:0] r_n11,
	output reg[25:0] r_n12,
	output reg[25:0] r_n13,
	output reg[25:0] r_n14,
	output reg[25:0] r_n15,
	output reg[25:0] r_n16,
	output reg[25:0] r_n17,
	output reg[25:0] r_n18,
	output reg[25:0] r_n19,
	
	output reg[25:0] r_n20,
	output reg[25:0] r_n21,
	output reg[25:0] r_n22,
	output reg[25:0] r_n23,
	output reg[25:0] r_n24,
	output reg[25:0] r_n25,
	output reg[25:0] r_n26,
	output reg[25:0] r_n27,
	output reg[25:0] r_n28,
	output reg[25:0] r_n29,
	
	output reg[25:0] r_n30,
	output reg[25:0] r_n31,
	output reg[25:0] r_n32,
	output reg[25:0] r_n33,
	output reg[25:0] r_n34,
	output reg[25:0] r_n35,
	output reg[25:0] r_n36,
	output reg[25:0] r_n37,
	output reg[25:0] r_n38,
	output reg[25:0] r_n39,
	
	output reg[25:0] r_n40,
	output reg[25:0] r_n41,
	output reg[25:0] r_n42,
	output reg[25:0] r_n43,
	output reg[25:0] r_n44,
	output reg[25:0] r_n45,
	output reg[25:0] r_n46,
	output reg[25:0] r_n47,
	
	
	output reg ifResidualZero,
	output reg finish_flag
);
	//static SR  -- 16/32/48
	reg[7:0] measurement_num; 


	reg[40:0] shift_measurements0;
	reg[40:0] shift_measurements1;
	reg[40:0] shift_measurements2;
	reg[40:0] shift_measurements3;
	reg[40:0] shift_measurements4;
	reg[40:0] shift_measurements5;
	reg[40:0] shift_measurements6;
	reg[40:0] shift_measurements7;
	reg[40:0] shift_measurements8;
	reg[40:0] shift_measurements9;
	
	reg[40:0] shift_measurements10;
	reg[40:0] shift_measurements11;
	reg[40:0] shift_measurements12;
	reg[40:0] shift_measurements13;
	reg[40:0] shift_measurements14;
	reg[40:0] shift_measurements15;
	reg[40:0] shift_measurements16;
	reg[40:0] shift_measurements17;
	reg[40:0] shift_measurements18;
	reg[40:0] shift_measurements19;
	
	reg[40:0] shift_measurements20;
	reg[40:0] shift_measurements21;
	reg[40:0] shift_measurements22;
	reg[40:0] shift_measurements23;
	reg[40:0] shift_measurements24;
	reg[40:0] shift_measurements25;
	reg[40:0] shift_measurements26;
	reg[40:0] shift_measurements27;
	reg[40:0] shift_measurements28;
	reg[40:0] shift_measurements29;
	
	reg[40:0] shift_measurements30;
	reg[40:0] shift_measurements31;
	reg[40:0] shift_measurements32;
	reg[40:0] shift_measurements33;
	reg[40:0] shift_measurements34;
	reg[40:0] shift_measurements35;
	reg[40:0] shift_measurements36;
	reg[40:0] shift_measurements37;
	reg[40:0] shift_measurements38;
	reg[40:0] shift_measurements39;
	
	reg[40:0] shift_measurements40;
	reg[40:0] shift_measurements41;
	reg[40:0] shift_measurements42;
	reg[40:0] shift_measurements43;
	reg[40:0] shift_measurements44;
	reg[40:0] shift_measurements45;
	reg[40:0] shift_measurements46;
	reg[40:0] shift_measurements47;
	
	
	
	//add -- number == iteration number
	reg [40:0] temp_dot_product_add;
	reg [40:0] temp_dot_product0;
	reg [40:0] temp_dot_product1;
	reg [40:0] temp_dot_product2;
	reg [40:0] temp_dot_product3;
	reg [40:0] temp_dot_product4;
	reg [40:0] temp_dot_product5;
	reg [40:0] temp_dot_product6;
	reg [40:0] temp_dot_product7;
	reg [40:0] temp_dot_product8;
	reg [40:0] temp_dot_product9;
		 
	reg [40:0] temp_dot_product10;
	reg [40:0] temp_dot_product11;
	reg [40:0] temp_dot_product12;
	reg [40:0] temp_dot_product13;
	reg [40:0] temp_dot_product14;
	reg [40:0] temp_dot_product15;
	reg [40:0] temp_dot_product16;
	reg [40:0] temp_dot_product17;
	reg [40:0] temp_dot_product18;
	reg [40:0] temp_dot_product19;
		 
	reg [40:0] temp_dot_product20;
	
	
	
	//add -- number == iteration number
	reg [40:0] temp_cal0;
	reg [40:0] temp_cal1;
	reg [40:0] temp_cal2;
	reg [40:0] temp_cal3;
	reg [40:0] temp_cal4;
	reg [40:0] temp_cal5;
	reg [40:0] temp_cal6;
	reg [40:0] temp_cal7;
	reg [40:0] temp_cal8;
	reg [40:0] temp_cal9;
	
	reg [40:0] temp_cal10;
	reg [40:0] temp_cal11;
	reg [40:0] temp_cal12;
	reg [40:0] temp_cal13;
	reg [40:0] temp_cal14;
	reg [40:0] temp_cal15;
	reg [40:0] temp_cal16;
	reg [40:0] temp_cal17;
	reg [40:0] temp_cal18;
	reg [40:0] temp_cal19;
	
	reg [40:0] temp_cal20;
	
	
	
	//change in every iteration
	reg [20:0] static_inverse0;
	
	
	
    reg[40:0] before_shift_r_n0;
    reg[40:0] before_shift_r_n1;
    reg[40:0] before_shift_r_n2;
    reg[40:0] before_shift_r_n3;
    reg[40:0] before_shift_r_n4;
    reg[40:0] before_shift_r_n5;
    reg[40:0] before_shift_r_n6;
    reg[40:0] before_shift_r_n7;
    reg[40:0] before_shift_r_n8;
    reg[40:0] before_shift_r_n9;
	
	reg[40:0] before_shift_r_n10;
    reg[40:0] before_shift_r_n11;
    reg[40:0] before_shift_r_n12;
    reg[40:0] before_shift_r_n13;
    reg[40:0] before_shift_r_n14;
    reg[40:0] before_shift_r_n15;
    reg[40:0] before_shift_r_n16;
    reg[40:0] before_shift_r_n17;
    reg[40:0] before_shift_r_n18;
    reg[40:0] before_shift_r_n19;
	
	reg[40:0] before_shift_r_n20;
    reg[40:0] before_shift_r_n21;
    reg[40:0] before_shift_r_n22;
    reg[40:0] before_shift_r_n23;
    reg[40:0] before_shift_r_n24;
    reg[40:0] before_shift_r_n25;
    reg[40:0] before_shift_r_n26;
    reg[40:0] before_shift_r_n27;
    reg[40:0] before_shift_r_n28;
    reg[40:0] before_shift_r_n29;
	
	reg[40:0] before_shift_r_n30;
    reg[40:0] before_shift_r_n31;
    reg[40:0] before_shift_r_n32;
    reg[40:0] before_shift_r_n33;
    reg[40:0] before_shift_r_n34;
    reg[40:0] before_shift_r_n35;
    reg[40:0] before_shift_r_n36;
    reg[40:0] before_shift_r_n37;
    reg[40:0] before_shift_r_n38;
    reg[40:0] before_shift_r_n39;
	
	reg[40:0] before_shift_r_n40;
    reg[40:0] before_shift_r_n41;
    reg[40:0] before_shift_r_n42;
    reg[40:0] before_shift_r_n43;
    reg[40:0] before_shift_r_n44;
    reg[40:0] before_shift_r_n45;
    reg[40:0] before_shift_r_n46;
    reg[40:0] before_shift_r_n47;
	
	
	//add
	reg[40:0] Index_pos_r_n0;
	reg[40:0] Index_pos_r_n1;
    reg[40:0] Index_pos_r_n2;
    reg[40:0] Index_pos_r_n3;
    reg[40:0] Index_pos_r_n4;
    reg[40:0] Index_pos_r_n5;
    reg[40:0] Index_pos_r_n6;
    reg[40:0] Index_pos_r_n7;
    reg[40:0] Index_pos_r_n8;
    reg[40:0] Index_pos_r_n9;
					
	reg[40:0] Index_pos_r_n10;
	reg[40:0] Index_pos_r_n11;
    reg[40:0] Index_pos_r_n12;
    reg[40:0] Index_pos_r_n13;
    reg[40:0] Index_pos_r_n14;
    reg[40:0] Index_pos_r_n15;
    reg[40:0] Index_pos_r_n16;
    reg[40:0] Index_pos_r_n17;
    reg[40:0] Index_pos_r_n18;
    reg[40:0] Index_pos_r_n19;
					
	reg[40:0] Index_pos_r_n20;
	reg[40:0] Index_pos_r_n21;
    reg[40:0] Index_pos_r_n22;
    reg[40:0] Index_pos_r_n23;
    reg[40:0] Index_pos_r_n24;
    reg[40:0] Index_pos_r_n25;
    reg[40:0] Index_pos_r_n26;
    reg[40:0] Index_pos_r_n27;
    reg[40:0] Index_pos_r_n28;
    reg[40:0] Index_pos_r_n29;
					
	reg[40:0] Index_pos_r_n30;
	reg[40:0] Index_pos_r_n31;
    reg[40:0] Index_pos_r_n32;
    reg[40:0] Index_pos_r_n33;
    reg[40:0] Index_pos_r_n34;
    reg[40:0] Index_pos_r_n35;
    reg[40:0] Index_pos_r_n36;
    reg[40:0] Index_pos_r_n37;
    reg[40:0] Index_pos_r_n38;
    reg[40:0] Index_pos_r_n39;
				
	reg[40:0] Index_pos_r_n40;
	reg[40:0] Index_pos_r_n41;
    reg[40:0] Index_pos_r_n42;
    reg[40:0] Index_pos_r_n43;
    reg[40:0] Index_pos_r_n44;
    reg[40:0] Index_pos_r_n45;
    reg[40:0] Index_pos_r_n46;
    reg[40:0] Index_pos_r_n47;
	
	
	reg[3:0] times;
	

	always@(posedge clk ) begin
		if(!reset || finish_flag == 1)begin
			
			//static measurement_num
			measurement_num <= `MEASUREMENT_NUM;
			
			//temp parameters
			shift_measurements0 <= 0;
			shift_measurements1 <= 0;
			shift_measurements2 <= 0;
			shift_measurements3 <= 0;
			shift_measurements4 <= 0;
			shift_measurements5 <= 0;
			shift_measurements6 <= 0;
			shift_measurements7 <= 0;
			shift_measurements8 <= 0;
			shift_measurements9 <= 0;
			
			shift_measurements10 <= 0;
			shift_measurements11 <= 0;
			shift_measurements12 <= 0;
			shift_measurements13 <= 0;
			shift_measurements14 <= 0;
			shift_measurements15 <= 0;
			shift_measurements16 <= 0;
			shift_measurements17 <= 0;
			shift_measurements18 <= 0;
			shift_measurements19 <= 0;
			
			shift_measurements20 <= 0;
			shift_measurements21 <= 0;
			shift_measurements22 <= 0;
			shift_measurements23 <= 0;
			shift_measurements24 <= 0;
			shift_measurements25 <= 0;
			shift_measurements26 <= 0;
			shift_measurements27 <= 0;
			shift_measurements28 <= 0;
			shift_measurements29 <= 0;
			
			shift_measurements30 <= 0;
			shift_measurements31 <= 0;
			shift_measurements32 <= 0;
			shift_measurements33 <= 0;
			shift_measurements34 <= 0;
			shift_measurements35 <= 0;
			shift_measurements36 <= 0;
			shift_measurements37 <= 0;
			shift_measurements38 <= 0;
			shift_measurements39 <= 0;
			
			shift_measurements40 <= 0;
			shift_measurements41 <= 0;
			shift_measurements42 <= 0;
			shift_measurements43 <= 0;
			shift_measurements44 <= 0;
			shift_measurements45 <= 0;
			shift_measurements46 <= 0;
			shift_measurements47 <= 0;
			
			
			
			//add -- number == iteration number
			temp_dot_product_add <= 0;
			temp_dot_product0 <= 0;
			temp_dot_product1 <= 0;
			temp_dot_product2 <= 0;
			temp_dot_product3 <= 0;
			temp_dot_product4 <= 0;
			temp_dot_product5 <= 0;
			temp_dot_product6 <= 0;
			temp_dot_product7 <= 0;
			temp_dot_product8 <= 0;
			temp_dot_product9 <= 0;
			
			temp_dot_product10 <= 0;
			temp_dot_product11 <= 0;
			temp_dot_product12 <= 0;
			temp_dot_product13 <= 0;
			temp_dot_product14 <= 0;
			temp_dot_product15 <= 0;
			temp_dot_product16 <= 0;
			temp_dot_product17 <= 0;
			temp_dot_product18 <= 0;
			temp_dot_product19 <= 0;
			
			temp_dot_product20 <= 0;
			
			
			
			//add -- number == iteration number
			temp_cal0 <= 0;
			temp_cal1 <= 0;
			temp_cal2 <= 0;
			temp_cal3 <= 0;
			temp_cal4 <= 0;
			temp_cal5 <= 0;
			temp_cal6 <= 0;
			temp_cal7 <= 0;
			temp_cal8 <= 0;
			temp_cal9 <= 0;
			
			temp_cal10 <= 0;
			temp_cal11 <= 0;
			temp_cal12 <= 0;
			temp_cal13 <= 0;
			temp_cal14 <= 0;
			temp_cal15 <= 0;
			temp_cal16 <= 0;
			temp_cal17 <= 0;
			temp_cal18 <= 0;
			temp_cal19 <= 0;
			
			temp_cal20 <= 0;
			
			
			//static inverse value
			static_inverse0 <= 0;
			
			
			//
			before_shift_r_n0 <= 0;
			before_shift_r_n1 <= 0;
			before_shift_r_n2 <= 0;
			before_shift_r_n3 <= 0;
			before_shift_r_n4 <= 0;
			before_shift_r_n5 <= 0;
			before_shift_r_n6 <= 0;
			before_shift_r_n7 <= 0;
			before_shift_r_n8 <= 0;
			before_shift_r_n9 <= 0;
			
			before_shift_r_n10 <= 0;
			before_shift_r_n11 <= 0;
			before_shift_r_n12 <= 0;
			before_shift_r_n13 <= 0;
			before_shift_r_n14 <= 0;
			before_shift_r_n15 <= 0;
			before_shift_r_n16 <= 0;
			before_shift_r_n17 <= 0;
			before_shift_r_n18 <= 0;
			before_shift_r_n19 <= 0;
			
			before_shift_r_n20 <= 0;
			before_shift_r_n21 <= 0;
			before_shift_r_n22 <= 0;
			before_shift_r_n23 <= 0;
			before_shift_r_n24 <= 0;
			before_shift_r_n25 <= 0;
			before_shift_r_n26 <= 0;
			before_shift_r_n27 <= 0;
			before_shift_r_n28 <= 0;
			before_shift_r_n29 <= 0;
			
			before_shift_r_n30 <= 0;
			before_shift_r_n31 <= 0;
			before_shift_r_n32 <= 0;
			before_shift_r_n33 <= 0;
			before_shift_r_n34 <= 0;
			before_shift_r_n35 <= 0;
			before_shift_r_n36 <= 0;
			before_shift_r_n37 <= 0;
			before_shift_r_n38 <= 0;
			before_shift_r_n39 <= 0;
			
			before_shift_r_n40 <= 0;
			before_shift_r_n41 <= 0;
			before_shift_r_n42 <= 0;
			before_shift_r_n43 <= 0;
			before_shift_r_n44 <= 0;
			before_shift_r_n45 <= 0;
			before_shift_r_n46 <= 0;
			before_shift_r_n47 <= 0;
			
			Index_pos_r_n0 <= 0;
			Index_pos_r_n1 <= 0;
			Index_pos_r_n2 <= 0;
			Index_pos_r_n3 <= 0;
			Index_pos_r_n4 <= 0;
			Index_pos_r_n5 <= 0;
			Index_pos_r_n6 <= 0;
			Index_pos_r_n7 <= 0;
			Index_pos_r_n8 <= 0;
			Index_pos_r_n9 <= 0;
				
			Index_pos_r_n10 <= 0;
			Index_pos_r_n11 <= 0;
			Index_pos_r_n12 <= 0;
			Index_pos_r_n13 <= 0;
			Index_pos_r_n14 <= 0;
			Index_pos_r_n15 <= 0;
			Index_pos_r_n16 <= 0;
			Index_pos_r_n17 <= 0;
			Index_pos_r_n18 <= 0;
			Index_pos_r_n19 <= 0;
				
			Index_pos_r_n20 <= 0;
			Index_pos_r_n21 <= 0;
			Index_pos_r_n22 <= 0;
			Index_pos_r_n23 <= 0;
			Index_pos_r_n24 <= 0;
			Index_pos_r_n25 <= 0;
			Index_pos_r_n26 <= 0;
			Index_pos_r_n27 <= 0;
			Index_pos_r_n28 <= 0;
			Index_pos_r_n29 <= 0;
				
			Index_pos_r_n30 <= 0;
			Index_pos_r_n31 <= 0;
			Index_pos_r_n32 <= 0;
			Index_pos_r_n33 <= 0;
			Index_pos_r_n34 <= 0;
			Index_pos_r_n35 <= 0;
			Index_pos_r_n36 <= 0;
			Index_pos_r_n37 <= 0;
			Index_pos_r_n38 <= 0;
			Index_pos_r_n39 <= 0;
				
			Index_pos_r_n40 <= 0;
			Index_pos_r_n41 <= 0;
			Index_pos_r_n42 <= 0;
			Index_pos_r_n43 <= 0;
			Index_pos_r_n44 <= 0;
			Index_pos_r_n45 <= 0;
			Index_pos_r_n46 <= 0;
			Index_pos_r_n47 <= 0;
		
			
			//output
			r_n0 <= 0;
			r_n1 <= 0;
			r_n2 <= 0;
			r_n3 <= 0;
			r_n4 <= 0;
			r_n5 <= 0;
			r_n6 <= 0;
			r_n7 <= 0;
			r_n8 <= 0;
			r_n9 <= 0;
			
			r_n10 <= 0;
			r_n11 <= 0;
			r_n12 <= 0;
			r_n13 <= 0;
			r_n14 <= 0;
			r_n15 <= 0;
			r_n16 <= 0;
			r_n17 <= 0;
			r_n18 <= 0;
			r_n19 <= 0;
			
			r_n20 <= 0;
			r_n21 <= 0;
			r_n22 <= 0;
			r_n23 <= 0;
			r_n24 <= 0;
			r_n25 <= 0;
			r_n26 <= 0;
			r_n27 <= 0;
			r_n28 <= 0;
			r_n29 <= 0;
			
			r_n30 <= 0;
			r_n31 <= 0;
			r_n32 <= 0;
			r_n33 <= 0;
			r_n34 <= 0;
			r_n35 <= 0;
			r_n36 <= 0;
			r_n37 <= 0;
			r_n38 <= 0;
			r_n39 <= 0;
			
			r_n40 <= 0;
			r_n41 <= 0;
			r_n42 <= 0;
			r_n43 <= 0;
			r_n44 <= 0;
			r_n45 <= 0;
			r_n46 <= 0;
			r_n47 <= 0;
			
			ifResidualZero <= 0;
			finish_flag <= 0;
			
			times <= 0;
		end
		else begin
			
			//clock record
			times <= times+1;
			
			//clock 1
			//y_deresidual*2^rate  fix_point
			shift_measurements0 <= {measurements0,11'b0};
			shift_measurements1 <= {measurements1,11'b0};
			shift_measurements2 <= {measurements2,11'b0};
			shift_measurements3 <= {measurements3,11'b0};
			shift_measurements4 <= {measurements4,11'b0};
			shift_measurements5 <= {measurements5,11'b0};
			shift_measurements6 <= {measurements6,11'b0};
			shift_measurements7 <= {measurements7,11'b0};
			shift_measurements8 <= {measurements8,11'b0};
			shift_measurements9 <= {measurements9,11'b0};
			
			shift_measurements10 <= {measurements10,11'b0};
			shift_measurements11 <= {measurements11,11'b0};
			shift_measurements12 <= {measurements12,11'b0};
			shift_measurements13 <= {measurements13,11'b0};
			shift_measurements14 <= {measurements14,11'b0};
			shift_measurements15 <= {measurements15,11'b0};
			shift_measurements16 <= {measurements16,11'b0};
			shift_measurements17 <= {measurements17,11'b0};
			shift_measurements18 <= {measurements18,11'b0};
			shift_measurements19 <= {measurements19,11'b0};
			
			shift_measurements20 <= {measurements20,11'b0};
			shift_measurements21 <= {measurements21,11'b0};
			shift_measurements22 <= {measurements22,11'b0};
			shift_measurements23 <= {measurements23,11'b0};
			shift_measurements24 <= {measurements24,11'b0};
			shift_measurements25 <= {measurements25,11'b0};
			shift_measurements26 <= {measurements26,11'b0};
			shift_measurements27 <= {measurements27,11'b0};
			shift_measurements28 <= {measurements28,11'b0};
			shift_measurements29 <= {measurements29,11'b0};
			
			shift_measurements30 <= {measurements30,11'b0};
			shift_measurements31 <= {measurements31,11'b0};
			shift_measurements32 <= {measurements32,11'b0};
			shift_measurements33 <= {measurements33,11'b0};
			shift_measurements34 <= {measurements34,11'b0};
			shift_measurements35 <= {measurements35,11'b0};
			shift_measurements36 <= {measurements36,11'b0};
			shift_measurements37 <= {measurements37,11'b0};
			shift_measurements38 <= {measurements38,11'b0};
			shift_measurements39 <= {measurements39,11'b0};
			
			shift_measurements40 <= {measurements40,11'b0};
			shift_measurements41 <= {measurements41,11'b0};
			shift_measurements42 <= {measurements42,11'b0};
			shift_measurements43 <= {measurements43,11'b0};
			shift_measurements44 <= {measurements44,11'b0};
			shift_measurements45 <= {measurements45,11'b0};
			shift_measurements46 <= {measurements46,11'b0};
			shift_measurements47 <= {measurements47,11'b0};
			                        
			                        
			//At'*residual   
			temp_dot_product0 <= {measurements0,1'b0}+measurements1+
				measurements2+measurements3+measurements4+measurements5+
				measurements6+measurements7+measurements8+measurements9+
				measurements10+measurements11+measurements12+
				measurements13+measurements14+measurements15+
				measurements16+measurements17+measurements18+measurements19+
				measurements20+measurements21+measurements22+
				measurements23+measurements24+measurements25+
				measurements26+measurements27+measurements28+measurements29+
				measurements30+measurements31+measurements32+
				measurements33+measurements34+measurements35+
				measurements36+measurements37+measurements38+measurements39+
				measurements40+measurements41+measurements42+
				measurements43+measurements44+measurements45+
				measurements46+measurements47;
			
			temp_dot_product_add <= Value_Max1+ Value_Max2 + Value_Max3 + 
				Value_Max4 + Value_Max5 + Value_Max6 + Value_Max7 + Value_Max8 +
				Value_Max9 + Value_Max10 + Value_Max11 + Value_Max12 + Value_Max13 +
				Value_Max14 + Value_Max15 + Value_Max16 + Value_Max17 + Value_Max18 +
				Value_Max19 + Value_Max20;
			
			temp_dot_product1 <= Value_Max1;
			temp_dot_product2 <= Value_Max2;
			temp_dot_product3 <= Value_Max3;
			temp_dot_product4 <= Value_Max4;
			temp_dot_product5 <= Value_Max5;
			temp_dot_product6 <= Value_Max6;
			temp_dot_product7 <= Value_Max7;
			temp_dot_product8 <= Value_Max8;
			temp_dot_product9 <= Value_Max9;
			temp_dot_product10 <= Value_Max10;
			
			temp_dot_product11 <= Value_Max11;
			temp_dot_product12 <= Value_Max12;
			temp_dot_product13 <= Value_Max13;
			temp_dot_product14 <= Value_Max14;
			temp_dot_product15 <= Value_Max15;
			temp_dot_product16 <= Value_Max16;
			temp_dot_product17 <= Value_Max17;
			temp_dot_product18 <= Value_Max18;
			temp_dot_product19 <= Value_Max19;
			
			temp_dot_product20 <= Value_Max20;
			
			
			//initial the static_inverse0 & static_inverse1 value by SR & iterNum --fix == 11
			//total 8 iterations 
			if(measurement_num == 16) begin
			
				case(iterIndex)
					7'd1: static_inverse0 <= 21'd108;
					7'd2: static_inverse0 <= 21'd114;
					7'd3: static_inverse0 <= 21'd120;
					7'd4: static_inverse0 <= 21'd128;
					7'd5: static_inverse0 <= 21'd137;
					7'd6: static_inverse0 <= 21'd146;
					7'd7: static_inverse0 <= 21'd158;
					7'd8: static_inverse0 <= 21'd171;
					default: static_inverse0 <= 0;
				endcase
				
			end 
			//total 14 iterations
			else if(measurement_num == 32) begin
				
				case(iterIndex)
					7'd1: static_inverse0 <= 21'd59;
					7'd2: static_inverse0 <= 21'd60;
					7'd3: static_inverse0 <= 21'd62;
					7'd4: static_inverse0 <= 21'd64;
					7'd5: static_inverse0 <= 21'd66;
					7'd6: static_inverse0 <= 21'd68;
					7'd7: static_inverse0 <= 21'd71;
					7'd8: static_inverse0 <= 21'd73;
					7'd9: static_inverse0 <= 21'd76;
					7'd10: static_inverse0 <= 21'd79;
					7'd11: static_inverse0 <= 21'd82;
					7'd12: static_inverse0 <= 21'd85;
					7'd13: static_inverse0 <= 21'd89;
					7'd14: static_inverse0 <= 21'd93;
					default: static_inverse0 <= 0;
				endcase
				
			end 
			//total 21 iterations
			else if(measurement_num == 48) begin
				
				case(iterIndex)
					7'd1: static_inverse0 <= 21'd40;
					7'd2: static_inverse0 <= 21'd41;
					7'd3: static_inverse0 <= 21'd42;
					7'd4: static_inverse0 <= 21'd43;
					7'd5: static_inverse0 <= 21'd44;
					7'd6: static_inverse0 <= 21'd45;
					7'd7: static_inverse0 <= 21'd46;
					7'd8: static_inverse0 <= 21'd47;
					7'd9: static_inverse0 <= 21'd48;
					7'd10: static_inverse0 <= 21'd49;
					7'd11: static_inverse0 <= 21'd50;
					7'd12: static_inverse0 <= 21'd51;
					7'd13: static_inverse0 <= 21'd53;
					7'd14: static_inverse0 <= 21'd54;
					7'd15: static_inverse0 <= 21'd55;
					7'd16: static_inverse0 <= 21'd57;
					7'd17: static_inverse0 <= 21'd59;
					7'd18: static_inverse0 <= 21'd60;
					7'd19: static_inverse0 <= 21'd62;
					7'd20: static_inverse0 <= 21'd64;
					7'd21: static_inverse0 <= 21'd66;
					default: static_inverse0 <= 0;
				endcase
				
			end
			else begin
			end
			
			
			//clock 2
			//inverse * At' *residual
			temp_cal0 <= static_inverse0*(temp_dot_product0 - temp_dot_product_add); 
			
			if(iterIndex>1) begin
				temp_cal1 <= static_inverse0*(temp_dot_product_add - temp_dot_product0) + {temp_dot_product1,11'b0}; 
			end
			else begin
			end
			if(iterIndex>2) begin
				temp_cal2 <= static_inverse0*(temp_dot_product_add - temp_dot_product0) + {temp_dot_product2,11'b0}; 
			end
			else begin
			end
			if(iterIndex>3) begin
				temp_cal3 <= static_inverse0*(temp_dot_product_add - temp_dot_product0) + {temp_dot_product3,11'b0}; 
			end
			else begin
			end
			if(iterIndex>4) begin
				temp_cal4 <= static_inverse0*(temp_dot_product_add - temp_dot_product0) + {temp_dot_product4,11'b0}; 
			end
			else begin
			end
			if(iterIndex>5) begin
				temp_cal5 <= static_inverse0*(temp_dot_product_add - temp_dot_product0) + {temp_dot_product5,11'b0}; 
			end
			else begin
			end
			if(iterIndex>6) begin
				temp_cal6 <= static_inverse0*(temp_dot_product_add - temp_dot_product0) + {temp_dot_product6,11'b0}; 
			end
			else begin
			end
			if(iterIndex>7) begin
				temp_cal7 <= static_inverse0*(temp_dot_product_add - temp_dot_product0) + {temp_dot_product7,11'b0}; 
			end
			else begin
			end
			if(iterIndex>8) begin
				temp_cal8 <= static_inverse0*(temp_dot_product_add - temp_dot_product0) + {temp_dot_product8,11'b0}; 
			end
			else begin
			end
			if(iterIndex>9) begin
				temp_cal9 <= static_inverse0*(temp_dot_product_add - temp_dot_product0) + {temp_dot_product9,11'b0}; 
			end
			else begin
			end
			if(iterIndex>10) begin
				temp_cal10 <= static_inverse0*(temp_dot_product_add - temp_dot_product0) + {temp_dot_product10,11'b0}; 
			end
			else begin
			end
			
			if(iterIndex>11) begin
				temp_cal11 <= static_inverse0*(temp_dot_product_add - temp_dot_product0) + {temp_dot_product11,11'b0}; 
			end
			else begin
			end
			if(iterIndex>12) begin
				temp_cal12 <= static_inverse0*(temp_dot_product_add - temp_dot_product0) + {temp_dot_product12,11'b0}; 
			end
			else begin
			end
			if(iterIndex>13) begin
				temp_cal13 <= static_inverse0*(temp_dot_product_add - temp_dot_product0) + {temp_dot_product13,11'b0}; 
			end
			else begin
			end
			if(iterIndex>14) begin
				temp_cal14 <= static_inverse0*(temp_dot_product_add - temp_dot_product0) + {temp_dot_product14,11'b0}; 
			end
			else begin
			end
			if(iterIndex>15) begin
				temp_cal15 <= static_inverse0*(temp_dot_product_add - temp_dot_product0) + {temp_dot_product15,11'b0}; 
			end
			else begin
			end
			if(iterIndex>16) begin
				temp_cal16 <= static_inverse0*(temp_dot_product_add - temp_dot_product0) + {temp_dot_product16,11'b0}; 
			end
			else begin
			end
			if(iterIndex>17) begin
				temp_cal17 <= static_inverse0*(temp_dot_product_add - temp_dot_product0) + {temp_dot_product17,11'b0}; 
			end
			else begin
			end
			if(iterIndex>18) begin
				temp_cal18 <= static_inverse0*(temp_dot_product_add - temp_dot_product0) + {temp_dot_product18,11'b0}; 
			end
			else begin
			end
			if(iterIndex>19) begin
				temp_cal19 <= static_inverse0*(temp_dot_product_add - temp_dot_product0) + {temp_dot_product19,11'b0}; 
			end
			else begin
			end
			if(iterIndex>20) begin
				temp_cal20 <= static_inverse0*(temp_dot_product_add - temp_dot_product0) + {temp_dot_product20,11'b0}; 
			end
			else begin
			end
			
			//clock 3
			//calculate then judge pos
			case(Index1)
				7'd1: Index_pos_r_n1 <= temp_cal1;
				7'd2: Index_pos_r_n2 <= temp_cal1;
				7'd3: Index_pos_r_n3 <= temp_cal1;
				7'd4: Index_pos_r_n4 <= temp_cal1;
				7'd5: Index_pos_r_n5 <= temp_cal1;
				7'd6: Index_pos_r_n6 <= temp_cal1;
				7'd7: Index_pos_r_n7 <= temp_cal1;
				7'd8: Index_pos_r_n8 <= temp_cal1;
				7'd9: Index_pos_r_n9 <= temp_cal1;
				7'd10: Index_pos_r_n10 <= temp_cal1;
				7'd11: Index_pos_r_n11 <= temp_cal1;
				7'd12: Index_pos_r_n12 <= temp_cal1;
				7'd13: Index_pos_r_n13 <= temp_cal1;
				7'd14: Index_pos_r_n14 <= temp_cal1;
				7'd15: Index_pos_r_n15 <= temp_cal1;
				7'd16: Index_pos_r_n16 <= temp_cal1;
				7'd17: Index_pos_r_n17 <= temp_cal1;
				7'd18: Index_pos_r_n18 <= temp_cal1;
				7'd19: Index_pos_r_n19 <= temp_cal1;
				7'd20: Index_pos_r_n20 <= temp_cal1;
				7'd21: Index_pos_r_n21 <= temp_cal1;
				7'd22: Index_pos_r_n22 <= temp_cal1;
				7'd23: Index_pos_r_n23 <= temp_cal1;
				7'd24: Index_pos_r_n24 <= temp_cal1;
				7'd25: Index_pos_r_n25 <= temp_cal1;
				7'd26: Index_pos_r_n26 <= temp_cal1;
				7'd27: Index_pos_r_n27 <= temp_cal1;
				7'd28: Index_pos_r_n28 <= temp_cal1;
				7'd29: Index_pos_r_n29 <= temp_cal1;
				7'd30: Index_pos_r_n30 <= temp_cal1;
				7'd31: Index_pos_r_n31 <= temp_cal1;
				7'd32: Index_pos_r_n32 <= temp_cal1;
				7'd33: Index_pos_r_n33 <= temp_cal1;
				7'd34: Index_pos_r_n34 <= temp_cal1;
				7'd35: Index_pos_r_n35 <= temp_cal1;
				7'd36: Index_pos_r_n36 <= temp_cal1;
				7'd37: Index_pos_r_n37 <= temp_cal1;
				7'd38: Index_pos_r_n38 <= temp_cal1;
				7'd39: Index_pos_r_n39 <= temp_cal1;
				7'd40: Index_pos_r_n40 <= temp_cal1;
				7'd41: Index_pos_r_n41 <= temp_cal1;
				7'd42: Index_pos_r_n42 <= temp_cal1;
				7'd43: Index_pos_r_n43 <= temp_cal1;
				7'd44: Index_pos_r_n44 <= temp_cal1;
				7'd45: Index_pos_r_n45 <= temp_cal1;
				7'd46: Index_pos_r_n46 <= temp_cal1;
				7'd47: Index_pos_r_n47 <= temp_cal1;
				
				default: Index_pos_r_n0 <= 0;
			endcase 
			case(Index2)
				7'd1: Index_pos_r_n1 <= temp_cal2;
				7'd2: Index_pos_r_n2 <= temp_cal2;
				7'd3: Index_pos_r_n3 <= temp_cal2;
				7'd4: Index_pos_r_n4 <= temp_cal2;
				7'd5: Index_pos_r_n5 <= temp_cal2;
				7'd6: Index_pos_r_n6 <= temp_cal2;
				7'd7: Index_pos_r_n7 <= temp_cal2;
				7'd8: Index_pos_r_n8 <= temp_cal2;
				7'd9: Index_pos_r_n9 <= temp_cal2;
				7'd10: Index_pos_r_n10 <= temp_cal2;
				7'd11: Index_pos_r_n11 <= temp_cal2;
				7'd12: Index_pos_r_n12 <= temp_cal2;
				7'd13: Index_pos_r_n13 <= temp_cal2;
				7'd14: Index_pos_r_n14 <= temp_cal2;
				7'd15: Index_pos_r_n15 <= temp_cal2;
				7'd16: Index_pos_r_n16 <= temp_cal2;
				7'd17: Index_pos_r_n17 <= temp_cal2;
				7'd18: Index_pos_r_n18 <= temp_cal2;
				7'd19: Index_pos_r_n19 <= temp_cal2;
				7'd20: Index_pos_r_n20 <= temp_cal2;
				7'd21: Index_pos_r_n21 <= temp_cal2;
				7'd22: Index_pos_r_n22 <= temp_cal2;
				7'd23: Index_pos_r_n23 <= temp_cal2;
				7'd24: Index_pos_r_n24 <= temp_cal2;
				7'd25: Index_pos_r_n25 <= temp_cal2;
				7'd26: Index_pos_r_n26 <= temp_cal2;
				7'd27: Index_pos_r_n27 <= temp_cal2;
				7'd28: Index_pos_r_n28 <= temp_cal2;
				7'd29: Index_pos_r_n29 <= temp_cal2;
				7'd30: Index_pos_r_n30 <= temp_cal2;
				7'd31: Index_pos_r_n31 <= temp_cal2;
				7'd32: Index_pos_r_n32 <= temp_cal2;
				7'd33: Index_pos_r_n33 <= temp_cal2;
				7'd34: Index_pos_r_n34 <= temp_cal2;
				7'd35: Index_pos_r_n35 <= temp_cal2;
				7'd36: Index_pos_r_n36 <= temp_cal2;
				7'd37: Index_pos_r_n37 <= temp_cal2;
				7'd38: Index_pos_r_n38 <= temp_cal2;
				7'd39: Index_pos_r_n39 <= temp_cal2;
				7'd40: Index_pos_r_n40 <= temp_cal2;
				7'd41: Index_pos_r_n41 <= temp_cal2;
				7'd42: Index_pos_r_n42 <= temp_cal2;
				7'd43: Index_pos_r_n43 <= temp_cal2;
				7'd44: Index_pos_r_n44 <= temp_cal2;
				7'd45: Index_pos_r_n45 <= temp_cal2;
				7'd46: Index_pos_r_n46 <= temp_cal2;
				7'd47: Index_pos_r_n47 <= temp_cal2;
				
				default: Index_pos_r_n0 <= 0;
			endcase 
			case(Index3)
				7'd1: Index_pos_r_n1 <= temp_cal3;
				7'd2: Index_pos_r_n2 <= temp_cal3;
				7'd3: Index_pos_r_n3 <= temp_cal3;
				7'd4: Index_pos_r_n4 <= temp_cal3;
				7'd5: Index_pos_r_n5 <= temp_cal3;
				7'd6: Index_pos_r_n6 <= temp_cal3;
				7'd7: Index_pos_r_n7 <= temp_cal3;
				7'd8: Index_pos_r_n8 <= temp_cal3;
				7'd9: Index_pos_r_n9 <= temp_cal3;
				7'd10: Index_pos_r_n10 <= temp_cal3;
				7'd11: Index_pos_r_n11 <= temp_cal3;
				7'd12: Index_pos_r_n12 <= temp_cal3;
				7'd13: Index_pos_r_n13 <= temp_cal3;
				7'd14: Index_pos_r_n14 <= temp_cal3;
				7'd15: Index_pos_r_n15 <= temp_cal3;
				7'd16: Index_pos_r_n16 <= temp_cal3;
				7'd17: Index_pos_r_n17 <= temp_cal3;
				7'd18: Index_pos_r_n18 <= temp_cal3;
				7'd19: Index_pos_r_n19 <= temp_cal3;
				7'd20: Index_pos_r_n20 <= temp_cal3;
				7'd21: Index_pos_r_n21 <= temp_cal3;
				7'd22: Index_pos_r_n22 <= temp_cal3;
				7'd23: Index_pos_r_n23 <= temp_cal3;
				7'd24: Index_pos_r_n24 <= temp_cal3;
				7'd25: Index_pos_r_n25 <= temp_cal3;
				7'd26: Index_pos_r_n26 <= temp_cal3;
				7'd27: Index_pos_r_n27 <= temp_cal3;
				7'd28: Index_pos_r_n28 <= temp_cal3;
				7'd29: Index_pos_r_n29 <= temp_cal3;
				7'd30: Index_pos_r_n30 <= temp_cal3;
				7'd31: Index_pos_r_n31 <= temp_cal3;
				7'd32: Index_pos_r_n32 <= temp_cal3;
				7'd33: Index_pos_r_n33 <= temp_cal3;
				7'd34: Index_pos_r_n34 <= temp_cal3;
				7'd35: Index_pos_r_n35 <= temp_cal3;
				7'd36: Index_pos_r_n36 <= temp_cal3;
				7'd37: Index_pos_r_n37 <= temp_cal3;
				7'd38: Index_pos_r_n38 <= temp_cal3;
				7'd39: Index_pos_r_n39 <= temp_cal3;
				7'd40: Index_pos_r_n40 <= temp_cal3;
				7'd41: Index_pos_r_n41 <= temp_cal3;
				7'd42: Index_pos_r_n42 <= temp_cal3;
				7'd43: Index_pos_r_n43 <= temp_cal3;
				7'd44: Index_pos_r_n44 <= temp_cal3;
				7'd45: Index_pos_r_n45 <= temp_cal3;
				7'd46: Index_pos_r_n46 <= temp_cal3;
				7'd47: Index_pos_r_n47 <= temp_cal3;
				
				default: Index_pos_r_n0 <= 0;
			endcase 
			case(Index4)
				7'd1: Index_pos_r_n1 <= temp_cal4;
				7'd2: Index_pos_r_n2 <= temp_cal4;
				7'd3: Index_pos_r_n3 <= temp_cal4;
				7'd4: Index_pos_r_n4 <= temp_cal4;
				7'd5: Index_pos_r_n5 <= temp_cal4;
				7'd6: Index_pos_r_n6 <= temp_cal4;
				7'd7: Index_pos_r_n7 <= temp_cal4;
				7'd8: Index_pos_r_n8 <= temp_cal4;
				7'd9: Index_pos_r_n9 <= temp_cal4;
				7'd10: Index_pos_r_n10 <= temp_cal4;
				7'd11: Index_pos_r_n11 <= temp_cal4;
				7'd12: Index_pos_r_n12 <= temp_cal4;
				7'd13: Index_pos_r_n13 <= temp_cal4;
				7'd14: Index_pos_r_n14 <= temp_cal4;
				7'd15: Index_pos_r_n15 <= temp_cal4;
				7'd16: Index_pos_r_n16 <= temp_cal4;
				7'd17: Index_pos_r_n17 <= temp_cal4;
				7'd18: Index_pos_r_n18 <= temp_cal4;
				7'd19: Index_pos_r_n19 <= temp_cal4;
				7'd20: Index_pos_r_n20 <= temp_cal4;
				7'd21: Index_pos_r_n21 <= temp_cal4;
				7'd22: Index_pos_r_n22 <= temp_cal4;
				7'd23: Index_pos_r_n23 <= temp_cal4;
				7'd24: Index_pos_r_n24 <= temp_cal4;
				7'd25: Index_pos_r_n25 <= temp_cal4;
				7'd26: Index_pos_r_n26 <= temp_cal4;
				7'd27: Index_pos_r_n27 <= temp_cal4;
				7'd28: Index_pos_r_n28 <= temp_cal4;
				7'd29: Index_pos_r_n29 <= temp_cal4;
				7'd30: Index_pos_r_n30 <= temp_cal4;
				7'd31: Index_pos_r_n31 <= temp_cal4;
				7'd32: Index_pos_r_n32 <= temp_cal4;
				7'd33: Index_pos_r_n33 <= temp_cal4;
				7'd34: Index_pos_r_n34 <= temp_cal4;
				7'd35: Index_pos_r_n35 <= temp_cal4;
				7'd36: Index_pos_r_n36 <= temp_cal4;
				7'd37: Index_pos_r_n37 <= temp_cal4;
				7'd38: Index_pos_r_n38 <= temp_cal4;
				7'd39: Index_pos_r_n39 <= temp_cal4;
				7'd40: Index_pos_r_n40 <= temp_cal4;
				7'd41: Index_pos_r_n41 <= temp_cal4;
				7'd42: Index_pos_r_n42 <= temp_cal4;
				7'd43: Index_pos_r_n43 <= temp_cal4;
				7'd44: Index_pos_r_n44 <= temp_cal4;
				7'd45: Index_pos_r_n45 <= temp_cal4;
				7'd46: Index_pos_r_n46 <= temp_cal4;
				7'd47: Index_pos_r_n47 <= temp_cal4;
				
				default: Index_pos_r_n0 <= 0;
			endcase 
			case(Index5)
				7'd1: Index_pos_r_n1 <= temp_cal5;
				7'd2: Index_pos_r_n2 <= temp_cal5;
				7'd3: Index_pos_r_n3 <= temp_cal5;
				7'd4: Index_pos_r_n4 <= temp_cal5;
				7'd5: Index_pos_r_n5 <= temp_cal5;
				7'd6: Index_pos_r_n6 <= temp_cal5;
				7'd7: Index_pos_r_n7 <= temp_cal5;
				7'd8: Index_pos_r_n8 <= temp_cal5;
				7'd9: Index_pos_r_n9 <= temp_cal5;
				7'd10: Index_pos_r_n10 <= temp_cal5;
				7'd11: Index_pos_r_n11 <= temp_cal5;
				7'd12: Index_pos_r_n12 <= temp_cal5;
				7'd13: Index_pos_r_n13 <= temp_cal5;
				7'd14: Index_pos_r_n14 <= temp_cal5;
				7'd15: Index_pos_r_n15 <= temp_cal5;
				7'd16: Index_pos_r_n16 <= temp_cal5;
				7'd17: Index_pos_r_n17 <= temp_cal5;
				7'd18: Index_pos_r_n18 <= temp_cal5;
				7'd19: Index_pos_r_n19 <= temp_cal5;
				7'd20: Index_pos_r_n20 <= temp_cal5;
				7'd21: Index_pos_r_n21 <= temp_cal5;
				7'd22: Index_pos_r_n22 <= temp_cal5;
				7'd23: Index_pos_r_n23 <= temp_cal5;
				7'd24: Index_pos_r_n24 <= temp_cal5;
				7'd25: Index_pos_r_n25 <= temp_cal5;
				7'd26: Index_pos_r_n26 <= temp_cal5;
				7'd27: Index_pos_r_n27 <= temp_cal5;
				7'd28: Index_pos_r_n28 <= temp_cal5;
				7'd29: Index_pos_r_n29 <= temp_cal5;
				7'd30: Index_pos_r_n30 <= temp_cal5;
				7'd31: Index_pos_r_n31 <= temp_cal5;
				7'd32: Index_pos_r_n32 <= temp_cal5;
				7'd33: Index_pos_r_n33 <= temp_cal5;
				7'd34: Index_pos_r_n34 <= temp_cal5;
				7'd35: Index_pos_r_n35 <= temp_cal5;
				7'd36: Index_pos_r_n36 <= temp_cal5;
				7'd37: Index_pos_r_n37 <= temp_cal5;
				7'd38: Index_pos_r_n38 <= temp_cal5;
				7'd39: Index_pos_r_n39 <= temp_cal5;
				7'd40: Index_pos_r_n40 <= temp_cal5;
				7'd41: Index_pos_r_n41 <= temp_cal5;
				7'd42: Index_pos_r_n42 <= temp_cal5;
				7'd43: Index_pos_r_n43 <= temp_cal5;
				7'd44: Index_pos_r_n44 <= temp_cal5;
				7'd45: Index_pos_r_n45 <= temp_cal5;
				7'd46: Index_pos_r_n46 <= temp_cal5;
				7'd47: Index_pos_r_n47 <= temp_cal5;
				
				default: Index_pos_r_n0 <= 0;
			endcase
			case(Index6)
				7'd1: Index_pos_r_n1 <= temp_cal6;
				7'd2: Index_pos_r_n2 <= temp_cal6;
				7'd3: Index_pos_r_n3 <= temp_cal6;
				7'd4: Index_pos_r_n4 <= temp_cal6;
				7'd5: Index_pos_r_n5 <= temp_cal6;
				7'd6: Index_pos_r_n6 <= temp_cal6;
				7'd7: Index_pos_r_n7 <= temp_cal6;
				7'd8: Index_pos_r_n8 <= temp_cal6;
				7'd9: Index_pos_r_n9 <= temp_cal6;
				7'd10: Index_pos_r_n10 <= temp_cal6;
				7'd11: Index_pos_r_n11 <= temp_cal6;
				7'd12: Index_pos_r_n12 <= temp_cal6;
				7'd13: Index_pos_r_n13 <= temp_cal6;
				7'd14: Index_pos_r_n14 <= temp_cal6;
				7'd15: Index_pos_r_n15 <= temp_cal6;
				7'd16: Index_pos_r_n16 <= temp_cal6;
				7'd17: Index_pos_r_n17 <= temp_cal6;
				7'd18: Index_pos_r_n18 <= temp_cal6;
				7'd19: Index_pos_r_n19 <= temp_cal6;
				7'd20: Index_pos_r_n20 <= temp_cal6;
				7'd21: Index_pos_r_n21 <= temp_cal6;
				7'd22: Index_pos_r_n22 <= temp_cal6;
				7'd23: Index_pos_r_n23 <= temp_cal6;
				7'd24: Index_pos_r_n24 <= temp_cal6;
				7'd25: Index_pos_r_n25 <= temp_cal6;
				7'd26: Index_pos_r_n26 <= temp_cal6;
				7'd27: Index_pos_r_n27 <= temp_cal6;
				7'd28: Index_pos_r_n28 <= temp_cal6;
				7'd29: Index_pos_r_n29 <= temp_cal6;
				7'd30: Index_pos_r_n30 <= temp_cal6;
				7'd31: Index_pos_r_n31 <= temp_cal6;
				7'd32: Index_pos_r_n32 <= temp_cal6;
				7'd33: Index_pos_r_n33 <= temp_cal6;
				7'd34: Index_pos_r_n34 <= temp_cal6;
				7'd35: Index_pos_r_n35 <= temp_cal6;
				7'd36: Index_pos_r_n36 <= temp_cal6;
				7'd37: Index_pos_r_n37 <= temp_cal6;
				7'd38: Index_pos_r_n38 <= temp_cal6;
				7'd39: Index_pos_r_n39 <= temp_cal6;
				7'd40: Index_pos_r_n40 <= temp_cal6;
				7'd41: Index_pos_r_n41 <= temp_cal6;
				7'd42: Index_pos_r_n42 <= temp_cal6;
				7'd43: Index_pos_r_n43 <= temp_cal6;
				7'd44: Index_pos_r_n44 <= temp_cal6;
				7'd45: Index_pos_r_n45 <= temp_cal6;
				7'd46: Index_pos_r_n46 <= temp_cal6;
				7'd47: Index_pos_r_n47 <= temp_cal6;
				
				default: Index_pos_r_n0 <= 0;
			endcase
			case(Index7)
				7'd1: Index_pos_r_n1 <= temp_cal7;
				7'd2: Index_pos_r_n2 <= temp_cal7;
				7'd3: Index_pos_r_n3 <= temp_cal7;
				7'd4: Index_pos_r_n4 <= temp_cal7;
				7'd5: Index_pos_r_n5 <= temp_cal7;
				7'd6: Index_pos_r_n6 <= temp_cal7;
				7'd7: Index_pos_r_n7 <= temp_cal7;
				7'd8: Index_pos_r_n8 <= temp_cal7;
				7'd9: Index_pos_r_n9 <= temp_cal7;
				7'd10: Index_pos_r_n10 <= temp_cal7;
				7'd11: Index_pos_r_n11 <= temp_cal7;
				7'd12: Index_pos_r_n12 <= temp_cal7;
				7'd13: Index_pos_r_n13 <= temp_cal7;
				7'd14: Index_pos_r_n14 <= temp_cal7;
				7'd15: Index_pos_r_n15 <= temp_cal7;
				7'd16: Index_pos_r_n16 <= temp_cal7;
				7'd17: Index_pos_r_n17 <= temp_cal7;
				7'd18: Index_pos_r_n18 <= temp_cal7;
				7'd19: Index_pos_r_n19 <= temp_cal7;
				7'd20: Index_pos_r_n20 <= temp_cal7;
				7'd21: Index_pos_r_n21 <= temp_cal7;
				7'd22: Index_pos_r_n22 <= temp_cal7;
				7'd23: Index_pos_r_n23 <= temp_cal7;
				7'd24: Index_pos_r_n24 <= temp_cal7;
				7'd25: Index_pos_r_n25 <= temp_cal7;
				7'd26: Index_pos_r_n26 <= temp_cal7;
				7'd27: Index_pos_r_n27 <= temp_cal7;
				7'd28: Index_pos_r_n28 <= temp_cal7;
				7'd29: Index_pos_r_n29 <= temp_cal7;
				7'd30: Index_pos_r_n30 <= temp_cal7;
				7'd31: Index_pos_r_n31 <= temp_cal7;
				7'd32: Index_pos_r_n32 <= temp_cal7;
				7'd33: Index_pos_r_n33 <= temp_cal7;
				7'd34: Index_pos_r_n34 <= temp_cal7;
				7'd35: Index_pos_r_n35 <= temp_cal7;
				7'd36: Index_pos_r_n36 <= temp_cal7;
				7'd37: Index_pos_r_n37 <= temp_cal7;
				7'd38: Index_pos_r_n38 <= temp_cal7;
				7'd39: Index_pos_r_n39 <= temp_cal7;
				7'd40: Index_pos_r_n40 <= temp_cal7;
				7'd41: Index_pos_r_n41 <= temp_cal7;
				7'd42: Index_pos_r_n42 <= temp_cal7;
				7'd43: Index_pos_r_n43 <= temp_cal7;
				7'd44: Index_pos_r_n44 <= temp_cal7;
				7'd45: Index_pos_r_n45 <= temp_cal7;
				7'd46: Index_pos_r_n46 <= temp_cal7;
				7'd47: Index_pos_r_n47 <= temp_cal7;
				
				default: Index_pos_r_n0 <= 0;
			endcase
			case(Index8)
				7'd1: Index_pos_r_n1 <= temp_cal8;
				7'd2: Index_pos_r_n2 <= temp_cal8;
				7'd3: Index_pos_r_n3 <= temp_cal8;
				7'd4: Index_pos_r_n4 <= temp_cal8;
				7'd5: Index_pos_r_n5 <= temp_cal8;
				7'd6: Index_pos_r_n6 <= temp_cal8;
				7'd7: Index_pos_r_n7 <= temp_cal8;
				7'd8: Index_pos_r_n8 <= temp_cal8;
				7'd9: Index_pos_r_n9 <= temp_cal8;
				7'd10: Index_pos_r_n10 <= temp_cal8;
				7'd11: Index_pos_r_n11 <= temp_cal8;
				7'd12: Index_pos_r_n12 <= temp_cal8;
				7'd13: Index_pos_r_n13 <= temp_cal8;
				7'd14: Index_pos_r_n14 <= temp_cal8;
				7'd15: Index_pos_r_n15 <= temp_cal8;
				7'd16: Index_pos_r_n16 <= temp_cal8;
				7'd17: Index_pos_r_n17 <= temp_cal8;
				7'd18: Index_pos_r_n18 <= temp_cal8;
				7'd19: Index_pos_r_n19 <= temp_cal8;
				7'd20: Index_pos_r_n20 <= temp_cal8;
				7'd21: Index_pos_r_n21 <= temp_cal8;
				7'd22: Index_pos_r_n22 <= temp_cal8;
				7'd23: Index_pos_r_n23 <= temp_cal8;
				7'd24: Index_pos_r_n24 <= temp_cal8;
				7'd25: Index_pos_r_n25 <= temp_cal8;
				7'd26: Index_pos_r_n26 <= temp_cal8;
				7'd27: Index_pos_r_n27 <= temp_cal8;
				7'd28: Index_pos_r_n28 <= temp_cal8;
				7'd29: Index_pos_r_n29 <= temp_cal8;
				7'd30: Index_pos_r_n30 <= temp_cal8;
				7'd31: Index_pos_r_n31 <= temp_cal8;
				7'd32: Index_pos_r_n32 <= temp_cal8;
				7'd33: Index_pos_r_n33 <= temp_cal8;
				7'd34: Index_pos_r_n34 <= temp_cal8;
				7'd35: Index_pos_r_n35 <= temp_cal8;
				7'd36: Index_pos_r_n36 <= temp_cal8;
				7'd37: Index_pos_r_n37 <= temp_cal8;
				7'd38: Index_pos_r_n38 <= temp_cal8;
				7'd39: Index_pos_r_n39 <= temp_cal8;
				7'd40: Index_pos_r_n40 <= temp_cal8;
				7'd41: Index_pos_r_n41 <= temp_cal8;
				7'd42: Index_pos_r_n42 <= temp_cal8;
				7'd43: Index_pos_r_n43 <= temp_cal8;
				7'd44: Index_pos_r_n44 <= temp_cal8;
				7'd45: Index_pos_r_n45 <= temp_cal8;
				7'd46: Index_pos_r_n46 <= temp_cal8;
				7'd47: Index_pos_r_n47 <= temp_cal8;
				
				default: Index_pos_r_n0 <= 0;
			endcase
			case(Index9)
				7'd1: Index_pos_r_n1 <= temp_cal9;
				7'd2: Index_pos_r_n2 <= temp_cal9;
				7'd3: Index_pos_r_n3 <= temp_cal9;
				7'd4: Index_pos_r_n4 <= temp_cal9;
				7'd5: Index_pos_r_n5 <= temp_cal9;
				7'd6: Index_pos_r_n6 <= temp_cal9;
				7'd7: Index_pos_r_n7 <= temp_cal9;
				7'd8: Index_pos_r_n8 <= temp_cal9;
				7'd9: Index_pos_r_n9 <= temp_cal9;
				7'd10: Index_pos_r_n10 <= temp_cal9;
				7'd11: Index_pos_r_n11 <= temp_cal9;
				7'd12: Index_pos_r_n12 <= temp_cal9;
				7'd13: Index_pos_r_n13 <= temp_cal9;
				7'd14: Index_pos_r_n14 <= temp_cal9;
				7'd15: Index_pos_r_n15 <= temp_cal9;
				7'd16: Index_pos_r_n16 <= temp_cal9;
				7'd17: Index_pos_r_n17 <= temp_cal9;
				7'd18: Index_pos_r_n18 <= temp_cal9;
				7'd19: Index_pos_r_n19 <= temp_cal9;
				7'd20: Index_pos_r_n20 <= temp_cal9;
				7'd21: Index_pos_r_n21 <= temp_cal9;
				7'd22: Index_pos_r_n22 <= temp_cal9;
				7'd23: Index_pos_r_n23 <= temp_cal9;
				7'd24: Index_pos_r_n24 <= temp_cal9;
				7'd25: Index_pos_r_n25 <= temp_cal9;
				7'd26: Index_pos_r_n26 <= temp_cal9;
				7'd27: Index_pos_r_n27 <= temp_cal9;
				7'd28: Index_pos_r_n28 <= temp_cal9;
				7'd29: Index_pos_r_n29 <= temp_cal9;
				7'd30: Index_pos_r_n30 <= temp_cal9;
				7'd31: Index_pos_r_n31 <= temp_cal9;
				7'd32: Index_pos_r_n32 <= temp_cal9;
				7'd33: Index_pos_r_n33 <= temp_cal9;
				7'd34: Index_pos_r_n34 <= temp_cal9;
				7'd35: Index_pos_r_n35 <= temp_cal9;
				7'd36: Index_pos_r_n36 <= temp_cal9;
				7'd37: Index_pos_r_n37 <= temp_cal9;
				7'd38: Index_pos_r_n38 <= temp_cal9;
				7'd39: Index_pos_r_n39 <= temp_cal9;
				7'd40: Index_pos_r_n40 <= temp_cal9;
				7'd41: Index_pos_r_n41 <= temp_cal9;
				7'd42: Index_pos_r_n42 <= temp_cal9;
				7'd43: Index_pos_r_n43 <= temp_cal9;
				7'd44: Index_pos_r_n44 <= temp_cal9;
				7'd45: Index_pos_r_n45 <= temp_cal9;
				7'd46: Index_pos_r_n46 <= temp_cal9;
				7'd47: Index_pos_r_n47 <= temp_cal9;
				
				default: Index_pos_r_n0 <= 0;
			endcase
			case(Index10)
				7'd1: Index_pos_r_n1 <= temp_cal10;
				7'd2: Index_pos_r_n2 <= temp_cal10;
				7'd3: Index_pos_r_n3 <= temp_cal10;
				7'd4: Index_pos_r_n4 <= temp_cal10;
				7'd5: Index_pos_r_n5 <= temp_cal10;
				7'd6: Index_pos_r_n6 <= temp_cal10;
				7'd7: Index_pos_r_n7 <= temp_cal10;
				7'd8: Index_pos_r_n8 <= temp_cal10;
				7'd9: Index_pos_r_n9 <= temp_cal10;
				7'd10: Index_pos_r_n10 <= temp_cal10;
				7'd11: Index_pos_r_n11 <= temp_cal10;
				7'd12: Index_pos_r_n12 <= temp_cal10;
				7'd13: Index_pos_r_n13 <= temp_cal10;
				7'd14: Index_pos_r_n14 <= temp_cal10;
				7'd15: Index_pos_r_n15 <= temp_cal10;
				7'd16: Index_pos_r_n16 <= temp_cal10;
				7'd17: Index_pos_r_n17 <= temp_cal10;
				7'd18: Index_pos_r_n18 <= temp_cal10;
				7'd19: Index_pos_r_n19 <= temp_cal10;
				7'd20: Index_pos_r_n20 <= temp_cal10;
				7'd21: Index_pos_r_n21 <= temp_cal10;
				7'd22: Index_pos_r_n22 <= temp_cal10;
				7'd23: Index_pos_r_n23 <= temp_cal10;
				7'd24: Index_pos_r_n24 <= temp_cal10;
				7'd25: Index_pos_r_n25 <= temp_cal10;
				7'd26: Index_pos_r_n26 <= temp_cal10;
				7'd27: Index_pos_r_n27 <= temp_cal10;
				7'd28: Index_pos_r_n28 <= temp_cal10;
				7'd29: Index_pos_r_n29 <= temp_cal10;
				7'd30: Index_pos_r_n30 <= temp_cal10;
				7'd31: Index_pos_r_n31 <= temp_cal10;
				7'd32: Index_pos_r_n32 <= temp_cal10;
				7'd33: Index_pos_r_n33 <= temp_cal10;
				7'd34: Index_pos_r_n34 <= temp_cal10;
				7'd35: Index_pos_r_n35 <= temp_cal10;
				7'd36: Index_pos_r_n36 <= temp_cal10;
				7'd37: Index_pos_r_n37 <= temp_cal10;
				7'd38: Index_pos_r_n38 <= temp_cal10;
				7'd39: Index_pos_r_n39 <= temp_cal10;
				7'd40: Index_pos_r_n40 <= temp_cal10;
				7'd41: Index_pos_r_n41 <= temp_cal10;
				7'd42: Index_pos_r_n42 <= temp_cal10;
				7'd43: Index_pos_r_n43 <= temp_cal10;
				7'd44: Index_pos_r_n44 <= temp_cal10;
				7'd45: Index_pos_r_n45 <= temp_cal10;
				7'd46: Index_pos_r_n46 <= temp_cal10;
				7'd47: Index_pos_r_n47 <= temp_cal10;
				
				default: Index_pos_r_n0 <= 0;
			endcase
			
			case(Index11)
				7'd1: Index_pos_r_n1 <= temp_cal11;
				7'd2: Index_pos_r_n2 <= temp_cal11;
				7'd3: Index_pos_r_n3 <= temp_cal11;
				7'd4: Index_pos_r_n4 <= temp_cal11;
				7'd5: Index_pos_r_n5 <= temp_cal11;
				7'd6: Index_pos_r_n6 <= temp_cal11;
				7'd7: Index_pos_r_n7 <= temp_cal11;
				7'd8: Index_pos_r_n8 <= temp_cal11;
				7'd9: Index_pos_r_n9 <= temp_cal11;
				7'd10: Index_pos_r_n10 <= temp_cal11;
				7'd11: Index_pos_r_n11 <= temp_cal11;
				7'd12: Index_pos_r_n12 <= temp_cal11;
				7'd13: Index_pos_r_n13 <= temp_cal11;
				7'd14: Index_pos_r_n14 <= temp_cal11;
				7'd15: Index_pos_r_n15 <= temp_cal11;
				7'd16: Index_pos_r_n16 <= temp_cal11;
				7'd17: Index_pos_r_n17 <= temp_cal11;
				7'd18: Index_pos_r_n18 <= temp_cal11;
				7'd19: Index_pos_r_n19 <= temp_cal11;
				7'd20: Index_pos_r_n20 <= temp_cal11;
				7'd21: Index_pos_r_n21 <= temp_cal11;
				7'd22: Index_pos_r_n22 <= temp_cal11;
				7'd23: Index_pos_r_n23 <= temp_cal11;
				7'd24: Index_pos_r_n24 <= temp_cal11;
				7'd25: Index_pos_r_n25 <= temp_cal11;
				7'd26: Index_pos_r_n26 <= temp_cal11;
				7'd27: Index_pos_r_n27 <= temp_cal11;
				7'd28: Index_pos_r_n28 <= temp_cal11;
				7'd29: Index_pos_r_n29 <= temp_cal11;
				7'd30: Index_pos_r_n30 <= temp_cal11;
				7'd31: Index_pos_r_n31 <= temp_cal11;
				7'd32: Index_pos_r_n32 <= temp_cal11;
				7'd33: Index_pos_r_n33 <= temp_cal11;
				7'd34: Index_pos_r_n34 <= temp_cal11;
				7'd35: Index_pos_r_n35 <= temp_cal11;
				7'd36: Index_pos_r_n36 <= temp_cal11;
				7'd37: Index_pos_r_n37 <= temp_cal11;
				7'd38: Index_pos_r_n38 <= temp_cal11;
				7'd39: Index_pos_r_n39 <= temp_cal11;
				7'd40: Index_pos_r_n40 <= temp_cal11;
				7'd41: Index_pos_r_n41 <= temp_cal11;
				7'd42: Index_pos_r_n42 <= temp_cal11;
				7'd43: Index_pos_r_n43 <= temp_cal11;
				7'd44: Index_pos_r_n44 <= temp_cal11;
				7'd45: Index_pos_r_n45 <= temp_cal11;
				7'd46: Index_pos_r_n46 <= temp_cal11;
				7'd47: Index_pos_r_n47 <= temp_cal11;
				
				default: Index_pos_r_n0 <= 0;
			endcase
			case(Index12)
				7'd1: Index_pos_r_n1 <= temp_cal12;
				7'd2: Index_pos_r_n2 <= temp_cal12;
				7'd3: Index_pos_r_n3 <= temp_cal12;
				7'd4: Index_pos_r_n4 <= temp_cal12;
				7'd5: Index_pos_r_n5 <= temp_cal12;
				7'd6: Index_pos_r_n6 <= temp_cal12;
				7'd7: Index_pos_r_n7 <= temp_cal12;
				7'd8: Index_pos_r_n8 <= temp_cal12;
				7'd9: Index_pos_r_n9 <= temp_cal12;
				7'd10: Index_pos_r_n10 <= temp_cal12;
				7'd11: Index_pos_r_n11 <= temp_cal12;
				7'd12: Index_pos_r_n12 <= temp_cal12;
				7'd13: Index_pos_r_n13 <= temp_cal12;
				7'd14: Index_pos_r_n14 <= temp_cal12;
				7'd15: Index_pos_r_n15 <= temp_cal12;
				7'd16: Index_pos_r_n16 <= temp_cal12;
				7'd17: Index_pos_r_n17 <= temp_cal12;
				7'd18: Index_pos_r_n18 <= temp_cal12;
				7'd19: Index_pos_r_n19 <= temp_cal12;
				7'd20: Index_pos_r_n20 <= temp_cal12;
				7'd21: Index_pos_r_n21 <= temp_cal12;
				7'd22: Index_pos_r_n22 <= temp_cal12;
				7'd23: Index_pos_r_n23 <= temp_cal12;
				7'd24: Index_pos_r_n24 <= temp_cal12;
				7'd25: Index_pos_r_n25 <= temp_cal12;
				7'd26: Index_pos_r_n26 <= temp_cal12;
				7'd27: Index_pos_r_n27 <= temp_cal12;
				7'd28: Index_pos_r_n28 <= temp_cal12;
				7'd29: Index_pos_r_n29 <= temp_cal12;
				7'd30: Index_pos_r_n30 <= temp_cal12;
				7'd31: Index_pos_r_n31 <= temp_cal12;
				7'd32: Index_pos_r_n32 <= temp_cal12;
				7'd33: Index_pos_r_n33 <= temp_cal12;
				7'd34: Index_pos_r_n34 <= temp_cal12;
				7'd35: Index_pos_r_n35 <= temp_cal12;
				7'd36: Index_pos_r_n36 <= temp_cal12;
				7'd37: Index_pos_r_n37 <= temp_cal12;
				7'd38: Index_pos_r_n38 <= temp_cal12;
				7'd39: Index_pos_r_n39 <= temp_cal12;
				7'd40: Index_pos_r_n40 <= temp_cal12;
				7'd41: Index_pos_r_n41 <= temp_cal12;
				7'd42: Index_pos_r_n42 <= temp_cal12;
				7'd43: Index_pos_r_n43 <= temp_cal12;
				7'd44: Index_pos_r_n44 <= temp_cal12;
				7'd45: Index_pos_r_n45 <= temp_cal12;
				7'd46: Index_pos_r_n46 <= temp_cal12;
				7'd47: Index_pos_r_n47 <= temp_cal12;
				
				default: Index_pos_r_n0 <= 0;
			endcase
			case(Index13)
				7'd1: Index_pos_r_n1 <= temp_cal13;
				7'd2: Index_pos_r_n2 <= temp_cal13;
				7'd3: Index_pos_r_n3 <= temp_cal13;
				7'd4: Index_pos_r_n4 <= temp_cal13;
				7'd5: Index_pos_r_n5 <= temp_cal13;
				7'd6: Index_pos_r_n6 <= temp_cal13;
				7'd7: Index_pos_r_n7 <= temp_cal13;
				7'd8: Index_pos_r_n8 <= temp_cal13;
				7'd9: Index_pos_r_n9 <= temp_cal13;
				7'd10: Index_pos_r_n10 <= temp_cal13;
				7'd11: Index_pos_r_n11 <= temp_cal13;
				7'd12: Index_pos_r_n12 <= temp_cal13;
				7'd13: Index_pos_r_n13 <= temp_cal13;
				7'd14: Index_pos_r_n14 <= temp_cal13;
				7'd15: Index_pos_r_n15 <= temp_cal13;
				7'd16: Index_pos_r_n16 <= temp_cal13;
				7'd17: Index_pos_r_n17 <= temp_cal13;
				7'd18: Index_pos_r_n18 <= temp_cal13;
				7'd19: Index_pos_r_n19 <= temp_cal13;
				7'd20: Index_pos_r_n20 <= temp_cal13;
				7'd21: Index_pos_r_n21 <= temp_cal13;
				7'd22: Index_pos_r_n22 <= temp_cal13;
				7'd23: Index_pos_r_n23 <= temp_cal13;
				7'd24: Index_pos_r_n24 <= temp_cal13;
				7'd25: Index_pos_r_n25 <= temp_cal13;
				7'd26: Index_pos_r_n26 <= temp_cal13;
				7'd27: Index_pos_r_n27 <= temp_cal13;
				7'd28: Index_pos_r_n28 <= temp_cal13;
				7'd29: Index_pos_r_n29 <= temp_cal13;
				7'd30: Index_pos_r_n30 <= temp_cal13;
				7'd31: Index_pos_r_n31 <= temp_cal13;
				7'd32: Index_pos_r_n32 <= temp_cal13;
				7'd33: Index_pos_r_n33 <= temp_cal13;
				7'd34: Index_pos_r_n34 <= temp_cal13;
				7'd35: Index_pos_r_n35 <= temp_cal13;
				7'd36: Index_pos_r_n36 <= temp_cal13;
				7'd37: Index_pos_r_n37 <= temp_cal13;
				7'd38: Index_pos_r_n38 <= temp_cal13;
				7'd39: Index_pos_r_n39 <= temp_cal13;
				7'd40: Index_pos_r_n40 <= temp_cal13;
				7'd41: Index_pos_r_n41 <= temp_cal13;
				7'd42: Index_pos_r_n42 <= temp_cal13;
				7'd43: Index_pos_r_n43 <= temp_cal13;
				7'd44: Index_pos_r_n44 <= temp_cal13;
				7'd45: Index_pos_r_n45 <= temp_cal13;
				7'd46: Index_pos_r_n46 <= temp_cal13;
				7'd47: Index_pos_r_n47 <= temp_cal13;
				
				default: Index_pos_r_n0 <= 0;
			endcase
			case(Index14)
				7'd1: Index_pos_r_n1 <= temp_cal14;
				7'd2: Index_pos_r_n2 <= temp_cal14;
				7'd3: Index_pos_r_n3 <= temp_cal14;
				7'd4: Index_pos_r_n4 <= temp_cal14;
				7'd5: Index_pos_r_n5 <= temp_cal14;
				7'd6: Index_pos_r_n6 <= temp_cal14;
				7'd7: Index_pos_r_n7 <= temp_cal14;
				7'd8: Index_pos_r_n8 <= temp_cal14;
				7'd9: Index_pos_r_n9 <= temp_cal14;
				7'd10: Index_pos_r_n10 <= temp_cal14;
				7'd11: Index_pos_r_n11 <= temp_cal14;
				7'd12: Index_pos_r_n12 <= temp_cal14;
				7'd13: Index_pos_r_n13 <= temp_cal14;
				7'd14: Index_pos_r_n14 <= temp_cal14;
				7'd15: Index_pos_r_n15 <= temp_cal14;
				7'd16: Index_pos_r_n16 <= temp_cal14;
				7'd17: Index_pos_r_n17 <= temp_cal14;
				7'd18: Index_pos_r_n18 <= temp_cal14;
				7'd19: Index_pos_r_n19 <= temp_cal14;
				7'd20: Index_pos_r_n20 <= temp_cal14;
				7'd21: Index_pos_r_n21 <= temp_cal14;
				7'd22: Index_pos_r_n22 <= temp_cal14;
				7'd23: Index_pos_r_n23 <= temp_cal14;
				7'd24: Index_pos_r_n24 <= temp_cal14;
				7'd25: Index_pos_r_n25 <= temp_cal14;
				7'd26: Index_pos_r_n26 <= temp_cal14;
				7'd27: Index_pos_r_n27 <= temp_cal14;
				7'd28: Index_pos_r_n28 <= temp_cal14;
				7'd29: Index_pos_r_n29 <= temp_cal14;
				7'd30: Index_pos_r_n30 <= temp_cal14;
				7'd31: Index_pos_r_n31 <= temp_cal14;
				7'd32: Index_pos_r_n32 <= temp_cal14;
				7'd33: Index_pos_r_n33 <= temp_cal14;
				7'd34: Index_pos_r_n34 <= temp_cal14;
				7'd35: Index_pos_r_n35 <= temp_cal14;
				7'd36: Index_pos_r_n36 <= temp_cal14;
				7'd37: Index_pos_r_n37 <= temp_cal14;
				7'd38: Index_pos_r_n38 <= temp_cal14;
				7'd39: Index_pos_r_n39 <= temp_cal14;
				7'd40: Index_pos_r_n40 <= temp_cal14;
				7'd41: Index_pos_r_n41 <= temp_cal14;
				7'd42: Index_pos_r_n42 <= temp_cal14;
				7'd43: Index_pos_r_n43 <= temp_cal14;
				7'd44: Index_pos_r_n44 <= temp_cal14;
				7'd45: Index_pos_r_n45 <= temp_cal14;
				7'd46: Index_pos_r_n46 <= temp_cal14;
				7'd47: Index_pos_r_n47 <= temp_cal14;
				
				default: Index_pos_r_n0 <= 0;
			endcase
			case(Index15)
				7'd1: Index_pos_r_n1 <= temp_cal15;
				7'd2: Index_pos_r_n2 <= temp_cal15;
				7'd3: Index_pos_r_n3 <= temp_cal15;
				7'd4: Index_pos_r_n4 <= temp_cal15;
				7'd5: Index_pos_r_n5 <= temp_cal15;
				7'd6: Index_pos_r_n6 <= temp_cal15;
				7'd7: Index_pos_r_n7 <= temp_cal15;
				7'd8: Index_pos_r_n8 <= temp_cal15;
				7'd9: Index_pos_r_n9 <= temp_cal15;
				7'd10: Index_pos_r_n10 <= temp_cal15;
				7'd11: Index_pos_r_n11 <= temp_cal15;
				7'd12: Index_pos_r_n12 <= temp_cal15;
				7'd13: Index_pos_r_n13 <= temp_cal15;
				7'd14: Index_pos_r_n14 <= temp_cal15;
				7'd15: Index_pos_r_n15 <= temp_cal15;
				7'd16: Index_pos_r_n16 <= temp_cal15;
				7'd17: Index_pos_r_n17 <= temp_cal15;
				7'd18: Index_pos_r_n18 <= temp_cal15;
				7'd19: Index_pos_r_n19 <= temp_cal15;
				7'd20: Index_pos_r_n20 <= temp_cal15;
				7'd21: Index_pos_r_n21 <= temp_cal15;
				7'd22: Index_pos_r_n22 <= temp_cal15;
				7'd23: Index_pos_r_n23 <= temp_cal15;
				7'd24: Index_pos_r_n24 <= temp_cal15;
				7'd25: Index_pos_r_n25 <= temp_cal15;
				7'd26: Index_pos_r_n26 <= temp_cal15;
				7'd27: Index_pos_r_n27 <= temp_cal15;
				7'd28: Index_pos_r_n28 <= temp_cal15;
				7'd29: Index_pos_r_n29 <= temp_cal15;
				7'd30: Index_pos_r_n30 <= temp_cal15;
				7'd31: Index_pos_r_n31 <= temp_cal15;
				7'd32: Index_pos_r_n32 <= temp_cal15;
				7'd33: Index_pos_r_n33 <= temp_cal15;
				7'd34: Index_pos_r_n34 <= temp_cal15;
				7'd35: Index_pos_r_n35 <= temp_cal15;
				7'd36: Index_pos_r_n36 <= temp_cal15;
				7'd37: Index_pos_r_n37 <= temp_cal15;
				7'd38: Index_pos_r_n38 <= temp_cal15;
				7'd39: Index_pos_r_n39 <= temp_cal15;
				7'd40: Index_pos_r_n40 <= temp_cal15;
				7'd41: Index_pos_r_n41 <= temp_cal15;
				7'd42: Index_pos_r_n42 <= temp_cal15;
				7'd43: Index_pos_r_n43 <= temp_cal15;
				7'd44: Index_pos_r_n44 <= temp_cal15;
				7'd45: Index_pos_r_n45 <= temp_cal15;
				7'd46: Index_pos_r_n46 <= temp_cal15;
				7'd47: Index_pos_r_n47 <= temp_cal15;
				
				default: Index_pos_r_n0 <= 0;
			endcase
			case(Index16)
				7'd1: Index_pos_r_n1 <= temp_cal16;
				7'd2: Index_pos_r_n2 <= temp_cal16;
				7'd3: Index_pos_r_n3 <= temp_cal16;
				7'd4: Index_pos_r_n4 <= temp_cal16;
				7'd5: Index_pos_r_n5 <= temp_cal16;
				7'd6: Index_pos_r_n6 <= temp_cal16;
				7'd7: Index_pos_r_n7 <= temp_cal16;
				7'd8: Index_pos_r_n8 <= temp_cal16;
				7'd9: Index_pos_r_n9 <= temp_cal16;
				7'd10: Index_pos_r_n10 <= temp_cal16;
				7'd11: Index_pos_r_n11 <= temp_cal16;
				7'd12: Index_pos_r_n12 <= temp_cal16;
				7'd13: Index_pos_r_n13 <= temp_cal16;
				7'd14: Index_pos_r_n14 <= temp_cal16;
				7'd15: Index_pos_r_n15 <= temp_cal16;
				7'd16: Index_pos_r_n16 <= temp_cal16;
				7'd17: Index_pos_r_n17 <= temp_cal16;
				7'd18: Index_pos_r_n18 <= temp_cal16;
				7'd19: Index_pos_r_n19 <= temp_cal16;
				7'd20: Index_pos_r_n20 <= temp_cal16;
				7'd21: Index_pos_r_n21 <= temp_cal16;
				7'd22: Index_pos_r_n22 <= temp_cal16;
				7'd23: Index_pos_r_n23 <= temp_cal16;
				7'd24: Index_pos_r_n24 <= temp_cal16;
				7'd25: Index_pos_r_n25 <= temp_cal16;
				7'd26: Index_pos_r_n26 <= temp_cal16;
				7'd27: Index_pos_r_n27 <= temp_cal16;
				7'd28: Index_pos_r_n28 <= temp_cal16;
				7'd29: Index_pos_r_n29 <= temp_cal16;
				7'd30: Index_pos_r_n30 <= temp_cal16;
				7'd31: Index_pos_r_n31 <= temp_cal16;
				7'd32: Index_pos_r_n32 <= temp_cal16;
				7'd33: Index_pos_r_n33 <= temp_cal16;
				7'd34: Index_pos_r_n34 <= temp_cal16;
				7'd35: Index_pos_r_n35 <= temp_cal16;
				7'd36: Index_pos_r_n36 <= temp_cal16;
				7'd37: Index_pos_r_n37 <= temp_cal16;
				7'd38: Index_pos_r_n38 <= temp_cal16;
				7'd39: Index_pos_r_n39 <= temp_cal16;
				7'd40: Index_pos_r_n40 <= temp_cal16;
				7'd41: Index_pos_r_n41 <= temp_cal16;
				7'd42: Index_pos_r_n42 <= temp_cal16;
				7'd43: Index_pos_r_n43 <= temp_cal16;
				7'd44: Index_pos_r_n44 <= temp_cal16;
				7'd45: Index_pos_r_n45 <= temp_cal16;
				7'd46: Index_pos_r_n46 <= temp_cal16;
				7'd47: Index_pos_r_n47 <= temp_cal16;
				
				default: Index_pos_r_n0 <= 0;
			endcase
			case(Index17)
				7'd1: Index_pos_r_n1 <= temp_cal17;
				7'd2: Index_pos_r_n2 <= temp_cal17;
				7'd3: Index_pos_r_n3 <= temp_cal17;
				7'd4: Index_pos_r_n4 <= temp_cal17;
				7'd5: Index_pos_r_n5 <= temp_cal17;
				7'd6: Index_pos_r_n6 <= temp_cal17;
				7'd7: Index_pos_r_n7 <= temp_cal17;
				7'd8: Index_pos_r_n8 <= temp_cal17;
				7'd9: Index_pos_r_n9 <= temp_cal17;
				7'd10: Index_pos_r_n10 <= temp_cal17;
				7'd11: Index_pos_r_n11 <= temp_cal17;
				7'd12: Index_pos_r_n12 <= temp_cal17;
				7'd13: Index_pos_r_n13 <= temp_cal17;
				7'd14: Index_pos_r_n14 <= temp_cal17;
				7'd15: Index_pos_r_n15 <= temp_cal17;
				7'd16: Index_pos_r_n16 <= temp_cal17;
				7'd17: Index_pos_r_n17 <= temp_cal17;
				7'd18: Index_pos_r_n18 <= temp_cal17;
				7'd19: Index_pos_r_n19 <= temp_cal17;
				7'd20: Index_pos_r_n20 <= temp_cal17;
				7'd21: Index_pos_r_n21 <= temp_cal17;
				7'd22: Index_pos_r_n22 <= temp_cal17;
				7'd23: Index_pos_r_n23 <= temp_cal17;
				7'd24: Index_pos_r_n24 <= temp_cal17;
				7'd25: Index_pos_r_n25 <= temp_cal17;
				7'd26: Index_pos_r_n26 <= temp_cal17;
				7'd27: Index_pos_r_n27 <= temp_cal17;
				7'd28: Index_pos_r_n28 <= temp_cal17;
				7'd29: Index_pos_r_n29 <= temp_cal17;
				7'd30: Index_pos_r_n30 <= temp_cal17;
				7'd31: Index_pos_r_n31 <= temp_cal17;
				7'd32: Index_pos_r_n32 <= temp_cal17;
				7'd33: Index_pos_r_n33 <= temp_cal17;
				7'd34: Index_pos_r_n34 <= temp_cal17;
				7'd35: Index_pos_r_n35 <= temp_cal17;
				7'd36: Index_pos_r_n36 <= temp_cal17;
				7'd37: Index_pos_r_n37 <= temp_cal17;
				7'd38: Index_pos_r_n38 <= temp_cal17;
				7'd39: Index_pos_r_n39 <= temp_cal17;
				7'd40: Index_pos_r_n40 <= temp_cal17;
				7'd41: Index_pos_r_n41 <= temp_cal17;
				7'd42: Index_pos_r_n42 <= temp_cal17;
				7'd43: Index_pos_r_n43 <= temp_cal17;
				7'd44: Index_pos_r_n44 <= temp_cal17;
				7'd45: Index_pos_r_n45 <= temp_cal17;
				7'd46: Index_pos_r_n46 <= temp_cal17;
				7'd47: Index_pos_r_n47 <= temp_cal17;
				
				default: Index_pos_r_n0 <= 0;
			endcase
			case(Index18)
				7'd1: Index_pos_r_n1 <= temp_cal18;
				7'd2: Index_pos_r_n2 <= temp_cal18;
				7'd3: Index_pos_r_n3 <= temp_cal18;
				7'd4: Index_pos_r_n4 <= temp_cal18;
				7'd5: Index_pos_r_n5 <= temp_cal18;
				7'd6: Index_pos_r_n6 <= temp_cal18;
				7'd7: Index_pos_r_n7 <= temp_cal18;
				7'd8: Index_pos_r_n8 <= temp_cal18;
				7'd9: Index_pos_r_n9 <= temp_cal18;
				7'd10: Index_pos_r_n10 <= temp_cal18;
				7'd11: Index_pos_r_n11 <= temp_cal18;
				7'd12: Index_pos_r_n12 <= temp_cal18;
				7'd13: Index_pos_r_n13 <= temp_cal18;
				7'd14: Index_pos_r_n14 <= temp_cal18;
				7'd15: Index_pos_r_n15 <= temp_cal18;
				7'd16: Index_pos_r_n16 <= temp_cal18;
				7'd17: Index_pos_r_n17 <= temp_cal18;
				7'd18: Index_pos_r_n18 <= temp_cal18;
				7'd19: Index_pos_r_n19 <= temp_cal18;
				7'd20: Index_pos_r_n20 <= temp_cal18;
				7'd21: Index_pos_r_n21 <= temp_cal18;
				7'd22: Index_pos_r_n22 <= temp_cal18;
				7'd23: Index_pos_r_n23 <= temp_cal18;
				7'd24: Index_pos_r_n24 <= temp_cal18;
				7'd25: Index_pos_r_n25 <= temp_cal18;
				7'd26: Index_pos_r_n26 <= temp_cal18;
				7'd27: Index_pos_r_n27 <= temp_cal18;
				7'd28: Index_pos_r_n28 <= temp_cal18;
				7'd29: Index_pos_r_n29 <= temp_cal18;
				7'd30: Index_pos_r_n30 <= temp_cal18;
				7'd31: Index_pos_r_n31 <= temp_cal18;
				7'd32: Index_pos_r_n32 <= temp_cal18;
				7'd33: Index_pos_r_n33 <= temp_cal18;
				7'd34: Index_pos_r_n34 <= temp_cal18;
				7'd35: Index_pos_r_n35 <= temp_cal18;
				7'd36: Index_pos_r_n36 <= temp_cal18;
				7'd37: Index_pos_r_n37 <= temp_cal18;
				7'd38: Index_pos_r_n38 <= temp_cal18;
				7'd39: Index_pos_r_n39 <= temp_cal18;
				7'd40: Index_pos_r_n40 <= temp_cal18;
				7'd41: Index_pos_r_n41 <= temp_cal18;
				7'd42: Index_pos_r_n42 <= temp_cal18;
				7'd43: Index_pos_r_n43 <= temp_cal18;
				7'd44: Index_pos_r_n44 <= temp_cal18;
				7'd45: Index_pos_r_n45 <= temp_cal18;
				7'd46: Index_pos_r_n46 <= temp_cal18;
				7'd47: Index_pos_r_n47 <= temp_cal18;
				
				default: Index_pos_r_n0 <= 0;
			endcase
			case(Index19)
				7'd1: Index_pos_r_n1 <= temp_cal19;
				7'd2: Index_pos_r_n2 <= temp_cal19;
				7'd3: Index_pos_r_n3 <= temp_cal19;
				7'd4: Index_pos_r_n4 <= temp_cal19;
				7'd5: Index_pos_r_n5 <= temp_cal19;
				7'd6: Index_pos_r_n6 <= temp_cal19;
				7'd7: Index_pos_r_n7 <= temp_cal19;
				7'd8: Index_pos_r_n8 <= temp_cal19;
				7'd9: Index_pos_r_n9 <= temp_cal19;
				7'd10: Index_pos_r_n10 <= temp_cal19;
				7'd11: Index_pos_r_n11 <= temp_cal19;
				7'd12: Index_pos_r_n12 <= temp_cal19;
				7'd13: Index_pos_r_n13 <= temp_cal19;
				7'd14: Index_pos_r_n14 <= temp_cal19;
				7'd15: Index_pos_r_n15 <= temp_cal19;
				7'd16: Index_pos_r_n16 <= temp_cal19;
				7'd17: Index_pos_r_n17 <= temp_cal19;
				7'd18: Index_pos_r_n18 <= temp_cal19;
				7'd19: Index_pos_r_n19 <= temp_cal19;
				7'd20: Index_pos_r_n20 <= temp_cal19;
				7'd21: Index_pos_r_n21 <= temp_cal19;
				7'd22: Index_pos_r_n22 <= temp_cal19;
				7'd23: Index_pos_r_n23 <= temp_cal19;
				7'd24: Index_pos_r_n24 <= temp_cal19;
				7'd25: Index_pos_r_n25 <= temp_cal19;
				7'd26: Index_pos_r_n26 <= temp_cal19;
				7'd27: Index_pos_r_n27 <= temp_cal19;
				7'd28: Index_pos_r_n28 <= temp_cal19;
				7'd29: Index_pos_r_n29 <= temp_cal19;
				7'd30: Index_pos_r_n30 <= temp_cal19;
				7'd31: Index_pos_r_n31 <= temp_cal19;
				7'd32: Index_pos_r_n32 <= temp_cal19;
				7'd33: Index_pos_r_n33 <= temp_cal19;
				7'd34: Index_pos_r_n34 <= temp_cal19;
				7'd35: Index_pos_r_n35 <= temp_cal19;
				7'd36: Index_pos_r_n36 <= temp_cal19;
				7'd37: Index_pos_r_n37 <= temp_cal19;
				7'd38: Index_pos_r_n38 <= temp_cal19;
				7'd39: Index_pos_r_n39 <= temp_cal19;
				7'd40: Index_pos_r_n40 <= temp_cal19;
				7'd41: Index_pos_r_n41 <= temp_cal19;
				7'd42: Index_pos_r_n42 <= temp_cal19;
				7'd43: Index_pos_r_n43 <= temp_cal19;
				7'd44: Index_pos_r_n44 <= temp_cal19;
				7'd45: Index_pos_r_n45 <= temp_cal19;
				7'd46: Index_pos_r_n46 <= temp_cal19;
				7'd47: Index_pos_r_n47 <= temp_cal19;
				
				default: Index_pos_r_n0 <= 0;
			endcase
			case(Index20)
				7'd1: Index_pos_r_n1 <= temp_cal20;
				7'd2: Index_pos_r_n2 <= temp_cal20;
				7'd3: Index_pos_r_n3 <= temp_cal20;
				7'd4: Index_pos_r_n4 <= temp_cal20;
				7'd5: Index_pos_r_n5 <= temp_cal20;
				7'd6: Index_pos_r_n6 <= temp_cal20;
				7'd7: Index_pos_r_n7 <= temp_cal20;
				7'd8: Index_pos_r_n8 <= temp_cal20;
				7'd9: Index_pos_r_n9 <= temp_cal20;
				7'd10: Index_pos_r_n10 <= temp_cal20;
				7'd11: Index_pos_r_n11 <= temp_cal20;
				7'd12: Index_pos_r_n12 <= temp_cal20;
				7'd13: Index_pos_r_n13 <= temp_cal20;
				7'd14: Index_pos_r_n14 <= temp_cal20;
				7'd15: Index_pos_r_n15 <= temp_cal20;
				7'd16: Index_pos_r_n16 <= temp_cal20;
				7'd17: Index_pos_r_n17 <= temp_cal20;
				7'd18: Index_pos_r_n18 <= temp_cal20;
				7'd19: Index_pos_r_n19 <= temp_cal20;
				7'd20: Index_pos_r_n20 <= temp_cal20;
				7'd21: Index_pos_r_n21 <= temp_cal20;
				7'd22: Index_pos_r_n22 <= temp_cal20;
				7'd23: Index_pos_r_n23 <= temp_cal20;
				7'd24: Index_pos_r_n24 <= temp_cal20;
				7'd25: Index_pos_r_n25 <= temp_cal20;
				7'd26: Index_pos_r_n26 <= temp_cal20;
				7'd27: Index_pos_r_n27 <= temp_cal20;
				7'd28: Index_pos_r_n28 <= temp_cal20;
				7'd29: Index_pos_r_n29 <= temp_cal20;
				7'd30: Index_pos_r_n30 <= temp_cal20;
				7'd31: Index_pos_r_n31 <= temp_cal20;
				7'd32: Index_pos_r_n32 <= temp_cal20;
				7'd33: Index_pos_r_n33 <= temp_cal20;
				7'd34: Index_pos_r_n34 <= temp_cal20;
				7'd35: Index_pos_r_n35 <= temp_cal20;
				7'd36: Index_pos_r_n36 <= temp_cal20;
				7'd37: Index_pos_r_n37 <= temp_cal20;
				7'd38: Index_pos_r_n38 <= temp_cal20;
				7'd39: Index_pos_r_n39 <= temp_cal20;
				7'd40: Index_pos_r_n40 <= temp_cal20;
				7'd41: Index_pos_r_n41 <= temp_cal20;
				7'd42: Index_pos_r_n42 <= temp_cal20;
				7'd43: Index_pos_r_n43 <= temp_cal20;
				7'd44: Index_pos_r_n44 <= temp_cal20;
				7'd45: Index_pos_r_n45 <= temp_cal20;
				7'd46: Index_pos_r_n46 <= temp_cal20;
				7'd47: Index_pos_r_n47 <= temp_cal20;
				
				default: Index_pos_r_n0 <= 0;
			endcase
			
			//clock 4
			//get r_n
			//judge pos
			before_shift_r_n0 <= shift_measurements0 - {temp_cal0,1'b0};
			before_shift_r_n1 <= shift_measurements1 - Index_pos_r_n1 - temp_cal0;
			before_shift_r_n2 <= shift_measurements2 - Index_pos_r_n2 - temp_cal0;
			before_shift_r_n3 <= shift_measurements3 - Index_pos_r_n3 - temp_cal0;
			before_shift_r_n4 <= shift_measurements4 - Index_pos_r_n4 - temp_cal0;
			before_shift_r_n5 <= shift_measurements5 - Index_pos_r_n5 - temp_cal0;
			before_shift_r_n6 <= shift_measurements6 - Index_pos_r_n6 - temp_cal0;
			before_shift_r_n7 <= shift_measurements7 - Index_pos_r_n7 - temp_cal0;
			before_shift_r_n8 <= shift_measurements8 - Index_pos_r_n8 - temp_cal0;
			before_shift_r_n9 <= shift_measurements9 - Index_pos_r_n9 - temp_cal0;
			
			before_shift_r_n10 <= shift_measurements10 - Index_pos_r_n10 - temp_cal0;
			before_shift_r_n11 <= shift_measurements11 - Index_pos_r_n11 - temp_cal0;
			before_shift_r_n12 <= shift_measurements12 - Index_pos_r_n12 - temp_cal0;
			before_shift_r_n13 <= shift_measurements13 - Index_pos_r_n13 - temp_cal0;
			before_shift_r_n14 <= shift_measurements14 - Index_pos_r_n14 - temp_cal0;
			before_shift_r_n15 <= shift_measurements15 - Index_pos_r_n15 - temp_cal0;
			
			if(measurement_num == 32 || measurement_num == 48) begin
				
				before_shift_r_n16 <= shift_measurements16 - Index_pos_r_n16 - temp_cal0;
				before_shift_r_n17 <= shift_measurements17 - Index_pos_r_n17 - temp_cal0;
				before_shift_r_n18 <= shift_measurements18 - Index_pos_r_n18 - temp_cal0;
				before_shift_r_n19 <= shift_measurements19 - Index_pos_r_n19 - temp_cal0;
				
				before_shift_r_n20 <= shift_measurements20 - Index_pos_r_n20 - temp_cal0;
				before_shift_r_n21 <= shift_measurements21 - Index_pos_r_n21 - temp_cal0;
				before_shift_r_n22 <= shift_measurements22 - Index_pos_r_n22 - temp_cal0;
				before_shift_r_n23 <= shift_measurements23 - Index_pos_r_n23 - temp_cal0;
				before_shift_r_n24 <= shift_measurements24 - Index_pos_r_n24 - temp_cal0;
				before_shift_r_n25 <= shift_measurements25 - Index_pos_r_n25 - temp_cal0;
				before_shift_r_n26 <= shift_measurements26 - Index_pos_r_n26 - temp_cal0;
				before_shift_r_n27 <= shift_measurements27 - Index_pos_r_n27 - temp_cal0;
				before_shift_r_n28 <= shift_measurements28 - Index_pos_r_n28 - temp_cal0;
				before_shift_r_n29 <= shift_measurements29 - Index_pos_r_n29 - temp_cal0;
				
				before_shift_r_n30 <= shift_measurements30 - Index_pos_r_n30 - temp_cal0;
				before_shift_r_n31 <= shift_measurements31 - Index_pos_r_n31 - temp_cal0;
			
			end
			else begin 
			end
			if(measurement_num == 48) begin
				before_shift_r_n32 <= shift_measurements32 - Index_pos_r_n32 - temp_cal0;
				before_shift_r_n33 <= shift_measurements33 - Index_pos_r_n33 - temp_cal0;
				before_shift_r_n34 <= shift_measurements34 - Index_pos_r_n34 - temp_cal0;
				before_shift_r_n35 <= shift_measurements35 - Index_pos_r_n35 - temp_cal0;
				before_shift_r_n36 <= shift_measurements36 - Index_pos_r_n36 - temp_cal0;
				before_shift_r_n37 <= shift_measurements37 - Index_pos_r_n37 - temp_cal0;
				before_shift_r_n38 <= shift_measurements38 - Index_pos_r_n38 - temp_cal0;
				before_shift_r_n39 <= shift_measurements39 - Index_pos_r_n39 - temp_cal0;
					
				before_shift_r_n40 <= shift_measurements40 - Index_pos_r_n40 - temp_cal0;
				before_shift_r_n41 <= shift_measurements41 - Index_pos_r_n41 - temp_cal0;
				before_shift_r_n42 <= shift_measurements42 - Index_pos_r_n42 - temp_cal0;
				before_shift_r_n43 <= shift_measurements43 - Index_pos_r_n43 - temp_cal0;
				before_shift_r_n44 <= shift_measurements44 - Index_pos_r_n44 - temp_cal0;
				before_shift_r_n45 <= shift_measurements45 - Index_pos_r_n45 - temp_cal0;
				before_shift_r_n46 <= shift_measurements46 - Index_pos_r_n46 - temp_cal0;
				before_shift_r_n47 <= shift_measurements47 - Index_pos_r_n47 - temp_cal0;
			end
			else begin
			end

			//clock 5
			//shift r_n  fix_point
			if(times == 4) begin
				
				if(before_shift_r_n0[36] == 1) begin
					r_n0[25:0] <= before_shift_r_n0[36:11] + 1;
				end
				else begin
					r_n0[25:0] <= before_shift_r_n0[36:11];
				end
				if(before_shift_r_n1[36] == 1) begin
					r_n1[25:0] <= before_shift_r_n1[36:11] + 1;
				end
				else begin
					r_n1[25:0] <= before_shift_r_n1[36:11];
				end
				if(before_shift_r_n2[36] == 1) begin
					r_n2[25:0] <= before_shift_r_n2[36:11] + 1;
				end
				else begin
					r_n2[25:0] <= before_shift_r_n2[36:11];
				end
				if(before_shift_r_n3[36] == 1) begin
					r_n3[25:0] <= before_shift_r_n3[36:11] + 1;
				end
				else begin
					r_n3[25:0] <= before_shift_r_n3[36:11];
				end
				if(before_shift_r_n4[36] == 1) begin
					r_n4[25:0] <= before_shift_r_n4[36:11] + 1;
				end
				else begin
					r_n4[25:0] <= before_shift_r_n4[36:11];
				end
				if(before_shift_r_n5[36] == 1) begin
					r_n5[25:0] <= before_shift_r_n5[36:11] + 1;
				end
				else begin
					r_n5[25:0] <= before_shift_r_n5[36:11];
				end
				if(before_shift_r_n6[36] == 1) begin
					r_n6[25:0] <= before_shift_r_n6[36:11] + 1;
				end
				else begin
					r_n6[25:0] <= before_shift_r_n6[36:11];
				end
				if(before_shift_r_n7[36] == 1) begin
					r_n7[25:0] <= before_shift_r_n7[36:11] + 1;
				end
				else begin
					r_n7[25:0] <= before_shift_r_n7[36:11];
				end
				if(before_shift_r_n8[36] == 1) begin
					r_n8[25:0] <= before_shift_r_n8[36:11] + 1;
				end
				else begin
					r_n8[25:0] <= before_shift_r_n8[36:11];
				end
				if(before_shift_r_n9[36] == 1) begin
					r_n9[25:0] <= before_shift_r_n9[36:11] + 1;
				end
				else begin
					r_n9[25:0] <= before_shift_r_n9[36:11];
				end
				
				if(before_shift_r_n10[36] == 1) begin
					r_n10[25:0] <= before_shift_r_n10[36:11] + 1;
				end
				else begin
					r_n10[25:0] <= before_shift_r_n10[36:11];
				end
				if(before_shift_r_n11[36] == 1) begin
					r_n11[25:0] <= before_shift_r_n11[36:11] + 1;
				end
				else begin
					r_n11[25:0] <= before_shift_r_n11[36:11];
				end
				if(before_shift_r_n12[36] == 1) begin
					r_n12[25:0] <= before_shift_r_n12[36:11] + 1;
				end
				else begin
					r_n12[25:0] <= before_shift_r_n12[36:11];
				end
				if(before_shift_r_n13[36] == 1) begin
					r_n13[25:0] <= before_shift_r_n13[36:11] + 1;
				end
				else begin
					r_n13[25:0] <= before_shift_r_n13[36:11];
				end
				if(before_shift_r_n14[36] == 1) begin
					r_n14[25:0] <= before_shift_r_n14[36:11] + 1;
				end
				else begin
					r_n14[25:0] <= before_shift_r_n14[36:11];
				end
				if(before_shift_r_n15[36] == 1) begin
					r_n15[25:0] <= before_shift_r_n15[36:11] + 1;
				end
				else begin
					r_n15[25:0] <= before_shift_r_n15[36:11];
				end
				if(before_shift_r_n16[36] == 1) begin
					r_n16[25:0] <= before_shift_r_n16[36:11] + 1;
				end
				else begin
					r_n16[25:0] <= before_shift_r_n16[36:11];
				end
				if(before_shift_r_n17[36] == 1) begin
					r_n17[25:0] <= before_shift_r_n17[36:11] + 1;
				end
				else begin
					r_n17[25:0] <= before_shift_r_n17[36:11];
				end
				if(before_shift_r_n18[36] == 1) begin
					r_n18[25:0] <= before_shift_r_n18[36:11] + 1;
				end
				else begin
					r_n18[25:0] <= before_shift_r_n18[36:11];
				end
				if(before_shift_r_n19[36] == 1) begin
					r_n19[25:0] <= before_shift_r_n19[36:11] + 1;
				end
				else begin
					r_n19[25:0] <= before_shift_r_n19[36:11];
				end
				
				if(before_shift_r_n20[36] == 1) begin
					r_n20[25:0] <= before_shift_r_n20[36:11] + 1;
				end
				else begin
					r_n20[25:0] <= before_shift_r_n20[36:11];
				end
				if(before_shift_r_n21[36] == 1) begin
					r_n21[25:0] <= before_shift_r_n21[36:11] + 1;
				end
				else begin
					r_n21[25:0] <= before_shift_r_n21[36:11];
				end
				if(before_shift_r_n22[36] == 1) begin
					r_n22[25:0] <= before_shift_r_n22[36:11] + 1;
				end
				else begin
					r_n22[25:0] <= before_shift_r_n22[36:11];
				end
				if(before_shift_r_n23[36] == 1) begin
					r_n23[25:0] <= before_shift_r_n23[36:11] + 1;
				end
				else begin
					r_n23[25:0] <= before_shift_r_n23[36:11];
				end
				if(before_shift_r_n24[36] == 1) begin
					r_n24[25:0] <= before_shift_r_n24[36:11] + 1;
				end
				else begin
					r_n24[25:0] <= before_shift_r_n24[36:11];
				end
				if(before_shift_r_n25[36] == 1) begin
					r_n25[25:0] <= before_shift_r_n25[36:11] + 1;
				end
				else begin
					r_n25[25:0] <= before_shift_r_n25[36:11];
				end
				if(before_shift_r_n26[36] == 1) begin
					r_n26[25:0] <= before_shift_r_n26[36:11] + 1;
				end
				else begin
					r_n26[25:0] <= before_shift_r_n26[36:11];
				end
				if(before_shift_r_n27[36] == 1) begin
					r_n27[25:0] <= before_shift_r_n27[36:11] + 1;
				end
				else begin
					r_n27[25:0] <= before_shift_r_n27[36:11];
				end
				if(before_shift_r_n28[36] == 1) begin
					r_n28[25:0] <= before_shift_r_n28[36:11] + 1;
				end
				else begin
					r_n28[25:0] <= before_shift_r_n28[36:11];
				end
				if(before_shift_r_n29[36] == 1) begin
					r_n29[25:0] <= before_shift_r_n29[36:11] + 1;
				end
				else begin
					r_n29[25:0] <= before_shift_r_n29[36:11];
				end
				
				if(before_shift_r_n30[36] == 1) begin
					r_n30[25:0] <= before_shift_r_n30[36:11] + 1;
				end
				else begin
					r_n30[25:0] <= before_shift_r_n30[36:11];
				end
				if(before_shift_r_n31[36] == 1) begin
					r_n31[25:0] <= before_shift_r_n31[36:11] + 1;
				end
				else begin
					r_n31[25:0] <= before_shift_r_n31[36:11];
				end
				if(before_shift_r_n32[36] == 1) begin
					r_n32[25:0] <= before_shift_r_n32[36:11] + 1;
				end
				else begin
					r_n32[25:0] <= before_shift_r_n32[36:11];
				end
				if(before_shift_r_n33[36] == 1) begin
					r_n33[25:0] <= before_shift_r_n33[36:11] + 1;
				end
				else begin
					r_n33[25:0] <= before_shift_r_n33[36:11];
				end
				if(before_shift_r_n34[36] == 1) begin
					r_n34[25:0] <= before_shift_r_n34[36:11] + 1;
				end
				else begin
					r_n34[25:0] <= before_shift_r_n34[36:11];
				end
				if(before_shift_r_n35[36] == 1) begin
					r_n35[25:0] <= before_shift_r_n35[36:11] + 1;
				end
				else begin
					r_n35[25:0] <= before_shift_r_n35[36:11];
				end
				if(before_shift_r_n36[36] == 1) begin
					r_n36[25:0] <= before_shift_r_n36[36:11] + 1;
				end
				else begin
					r_n36[25:0] <= before_shift_r_n36[36:11];
				end
				if(before_shift_r_n37[36] == 1) begin
					r_n37[25:0] <= before_shift_r_n37[36:11] + 1;
				end
				else begin
					r_n37[25:0] <= before_shift_r_n37[36:11];
				end
				if(before_shift_r_n38[36] == 1) begin
					r_n38[25:0] <= before_shift_r_n38[36:11] + 1;
				end
				else begin
					r_n38[25:0] <= before_shift_r_n38[36:11];
				end
				if(before_shift_r_n39[36] == 1) begin
					r_n39[25:0] <= before_shift_r_n39[36:11] + 1;
				end
				else begin
					r_n39[25:0] <= before_shift_r_n39[36:11];
				end
				
				if(before_shift_r_n40[36] == 1) begin
					r_n40[25:0] <= before_shift_r_n40[36:11] + 1;
				end
				else begin
					r_n40[25:0] <= before_shift_r_n40[36:11];
				end
				if(before_shift_r_n41[36] == 1) begin
					r_n41[25:0] <= before_shift_r_n41[36:11] + 1;
				end
				else begin
					r_n41[25:0] <= before_shift_r_n41[36:11];
				end
				if(before_shift_r_n42[36] == 1) begin
					r_n42[25:0] <= before_shift_r_n42[36:11] + 1;
				end
				else begin
					r_n42[25:0] <= before_shift_r_n42[36:11];
				end
				if(before_shift_r_n43[36] == 1) begin
					r_n43[25:0] <= before_shift_r_n43[36:11] + 1;
				end
				else begin
					r_n43[25:0] <= before_shift_r_n43[36:11];
				end
				if(before_shift_r_n44[36] == 1) begin
					r_n44[25:0] <= before_shift_r_n44[36:11] + 1;
				end
				else begin
					r_n44[25:0] <= before_shift_r_n44[36:11];
				end
				if(before_shift_r_n45[36] == 1) begin
					r_n45[25:0] <= before_shift_r_n45[36:11] + 1;
				end
				else begin
					r_n45[25:0] <= before_shift_r_n45[36:11];
				end
				if(before_shift_r_n46[36] == 1) begin
					r_n46[25:0] <= before_shift_r_n46[36:11] + 1;
				end
				else begin
					r_n46[25:0] <= before_shift_r_n46[36:11];
				end
				if(before_shift_r_n47[36] == 1) begin
					r_n47[25:0] <= before_shift_r_n47[36:11] + 1;
				end
				else begin
					r_n47[25:0] <= before_shift_r_n47[36:11];
				end
				
			end
			else begin
			end
			
			//clock 6
			if(times == 5) begin
			
				if(//all zeros
				(r_n0  == 0 && r_n1  == 0 && r_n2  == 0 && r_n3  == 0 && r_n4  == 0 && r_n5  == 0 && 
					r_n6  == 0 && r_n7  == 0 && r_n8  == 0 && r_n9  == 0 && r_n10  == 0 && r_n11  == 0 && 
					r_n12  == 0 && r_n13  == 0 && r_n14  == 0 && r_n15  == 0 && r_n16  == 0 && r_n17  == 0 
					&& r_n18  == 0 && r_n19  == 0 && r_n20  == 0 && r_n21  == 0 && 
					r_n22  == 0 && r_n23  == 0 && r_n24  == 0 && r_n25  == 0 && r_n26  == 0 && r_n27  == 0 
					&& r_n28  == 0 && r_n29  == 0 && r_n30  == 0 && r_n31  == 0 && 
					r_n32  == 0 && r_n33  == 0 && r_n34  == 0 && r_n35  == 0 && r_n36  == 0 && r_n37  == 0 
					&& r_n38  == 0 && r_n39  == 0 && r_n40  == 0 && r_n41  == 0 && 
					r_n42  == 0 && r_n43  == 0 && r_n44  == 0 && r_n45  == 0 && r_n46  == 0 && r_n47  == 0)
					//last iter of SR = 0.25
					||(measurement_num == 16 && iterIndex == 8)
					//last iter of SR = 0.5
					||(measurement_num == 32 && iterIndex == 14)
					//last iter of SR = 0.75
					||(measurement_num == 48 && iterIndex == 21)) begin
					
					ifResidualZero <= 1;
					
					//output set to zeros-----delete test
					r_n0 <= 0;
					r_n1 <= 0;
					r_n2 <= 0;
					r_n3 <= 0;
					r_n4 <= 0;
					r_n5 <= 0;
					r_n6 <= 0;
					r_n7 <= 0;
					r_n8 <= 0;
					r_n9 <= 0;
					
					r_n10 <= 0;
					r_n11 <= 0;
					r_n12 <= 0;
					r_n13 <= 0;
					r_n14 <= 0;
					r_n15 <= 0;
					r_n16 <= 0;
					r_n17 <= 0;
					r_n18 <= 0;
					r_n19 <= 0;
					
					r_n20 <= 0;
					r_n21 <= 0;
					r_n22 <= 0;
					r_n23 <= 0;
					r_n24 <= 0;
					r_n25 <= 0;
					r_n26 <= 0;
					r_n27 <= 0;
					r_n28 <= 0;
					r_n29 <= 0;
					
					r_n30 <= 0;
					r_n31 <= 0;
					r_n32 <= 0;
					r_n33 <= 0;
					r_n34 <= 0;
					r_n35 <= 0;
					r_n36 <= 0;
					r_n37 <= 0;
					r_n38 <= 0;
					r_n39 <= 0;
					
					r_n40 <= 0;
					r_n41 <= 0;
					r_n42 <= 0;
					r_n43 <= 0;
					r_n44 <= 0;
					r_n45 <= 0;
					r_n46 <= 0;
					r_n47 <= 0;
						
				end
				else begin
					finish_flag <= 1;
				end
			end
			else begin
			end
			
			//clock 7
			if(ifResidualZero == 1 && times == 6) begin
				
				if(temp_cal0[31] == 1) begin
					r_n0[25:0] <= temp_cal0[31:6] + 1;
				end
				else begin
					r_n0[25:0] <= temp_cal0[31:6];
				end
				
				if(temp_cal1[31] == 1) begin
					case(Index1)
						7'd1: r_n1[25:0] <= temp_cal1[31:6] + 1;
						7'd2: r_n2[25:0] <= temp_cal1[31:6] + 1;
						7'd3: r_n3[25:0] <= temp_cal1[31:6] + 1;
						7'd4: r_n4[25:0] <= temp_cal1[31:6] + 1;
						7'd5: r_n5[25:0] <= temp_cal1[31:6] + 1;
						7'd6: r_n6[25:0] <= temp_cal1[31:6] + 1;
						7'd7: r_n7[25:0] <= temp_cal1[31:6] + 1;
						7'd8: r_n8[25:0] <= temp_cal1[31:6] + 1;
						7'd9: r_n9[25:0] <= temp_cal1[31:6] + 1;
						7'd10: r_n10[25:0] <= temp_cal1[31:6] + 1;
						7'd11: r_n11[25:0] <= temp_cal1[31:6] + 1;
						7'd12: r_n12[25:0] <= temp_cal1[31:6] + 1;
						7'd13: r_n13[25:0] <= temp_cal1[31:6] + 1;
						7'd14: r_n14[25:0] <= temp_cal1[31:6] + 1;
						7'd15: r_n15[25:0] <= temp_cal1[31:6] + 1;
						7'd16: r_n16[25:0] <= temp_cal1[31:6] + 1;
						7'd17: r_n17[25:0] <= temp_cal1[31:6] + 1;
						7'd18: r_n18[25:0] <= temp_cal1[31:6] + 1;
						7'd19: r_n19[25:0] <= temp_cal1[31:6] + 1;
						7'd20: r_n20[25:0] <= temp_cal1[31:6] + 1;
						7'd21: r_n21[25:0] <= temp_cal1[31:6] + 1;
						7'd22: r_n22[25:0] <= temp_cal1[31:6] + 1;
						7'd23: r_n23[25:0] <= temp_cal1[31:6] + 1;
						7'd24: r_n24[25:0] <= temp_cal1[31:6] + 1;
						7'd25: r_n25[25:0] <= temp_cal1[31:6] + 1;
						7'd26: r_n26[25:0] <= temp_cal1[31:6] + 1;
						7'd27: r_n27[25:0] <= temp_cal1[31:6] + 1;
						7'd28: r_n28[25:0] <= temp_cal1[31:6] + 1;
						7'd29: r_n29[25:0] <= temp_cal1[31:6] + 1;
						7'd30: r_n30[25:0] <= temp_cal1[31:6] + 1;
						7'd31: r_n31[25:0] <= temp_cal1[31:6] + 1;
						7'd32: r_n32[25:0] <= temp_cal1[31:6] + 1;
						7'd33: r_n33[25:0] <= temp_cal1[31:6] + 1;
						7'd34: r_n34[25:0] <= temp_cal1[31:6] + 1;
						7'd35: r_n35[25:0] <= temp_cal1[31:6] + 1;
						7'd36: r_n36[25:0] <= temp_cal1[31:6] + 1;
						7'd37: r_n37[25:0] <= temp_cal1[31:6] + 1;
						7'd38: r_n38[25:0] <= temp_cal1[31:6] + 1;
						7'd39: r_n39[25:0] <= temp_cal1[31:6] + 1;
						7'd40: r_n40[25:0] <= temp_cal1[31:6] + 1;
						7'd41: r_n41[25:0] <= temp_cal1[31:6] + 1;
						7'd42: r_n42[25:0] <= temp_cal1[31:6] + 1;
						7'd43: r_n43[25:0] <= temp_cal1[31:6] + 1;
						7'd44: r_n44[25:0] <= temp_cal1[31:6] + 1;
						7'd45: r_n45[25:0] <= temp_cal1[31:6] + 1;
						7'd46: r_n46[25:0] <= temp_cal1[31:6] + 1;
						7'd47: r_n47[25:0] <= temp_cal1[31:6] + 1;
						
						default: Index_pos_r_n0 <= 0;
					endcase 
				end
				else begin
					case(Index1)
						7'd1: r_n1[25:0] <= temp_cal1[31:6];
						7'd2: r_n2[25:0] <= temp_cal1[31:6];
						7'd3: r_n3[25:0] <= temp_cal1[31:6];
						7'd4: r_n4[25:0] <= temp_cal1[31:6];
						7'd5: r_n5[25:0] <= temp_cal1[31:6];
						7'd6: r_n6[25:0] <= temp_cal1[31:6];
						7'd7: r_n7[25:0] <= temp_cal1[31:6];
						7'd8: r_n8[25:0] <= temp_cal1[31:6];
						7'd9: r_n9[25:0] <= temp_cal1[31:6];
						7'd10: r_n10[25:0] <= temp_cal1[31:6];
						7'd11: r_n11[25:0] <= temp_cal1[31:6];
						7'd12: r_n12[25:0] <= temp_cal1[31:6];
						7'd13: r_n13[25:0] <= temp_cal1[31:6];
						7'd14: r_n14[25:0] <= temp_cal1[31:6];
						7'd15: r_n15[25:0] <= temp_cal1[31:6];
						7'd16: r_n16[25:0] <= temp_cal1[31:6];
						7'd17: r_n17[25:0] <= temp_cal1[31:6];
						7'd18: r_n18[25:0] <= temp_cal1[31:6];
						7'd19: r_n19[25:0] <= temp_cal1[31:6];
						7'd20: r_n20[25:0] <= temp_cal1[31:6];
						7'd21: r_n21[25:0] <= temp_cal1[31:6];
						7'd22: r_n22[25:0] <= temp_cal1[31:6];
						7'd23: r_n23[25:0] <= temp_cal1[31:6];
						7'd24: r_n24[25:0] <= temp_cal1[31:6];
						7'd25: r_n25[25:0] <= temp_cal1[31:6];
						7'd26: r_n26[25:0] <= temp_cal1[31:6];
						7'd27: r_n27[25:0] <= temp_cal1[31:6];
						7'd28: r_n28[25:0] <= temp_cal1[31:6];
						7'd29: r_n29[25:0] <= temp_cal1[31:6];
						7'd30: r_n30[25:0] <= temp_cal1[31:6];
						7'd31: r_n31[25:0] <= temp_cal1[31:6];
						7'd32: r_n32[25:0] <= temp_cal1[31:6];
						7'd33: r_n33[25:0] <= temp_cal1[31:6];
						7'd34: r_n34[25:0] <= temp_cal1[31:6];
						7'd35: r_n35[25:0] <= temp_cal1[31:6];
						7'd36: r_n36[25:0] <= temp_cal1[31:6];
						7'd37: r_n37[25:0] <= temp_cal1[31:6];
						7'd38: r_n38[25:0] <= temp_cal1[31:6];
						7'd39: r_n39[25:0] <= temp_cal1[31:6];
						7'd40: r_n40[25:0] <= temp_cal1[31:6];
						7'd41: r_n41[25:0] <= temp_cal1[31:6];
						7'd42: r_n42[25:0] <= temp_cal1[31:6];
						7'd43: r_n43[25:0] <= temp_cal1[31:6];
						7'd44: r_n44[25:0] <= temp_cal1[31:6];
						7'd45: r_n45[25:0] <= temp_cal1[31:6];
						7'd46: r_n46[25:0] <= temp_cal1[31:6];
						7'd47: r_n47[25:0] <= temp_cal1[31:6];
						
						default: Index_pos_r_n0 <= 0;
					endcase 
				end
				
				if(temp_cal2[31] == 1) begin
					case(Index2)
						7'd1: r_n1[25:0] <= temp_cal2[31:6] + 1;
						7'd2: r_n2[25:0] <= temp_cal2[31:6] + 1;
						7'd3: r_n3[25:0] <= temp_cal2[31:6] + 1;
						7'd4: r_n4[25:0] <= temp_cal2[31:6] + 1;
						7'd5: r_n5[25:0] <= temp_cal2[31:6] + 1;
						7'd6: r_n6[25:0] <= temp_cal2[31:6] + 1;
						7'd7: r_n7[25:0] <= temp_cal2[31:6] + 1;
						7'd8: r_n8[25:0] <= temp_cal2[31:6] + 1;
						7'd9: r_n9[25:0] <= temp_cal2[31:6] + 1;
						7'd10: r_n10[25:0] <= temp_cal2[31:6] + 1;
						7'd11: r_n11[25:0] <= temp_cal2[31:6] + 1;
						7'd12: r_n12[25:0] <= temp_cal2[31:6] + 1;
						7'd13: r_n13[25:0] <= temp_cal2[31:6] + 1;
						7'd14: r_n14[25:0] <= temp_cal2[31:6] + 1;
						7'd15: r_n15[25:0] <= temp_cal2[31:6] + 1;
						7'd16: r_n16[25:0] <= temp_cal2[31:6] + 1;
						7'd17: r_n17[25:0] <= temp_cal2[31:6] + 1;
						7'd18: r_n18[25:0] <= temp_cal2[31:6] + 1;
						7'd19: r_n19[25:0] <= temp_cal2[31:6] + 1;
						7'd20: r_n20[25:0] <= temp_cal2[31:6] + 1;
						7'd21: r_n21[25:0] <= temp_cal2[31:6] + 1;
						7'd22: r_n22[25:0] <= temp_cal2[31:6] + 1;
						7'd23: r_n23[25:0] <= temp_cal2[31:6] + 1;
						7'd24: r_n24[25:0] <= temp_cal2[31:6] + 1;
						7'd25: r_n25[25:0] <= temp_cal2[31:6] + 1;
						7'd26: r_n26[25:0] <= temp_cal2[31:6] + 1;
						7'd27: r_n27[25:0] <= temp_cal2[31:6] + 1;
						7'd28: r_n28[25:0] <= temp_cal2[31:6] + 1;
						7'd29: r_n29[25:0] <= temp_cal2[31:6] + 1;
						7'd30: r_n30[25:0] <= temp_cal2[31:6] + 1;
						7'd31: r_n31[25:0] <= temp_cal2[31:6] + 1;
						7'd32: r_n32[25:0] <= temp_cal2[31:6] + 1;
						7'd33: r_n33[25:0] <= temp_cal2[31:6] + 1;
						7'd34: r_n34[25:0] <= temp_cal2[31:6] + 1;
						7'd35: r_n35[25:0] <= temp_cal2[31:6] + 1;
						7'd36: r_n36[25:0] <= temp_cal2[31:6] + 1;
						7'd37: r_n37[25:0] <= temp_cal2[31:6] + 1;
						7'd38: r_n38[25:0] <= temp_cal2[31:6] + 1;
						7'd39: r_n39[25:0] <= temp_cal2[31:6] + 1;
						7'd40: r_n40[25:0] <= temp_cal2[31:6] + 1;
						7'd41: r_n41[25:0] <= temp_cal2[31:6] + 1;
						7'd42: r_n42[25:0] <= temp_cal2[31:6] + 1;
						7'd43: r_n43[25:0] <= temp_cal2[31:6] + 1;
						7'd44: r_n44[25:0] <= temp_cal2[31:6] + 1;
						7'd45: r_n45[25:0] <= temp_cal2[31:6] + 1;
						7'd46: r_n46[25:0] <= temp_cal2[31:6] + 1;
						7'd47: r_n47[25:0] <= temp_cal2[31:6] + 1;
						
						default: Index_pos_r_n0 <= 0;
					endcase
				end
				else begin
					case(Index2)
						7'd1: r_n1[25:0] <= temp_cal2[31:6];
						7'd2: r_n2[25:0] <= temp_cal2[31:6];
						7'd3: r_n3[25:0] <= temp_cal2[31:6];
						7'd4: r_n4[25:0] <= temp_cal2[31:6];
						7'd5: r_n5[25:0] <= temp_cal2[31:6];
						7'd6: r_n6[25:0] <= temp_cal2[31:6];
						7'd7: r_n7[25:0] <= temp_cal2[31:6];
						7'd8: r_n8[25:0] <= temp_cal2[31:6];
						7'd9: r_n9[25:0] <= temp_cal2[31:6];
						7'd10: r_n10[25:0] <= temp_cal2[31:6];
						7'd11: r_n11[25:0] <= temp_cal2[31:6];
						7'd12: r_n12[25:0] <= temp_cal2[31:6];
						7'd13: r_n13[25:0] <= temp_cal2[31:6];
						7'd14: r_n14[25:0] <= temp_cal2[31:6];
						7'd15: r_n15[25:0] <= temp_cal2[31:6];
						7'd16: r_n16[25:0] <= temp_cal2[31:6];
						7'd17: r_n17[25:0] <= temp_cal2[31:6];
						7'd18: r_n18[25:0] <= temp_cal2[31:6];
						7'd19: r_n19[25:0] <= temp_cal2[31:6];
						7'd20: r_n20[25:0] <= temp_cal2[31:6];
						7'd21: r_n21[25:0] <= temp_cal2[31:6];
						7'd22: r_n22[25:0] <= temp_cal2[31:6];
						7'd23: r_n23[25:0] <= temp_cal2[31:6];
						7'd24: r_n24[25:0] <= temp_cal2[31:6];
						7'd25: r_n25[25:0] <= temp_cal2[31:6];
						7'd26: r_n26[25:0] <= temp_cal2[31:6];
						7'd27: r_n27[25:0] <= temp_cal2[31:6];
						7'd28: r_n28[25:0] <= temp_cal2[31:6];
						7'd29: r_n29[25:0] <= temp_cal2[31:6];
						7'd30: r_n30[25:0] <= temp_cal2[31:6];
						7'd31: r_n31[25:0] <= temp_cal2[31:6];
						7'd32: r_n32[25:0] <= temp_cal2[31:6];
						7'd33: r_n33[25:0] <= temp_cal2[31:6];
						7'd34: r_n34[25:0] <= temp_cal2[31:6];
						7'd35: r_n35[25:0] <= temp_cal2[31:6];
						7'd36: r_n36[25:0] <= temp_cal2[31:6];
						7'd37: r_n37[25:0] <= temp_cal2[31:6];
						7'd38: r_n38[25:0] <= temp_cal2[31:6];
						7'd39: r_n39[25:0] <= temp_cal2[31:6];
						7'd40: r_n40[25:0] <= temp_cal2[31:6];
						7'd41: r_n41[25:0] <= temp_cal2[31:6];
						7'd42: r_n42[25:0] <= temp_cal2[31:6];
						7'd43: r_n43[25:0] <= temp_cal2[31:6];
						7'd44: r_n44[25:0] <= temp_cal2[31:6];
						7'd45: r_n45[25:0] <= temp_cal2[31:6];
						7'd46: r_n46[25:0] <= temp_cal2[31:6];
						7'd47: r_n47[25:0] <= temp_cal2[31:6];
						
						default: Index_pos_r_n0 <= 0;
					endcase
				end
				
				if(temp_cal3[31] == 1)begin
					case(Index3)
						7'd1: r_n1[25:0] <= temp_cal3[31:6] + 1;
						7'd2: r_n2[25:0] <= temp_cal3[31:6] + 1;
						7'd3: r_n3[25:0] <= temp_cal3[31:6] + 1;
						7'd4: r_n4[25:0] <= temp_cal3[31:6] + 1;
						7'd5: r_n5[25:0] <= temp_cal3[31:6] + 1;
						7'd6: r_n6[25:0] <= temp_cal3[31:6] + 1;
						7'd7: r_n7[25:0] <= temp_cal3[31:6] + 1;
						7'd8: r_n8[25:0] <= temp_cal3[31:6] + 1;
						7'd9: r_n9[25:0] <= temp_cal3[31:6] + 1;
						7'd10: r_n10[25:0] <= temp_cal3[31:6] + 1;
						7'd11: r_n11[25:0] <= temp_cal3[31:6] + 1;
						7'd12: r_n12[25:0] <= temp_cal3[31:6] + 1;
						7'd13: r_n13[25:0] <= temp_cal3[31:6] + 1;
						7'd14: r_n14[25:0] <= temp_cal3[31:6] + 1;
						7'd15: r_n15[25:0] <= temp_cal3[31:6] + 1;
						7'd16: r_n16[25:0] <= temp_cal3[31:6] + 1;
						7'd17: r_n17[25:0] <= temp_cal3[31:6] + 1;
						7'd18: r_n18[25:0] <= temp_cal3[31:6] + 1;
						7'd19: r_n19[25:0] <= temp_cal3[31:6] + 1;
						7'd20: r_n20[25:0] <= temp_cal3[31:6] + 1;
						7'd21: r_n21[25:0] <= temp_cal3[31:6] + 1;
						7'd22: r_n22[25:0] <= temp_cal3[31:6] + 1;
						7'd23: r_n23[25:0] <= temp_cal3[31:6] + 1;
						7'd24: r_n24[25:0] <= temp_cal3[31:6] + 1;
						7'd25: r_n25[25:0] <= temp_cal3[31:6] + 1;
						7'd26: r_n26[25:0] <= temp_cal3[31:6] + 1;
						7'd27: r_n27[25:0] <= temp_cal3[31:6] + 1;
						7'd28: r_n28[25:0] <= temp_cal3[31:6] + 1;
						7'd29: r_n29[25:0] <= temp_cal3[31:6] + 1;
						7'd30: r_n30[25:0] <= temp_cal3[31:6] + 1;
						7'd31: r_n31[25:0] <= temp_cal3[31:6] + 1;
						7'd32: r_n32[25:0] <= temp_cal3[31:6] + 1;
						7'd33: r_n33[25:0] <= temp_cal3[31:6] + 1;
						7'd34: r_n34[25:0] <= temp_cal3[31:6] + 1;
						7'd35: r_n35[25:0] <= temp_cal3[31:6] + 1;
						7'd36: r_n36[25:0] <= temp_cal3[31:6] + 1;
						7'd37: r_n37[25:0] <= temp_cal3[31:6] + 1;
						7'd38: r_n38[25:0] <= temp_cal3[31:6] + 1;
						7'd39: r_n39[25:0] <= temp_cal3[31:6] + 1;
						7'd40: r_n40[25:0] <= temp_cal3[31:6] + 1;
						7'd41: r_n41[25:0] <= temp_cal3[31:6] + 1;
						7'd42: r_n42[25:0] <= temp_cal3[31:6] + 1;
						7'd43: r_n43[25:0] <= temp_cal3[31:6] + 1;
						7'd44: r_n44[25:0] <= temp_cal3[31:6] + 1;
						7'd45: r_n45[25:0] <= temp_cal3[31:6] + 1;
						7'd46: r_n46[25:0] <= temp_cal3[31:6] + 1;
						7'd47: r_n47[25:0] <= temp_cal3[31:6] + 1;
						
						default: Index_pos_r_n0 <= 0;
					endcase
				end
				else begin
					case(Index3)
						7'd1: r_n1[25:0] <= temp_cal3[31:6];
						7'd2: r_n2[25:0] <= temp_cal3[31:6];
						7'd3: r_n3[25:0] <= temp_cal3[31:6];
						7'd4: r_n4[25:0] <= temp_cal3[31:6];
						7'd5: r_n5[25:0] <= temp_cal3[31:6];
						7'd6: r_n6[25:0] <= temp_cal3[31:6];
						7'd7: r_n7[25:0] <= temp_cal3[31:6];
						7'd8: r_n8[25:0] <= temp_cal3[31:6];
						7'd9: r_n9[25:0] <= temp_cal3[31:6];
						7'd10: r_n10[25:0] <= temp_cal3[31:6];
						7'd11: r_n11[25:0] <= temp_cal3[31:6];
						7'd12: r_n12[25:0] <= temp_cal3[31:6];
						7'd13: r_n13[25:0] <= temp_cal3[31:6];
						7'd14: r_n14[25:0] <= temp_cal3[31:6];
						7'd15: r_n15[25:0] <= temp_cal3[31:6];
						7'd16: r_n16[25:0] <= temp_cal3[31:6];
						7'd17: r_n17[25:0] <= temp_cal3[31:6];
						7'd18: r_n18[25:0] <= temp_cal3[31:6];
						7'd19: r_n19[25:0] <= temp_cal3[31:6];
						7'd20: r_n20[25:0] <= temp_cal3[31:6];
						7'd21: r_n21[25:0] <= temp_cal3[31:6];
						7'd22: r_n22[25:0] <= temp_cal3[31:6];
						7'd23: r_n23[25:0] <= temp_cal3[31:6];
						7'd24: r_n24[25:0] <= temp_cal3[31:6];
						7'd25: r_n25[25:0] <= temp_cal3[31:6];
						7'd26: r_n26[25:0] <= temp_cal3[31:6];
						7'd27: r_n27[25:0] <= temp_cal3[31:6];
						7'd28: r_n28[25:0] <= temp_cal3[31:6];
						7'd29: r_n29[25:0] <= temp_cal3[31:6];
						7'd30: r_n30[25:0] <= temp_cal3[31:6];
						7'd31: r_n31[25:0] <= temp_cal3[31:6];
						7'd32: r_n32[25:0] <= temp_cal3[31:6];
						7'd33: r_n33[25:0] <= temp_cal3[31:6];
						7'd34: r_n34[25:0] <= temp_cal3[31:6];
						7'd35: r_n35[25:0] <= temp_cal3[31:6];
						7'd36: r_n36[25:0] <= temp_cal3[31:6];
						7'd37: r_n37[25:0] <= temp_cal3[31:6];
						7'd38: r_n38[25:0] <= temp_cal3[31:6];
						7'd39: r_n39[25:0] <= temp_cal3[31:6];
						7'd40: r_n40[25:0] <= temp_cal3[31:6];
						7'd41: r_n41[25:0] <= temp_cal3[31:6];
						7'd42: r_n42[25:0] <= temp_cal3[31:6];
						7'd43: r_n43[25:0] <= temp_cal3[31:6];
						7'd44: r_n44[25:0] <= temp_cal3[31:6];
						7'd45: r_n45[25:0] <= temp_cal3[31:6];
						7'd46: r_n46[25:0] <= temp_cal3[31:6];
						7'd47: r_n47[25:0] <= temp_cal3[31:6];
						
						default: Index_pos_r_n0 <= 0;
					endcase 
				end
				
				if(temp_cal4[31] == 1) begin
					case(Index4)
						7'd1: r_n1[25:0] <= temp_cal4[31:6] + 1;
						7'd2: r_n2[25:0] <= temp_cal4[31:6] + 1;
						7'd3: r_n3[25:0] <= temp_cal4[31:6] + 1;
						7'd4: r_n4[25:0] <= temp_cal4[31:6] + 1;
						7'd5: r_n5[25:0] <= temp_cal4[31:6] + 1;
						7'd6: r_n6[25:0] <= temp_cal4[31:6] + 1;
						7'd7: r_n7[25:0] <= temp_cal4[31:6] + 1;
						7'd8: r_n8[25:0] <= temp_cal4[31:6] + 1;
						7'd9: r_n9[25:0] <= temp_cal4[31:6] + 1;
						7'd10: r_n10[25:0] <= temp_cal4[31:6] + 1;
						7'd11: r_n11[25:0] <= temp_cal4[31:6] + 1;
						7'd12: r_n12[25:0] <= temp_cal4[31:6] + 1;
						7'd13: r_n13[25:0] <= temp_cal4[31:6] + 1;
						7'd14: r_n14[25:0] <= temp_cal4[31:6] + 1;
						7'd15: r_n15[25:0] <= temp_cal4[31:6] + 1;
						7'd16: r_n16[25:0] <= temp_cal4[31:6] + 1;
						7'd17: r_n17[25:0] <= temp_cal4[31:6] + 1;
						7'd18: r_n18[25:0] <= temp_cal4[31:6] + 1;
						7'd19: r_n19[25:0] <= temp_cal4[31:6] + 1;
						7'd20: r_n20[25:0] <= temp_cal4[31:6] + 1;
						7'd21: r_n21[25:0] <= temp_cal4[31:6] + 1;
						7'd22: r_n22[25:0] <= temp_cal4[31:6] + 1;
						7'd23: r_n23[25:0] <= temp_cal4[31:6] + 1;
						7'd24: r_n24[25:0] <= temp_cal4[31:6] + 1;
						7'd25: r_n25[25:0] <= temp_cal4[31:6] + 1;
						7'd26: r_n26[25:0] <= temp_cal4[31:6] + 1;
						7'd27: r_n27[25:0] <= temp_cal4[31:6] + 1;
						7'd28: r_n28[25:0] <= temp_cal4[31:6] + 1;
						7'd29: r_n29[25:0] <= temp_cal4[31:6] + 1;
						7'd30: r_n30[25:0] <= temp_cal4[31:6] + 1;
						7'd31: r_n31[25:0] <= temp_cal4[31:6] + 1;
						7'd32: r_n32[25:0] <= temp_cal4[31:6] + 1;
						7'd33: r_n33[25:0] <= temp_cal4[31:6] + 1;
						7'd34: r_n34[25:0] <= temp_cal4[31:6] + 1;
						7'd35: r_n35[25:0] <= temp_cal4[31:6] + 1;
						7'd36: r_n36[25:0] <= temp_cal4[31:6] + 1;
						7'd37: r_n37[25:0] <= temp_cal4[31:6] + 1;
						7'd38: r_n38[25:0] <= temp_cal4[31:6] + 1;
						7'd39: r_n39[25:0] <= temp_cal4[31:6] + 1;
						7'd40: r_n40[25:0] <= temp_cal4[31:6] + 1;
						7'd41: r_n41[25:0] <= temp_cal4[31:6] + 1;
						7'd42: r_n42[25:0] <= temp_cal4[31:6] + 1;
						7'd43: r_n43[25:0] <= temp_cal4[31:6] + 1;
						7'd44: r_n44[25:0] <= temp_cal4[31:6] + 1;
						7'd45: r_n45[25:0] <= temp_cal4[31:6] + 1;
						7'd46: r_n46[25:0] <= temp_cal4[31:6] + 1;
						7'd47: r_n47[25:0] <= temp_cal4[31:6] + 1;
						
						default: Index_pos_r_n0 <= 0;
					endcase
				end
				else begin
					case(Index4)
						7'd1: r_n1[25:0] <= temp_cal4[31:6];
						7'd2: r_n2[25:0] <= temp_cal4[31:6];
						7'd3: r_n3[25:0] <= temp_cal4[31:6];
						7'd4: r_n4[25:0] <= temp_cal4[31:6];
						7'd5: r_n5[25:0] <= temp_cal4[31:6];
						7'd6: r_n6[25:0] <= temp_cal4[31:6];
						7'd7: r_n7[25:0] <= temp_cal4[31:6];
						7'd8: r_n8[25:0] <= temp_cal4[31:6];
						7'd9: r_n9[25:0] <= temp_cal4[31:6];
						7'd10: r_n10[25:0] <= temp_cal4[31:6];
						7'd11: r_n11[25:0] <= temp_cal4[31:6];
						7'd12: r_n12[25:0] <= temp_cal4[31:6];
						7'd13: r_n13[25:0] <= temp_cal4[31:6];
						7'd14: r_n14[25:0] <= temp_cal4[31:6];
						7'd15: r_n15[25:0] <= temp_cal4[31:6];
						7'd16: r_n16[25:0] <= temp_cal4[31:6];
						7'd17: r_n17[25:0] <= temp_cal4[31:6];
						7'd18: r_n18[25:0] <= temp_cal4[31:6];
						7'd19: r_n19[25:0] <= temp_cal4[31:6];
						7'd20: r_n20[25:0] <= temp_cal4[31:6];
						7'd21: r_n21[25:0] <= temp_cal4[31:6];
						7'd22: r_n22[25:0] <= temp_cal4[31:6];
						7'd23: r_n23[25:0] <= temp_cal4[31:6];
						7'd24: r_n24[25:0] <= temp_cal4[31:6];
						7'd25: r_n25[25:0] <= temp_cal4[31:6];
						7'd26: r_n26[25:0] <= temp_cal4[31:6];
						7'd27: r_n27[25:0] <= temp_cal4[31:6];
						7'd28: r_n28[25:0] <= temp_cal4[31:6];
						7'd29: r_n29[25:0] <= temp_cal4[31:6];
						7'd30: r_n30[25:0] <= temp_cal4[31:6];
						7'd31: r_n31[25:0] <= temp_cal4[31:6];
						7'd32: r_n32[25:0] <= temp_cal4[31:6];
						7'd33: r_n33[25:0] <= temp_cal4[31:6];
						7'd34: r_n34[25:0] <= temp_cal4[31:6];
						7'd35: r_n35[25:0] <= temp_cal4[31:6];
						7'd36: r_n36[25:0] <= temp_cal4[31:6];
						7'd37: r_n37[25:0] <= temp_cal4[31:6];
						7'd38: r_n38[25:0] <= temp_cal4[31:6];
						7'd39: r_n39[25:0] <= temp_cal4[31:6];
						7'd40: r_n40[25:0] <= temp_cal4[31:6];
						7'd41: r_n41[25:0] <= temp_cal4[31:6];
						7'd42: r_n42[25:0] <= temp_cal4[31:6];
						7'd43: r_n43[25:0] <= temp_cal4[31:6];
						7'd44: r_n44[25:0] <= temp_cal4[31:6];
						7'd45: r_n45[25:0] <= temp_cal4[31:6];
						7'd46: r_n46[25:0] <= temp_cal4[31:6];
						7'd47: r_n47[25:0] <= temp_cal4[31:6];
						
						default: Index_pos_r_n0 <= 0;
					endcase
				end
				
				if(temp_cal5[31] == 1) begin
					case(Index5)
						7'd1: r_n1[25:0] <= temp_cal5[31:6] + 1;
						7'd2: r_n2[25:0] <= temp_cal5[31:6] + 1;
						7'd3: r_n3[25:0] <= temp_cal5[31:6] + 1;
						7'd4: r_n4[25:0] <= temp_cal5[31:6] + 1;
						7'd5: r_n5[25:0] <= temp_cal5[31:6] + 1;
						7'd6: r_n6[25:0] <= temp_cal5[31:6] + 1;
						7'd7: r_n7[25:0] <= temp_cal5[31:6] + 1;
						7'd8: r_n8[25:0] <= temp_cal5[31:6] + 1;
						7'd9: r_n9[25:0] <= temp_cal5[31:6] + 1;
						7'd10: r_n10[25:0] <= temp_cal5[31:6] + 1;
						7'd11: r_n11[25:0] <= temp_cal5[31:6] + 1;
						7'd12: r_n12[25:0] <= temp_cal5[31:6] + 1;
						7'd13: r_n13[25:0] <= temp_cal5[31:6] + 1;
						7'd14: r_n14[25:0] <= temp_cal5[31:6] + 1;
						7'd15: r_n15[25:0] <= temp_cal5[31:6] + 1;
						7'd16: r_n16[25:0] <= temp_cal5[31:6] + 1;
						7'd17: r_n17[25:0] <= temp_cal5[31:6] + 1;
						7'd18: r_n18[25:0] <= temp_cal5[31:6] + 1;
						7'd19: r_n19[25:0] <= temp_cal5[31:6] + 1;
						7'd20: r_n20[25:0] <= temp_cal5[31:6] + 1;
						7'd21: r_n21[25:0] <= temp_cal5[31:6] + 1;
						7'd22: r_n22[25:0] <= temp_cal5[31:6] + 1;
						7'd23: r_n23[25:0] <= temp_cal5[31:6] + 1;
						7'd24: r_n24[25:0] <= temp_cal5[31:6] + 1;
						7'd25: r_n25[25:0] <= temp_cal5[31:6] + 1;
						7'd26: r_n26[25:0] <= temp_cal5[31:6] + 1;
						7'd27: r_n27[25:0] <= temp_cal5[31:6] + 1;
						7'd28: r_n28[25:0] <= temp_cal5[31:6] + 1;
						7'd29: r_n29[25:0] <= temp_cal5[31:6] + 1;
						7'd30: r_n30[25:0] <= temp_cal5[31:6] + 1;
						7'd31: r_n31[25:0] <= temp_cal5[31:6] + 1;
						7'd32: r_n32[25:0] <= temp_cal5[31:6] + 1;
						7'd33: r_n33[25:0] <= temp_cal5[31:6] + 1;
						7'd34: r_n34[25:0] <= temp_cal5[31:6] + 1;
						7'd35: r_n35[25:0] <= temp_cal5[31:6] + 1;
						7'd36: r_n36[25:0] <= temp_cal5[31:6] + 1;
						7'd37: r_n37[25:0] <= temp_cal5[31:6] + 1;
						7'd38: r_n38[25:0] <= temp_cal5[31:6] + 1;
						7'd39: r_n39[25:0] <= temp_cal5[31:6] + 1;
						7'd40: r_n40[25:0] <= temp_cal5[31:6] + 1;
						7'd41: r_n41[25:0] <= temp_cal5[31:6] + 1;
						7'd42: r_n42[25:0] <= temp_cal5[31:6] + 1;
						7'd43: r_n43[25:0] <= temp_cal5[31:6] + 1;
						7'd44: r_n44[25:0] <= temp_cal5[31:6] + 1;
						7'd45: r_n45[25:0] <= temp_cal5[31:6] + 1;
						7'd46: r_n46[25:0] <= temp_cal5[31:6] + 1;
						7'd47: r_n47[25:0] <= temp_cal5[31:6] + 1;
						
						default: Index_pos_r_n0 <= 0;
					endcase
				end
				else begin
					case(Index5)
						7'd1: r_n1[25:0] <= temp_cal5[31:6];
						7'd2: r_n2[25:0] <= temp_cal5[31:6];
						7'd3: r_n3[25:0] <= temp_cal5[31:6];
						7'd4: r_n4[25:0] <= temp_cal5[31:6];
						7'd5: r_n5[25:0] <= temp_cal5[31:6];
						7'd6: r_n6[25:0] <= temp_cal5[31:6];
						7'd7: r_n7[25:0] <= temp_cal5[31:6];
						7'd8: r_n8[25:0] <= temp_cal5[31:6];
						7'd9: r_n9[25:0] <= temp_cal5[31:6];
						7'd10: r_n10[25:0] <= temp_cal5[31:6];
						7'd11: r_n11[25:0] <= temp_cal5[31:6];
						7'd12: r_n12[25:0] <= temp_cal5[31:6];
						7'd13: r_n13[25:0] <= temp_cal5[31:6];
						7'd14: r_n14[25:0] <= temp_cal5[31:6];
						7'd15: r_n15[25:0] <= temp_cal5[31:6];
						7'd16: r_n16[25:0] <= temp_cal5[31:6];
						7'd17: r_n17[25:0] <= temp_cal5[31:6];
						7'd18: r_n18[25:0] <= temp_cal5[31:6];
						7'd19: r_n19[25:0] <= temp_cal5[31:6];
						7'd20: r_n20[25:0] <= temp_cal5[31:6];
						7'd21: r_n21[25:0] <= temp_cal5[31:6];
						7'd22: r_n22[25:0] <= temp_cal5[31:6];
						7'd23: r_n23[25:0] <= temp_cal5[31:6];
						7'd24: r_n24[25:0] <= temp_cal5[31:6];
						7'd25: r_n25[25:0] <= temp_cal5[31:6];
						7'd26: r_n26[25:0] <= temp_cal5[31:6];
						7'd27: r_n27[25:0] <= temp_cal5[31:6];
						7'd28: r_n28[25:0] <= temp_cal5[31:6];
						7'd29: r_n29[25:0] <= temp_cal5[31:6];
						7'd30: r_n30[25:0] <= temp_cal5[31:6];
						7'd31: r_n31[25:0] <= temp_cal5[31:6];
						7'd32: r_n32[25:0] <= temp_cal5[31:6];
						7'd33: r_n33[25:0] <= temp_cal5[31:6];
						7'd34: r_n34[25:0] <= temp_cal5[31:6];
						7'd35: r_n35[25:0] <= temp_cal5[31:6];
						7'd36: r_n36[25:0] <= temp_cal5[31:6];
						7'd37: r_n37[25:0] <= temp_cal5[31:6];
						7'd38: r_n38[25:0] <= temp_cal5[31:6];
						7'd39: r_n39[25:0] <= temp_cal5[31:6];
						7'd40: r_n40[25:0] <= temp_cal5[31:6];
						7'd41: r_n41[25:0] <= temp_cal5[31:6];
						7'd42: r_n42[25:0] <= temp_cal5[31:6];
						7'd43: r_n43[25:0] <= temp_cal5[31:6];
						7'd44: r_n44[25:0] <= temp_cal5[31:6];
						7'd45: r_n45[25:0] <= temp_cal5[31:6];
						7'd46: r_n46[25:0] <= temp_cal5[31:6];
						7'd47: r_n47[25:0] <= temp_cal5[31:6];
						
						default: Index_pos_r_n0 <= 0;
					endcase
				end
				
				if(temp_cal6[31] == 1) begin
					case(Index6)
						7'd1: r_n1[25:0] <= temp_cal6[31:6] + 1;
						7'd2: r_n2[25:0] <= temp_cal6[31:6] + 1;
						7'd3: r_n3[25:0] <= temp_cal6[31:6] + 1;
						7'd4: r_n4[25:0] <= temp_cal6[31:6] + 1;
						7'd5: r_n5[25:0] <= temp_cal6[31:6] + 1;
						7'd6: r_n6[25:0] <= temp_cal6[31:6] + 1;
						7'd7: r_n7[25:0] <= temp_cal6[31:6] + 1;
						7'd8: r_n8[25:0] <= temp_cal6[31:6] + 1;
						7'd9: r_n9[25:0] <= temp_cal6[31:6] + 1;
						7'd10: r_n10[25:0] <= temp_cal6[31:6] + 1;
						7'd11: r_n11[25:0] <= temp_cal6[31:6] + 1;
						7'd12: r_n12[25:0] <= temp_cal6[31:6] + 1;
						7'd13: r_n13[25:0] <= temp_cal6[31:6] + 1;
						7'd14: r_n14[25:0] <= temp_cal6[31:6] + 1;
						7'd15: r_n15[25:0] <= temp_cal6[31:6] + 1;
						7'd16: r_n16[25:0] <= temp_cal6[31:6] + 1;
						7'd17: r_n17[25:0] <= temp_cal6[31:6] + 1;
						7'd18: r_n18[25:0] <= temp_cal6[31:6] + 1;
						7'd19: r_n19[25:0] <= temp_cal6[31:6] + 1;
						7'd20: r_n20[25:0] <= temp_cal6[31:6] + 1;
						7'd21: r_n21[25:0] <= temp_cal6[31:6] + 1;
						7'd22: r_n22[25:0] <= temp_cal6[31:6] + 1;
						7'd23: r_n23[25:0] <= temp_cal6[31:6] + 1;
						7'd24: r_n24[25:0] <= temp_cal6[31:6] + 1;
						7'd25: r_n25[25:0] <= temp_cal6[31:6] + 1;
						7'd26: r_n26[25:0] <= temp_cal6[31:6] + 1;
						7'd27: r_n27[25:0] <= temp_cal6[31:6] + 1;
						7'd28: r_n28[25:0] <= temp_cal6[31:6] + 1;
						7'd29: r_n29[25:0] <= temp_cal6[31:6] + 1;
						7'd30: r_n30[25:0] <= temp_cal6[31:6] + 1;
						7'd31: r_n31[25:0] <= temp_cal6[31:6] + 1;
						7'd32: r_n32[25:0] <= temp_cal6[31:6] + 1;
						7'd33: r_n33[25:0] <= temp_cal6[31:6] + 1;
						7'd34: r_n34[25:0] <= temp_cal6[31:6] + 1;
						7'd35: r_n35[25:0] <= temp_cal6[31:6] + 1;
						7'd36: r_n36[25:0] <= temp_cal6[31:6] + 1;
						7'd37: r_n37[25:0] <= temp_cal6[31:6] + 1;
						7'd38: r_n38[25:0] <= temp_cal6[31:6] + 1;
						7'd39: r_n39[25:0] <= temp_cal6[31:6] + 1;
						7'd40: r_n40[25:0] <= temp_cal6[31:6] + 1;
						7'd41: r_n41[25:0] <= temp_cal6[31:6] + 1;
						7'd42: r_n42[25:0] <= temp_cal6[31:6] + 1;
						7'd43: r_n43[25:0] <= temp_cal6[31:6] + 1;
						7'd44: r_n44[25:0] <= temp_cal6[31:6] + 1;
						7'd45: r_n45[25:0] <= temp_cal6[31:6] + 1;
						7'd46: r_n46[25:0] <= temp_cal6[31:6] + 1;
						7'd47: r_n47[25:0] <= temp_cal6[31:6] + 1;
						
						default: Index_pos_r_n0 <= 0;
					endcase
				end
				else begin
					case(Index6)
						7'd1: r_n1[25:0] <= temp_cal6[31:6];
						7'd2: r_n2[25:0] <= temp_cal6[31:6];
						7'd3: r_n3[25:0] <= temp_cal6[31:6];
						7'd4: r_n4[25:0] <= temp_cal6[31:6];
						7'd5: r_n5[25:0] <= temp_cal6[31:6];
						7'd6: r_n6[25:0] <= temp_cal6[31:6];
						7'd7: r_n7[25:0] <= temp_cal6[31:6];
						7'd8: r_n8[25:0] <= temp_cal6[31:6];
						7'd9: r_n9[25:0] <= temp_cal6[31:6];
						7'd10: r_n10[25:0] <= temp_cal6[31:6];
						7'd11: r_n11[25:0] <= temp_cal6[31:6];
						7'd12: r_n12[25:0] <= temp_cal6[31:6];
						7'd13: r_n13[25:0] <= temp_cal6[31:6];
						7'd14: r_n14[25:0] <= temp_cal6[31:6];
						7'd15: r_n15[25:0] <= temp_cal6[31:6];
						7'd16: r_n16[25:0] <= temp_cal6[31:6];
						7'd17: r_n17[25:0] <= temp_cal6[31:6];
						7'd18: r_n18[25:0] <= temp_cal6[31:6];
						7'd19: r_n19[25:0] <= temp_cal6[31:6];
						7'd20: r_n20[25:0] <= temp_cal6[31:6];
						7'd21: r_n21[25:0] <= temp_cal6[31:6];
						7'd22: r_n22[25:0] <= temp_cal6[31:6];
						7'd23: r_n23[25:0] <= temp_cal6[31:6];
						7'd24: r_n24[25:0] <= temp_cal6[31:6];
						7'd25: r_n25[25:0] <= temp_cal6[31:6];
						7'd26: r_n26[25:0] <= temp_cal6[31:6];
						7'd27: r_n27[25:0] <= temp_cal6[31:6];
						7'd28: r_n28[25:0] <= temp_cal6[31:6];
						7'd29: r_n29[25:0] <= temp_cal6[31:6];
						7'd30: r_n30[25:0] <= temp_cal6[31:6];
						7'd31: r_n31[25:0] <= temp_cal6[31:6];
						7'd32: r_n32[25:0] <= temp_cal6[31:6];
						7'd33: r_n33[25:0] <= temp_cal6[31:6];
						7'd34: r_n34[25:0] <= temp_cal6[31:6];
						7'd35: r_n35[25:0] <= temp_cal6[31:6];
						7'd36: r_n36[25:0] <= temp_cal6[31:6];
						7'd37: r_n37[25:0] <= temp_cal6[31:6];
						7'd38: r_n38[25:0] <= temp_cal6[31:6];
						7'd39: r_n39[25:0] <= temp_cal6[31:6];
						7'd40: r_n40[25:0] <= temp_cal6[31:6];
						7'd41: r_n41[25:0] <= temp_cal6[31:6];
						7'd42: r_n42[25:0] <= temp_cal6[31:6];
						7'd43: r_n43[25:0] <= temp_cal6[31:6];
						7'd44: r_n44[25:0] <= temp_cal6[31:6];
						7'd45: r_n45[25:0] <= temp_cal6[31:6];
						7'd46: r_n46[25:0] <= temp_cal6[31:6];
						7'd47: r_n47[25:0] <= temp_cal6[31:6];
						
						default: Index_pos_r_n0 <= 0;
					endcase
				end
				
				if(temp_cal7[31] == 1)begin
					case(Index7)
						7'd1: r_n1[25:0] <= temp_cal7[31:6] + 1;
						7'd2: r_n2[25:0] <= temp_cal7[31:6] + 1;
						7'd3: r_n3[25:0] <= temp_cal7[31:6] + 1;
						7'd4: r_n4[25:0] <= temp_cal7[31:6] + 1;
						7'd5: r_n5[25:0] <= temp_cal7[31:6] + 1;
						7'd6: r_n6[25:0] <= temp_cal7[31:6] + 1;
						7'd7: r_n7[25:0] <= temp_cal7[31:6] + 1;
						7'd8: r_n8[25:0] <= temp_cal7[31:6] + 1;
						7'd9: r_n9[25:0] <= temp_cal7[31:6] + 1;
						7'd10: r_n10[25:0] <= temp_cal7[31:6] + 1;
						7'd11: r_n11[25:0] <= temp_cal7[31:6] + 1;
						7'd12: r_n12[25:0] <= temp_cal7[31:6] + 1;
						7'd13: r_n13[25:0] <= temp_cal7[31:6] + 1;
						7'd14: r_n14[25:0] <= temp_cal7[31:6] + 1;
						7'd15: r_n15[25:0] <= temp_cal7[31:6] + 1;
						7'd16: r_n16[25:0] <= temp_cal7[31:6] + 1;
						7'd17: r_n17[25:0] <= temp_cal7[31:6] + 1;
						7'd18: r_n18[25:0] <= temp_cal7[31:6] + 1;
						7'd19: r_n19[25:0] <= temp_cal7[31:6] + 1;
						7'd20: r_n20[25:0] <= temp_cal7[31:6] + 1;
						7'd21: r_n21[25:0] <= temp_cal7[31:6] + 1;
						7'd22: r_n22[25:0] <= temp_cal7[31:6] + 1;
						7'd23: r_n23[25:0] <= temp_cal7[31:6] + 1;
						7'd24: r_n24[25:0] <= temp_cal7[31:6] + 1;
						7'd25: r_n25[25:0] <= temp_cal7[31:6] + 1;
						7'd26: r_n26[25:0] <= temp_cal7[31:6] + 1;
						7'd27: r_n27[25:0] <= temp_cal7[31:6] + 1;
						7'd28: r_n28[25:0] <= temp_cal7[31:6] + 1;
						7'd29: r_n29[25:0] <= temp_cal7[31:6] + 1;
						7'd30: r_n30[25:0] <= temp_cal7[31:6] + 1;
						7'd31: r_n31[25:0] <= temp_cal7[31:6] + 1;
						7'd32: r_n32[25:0] <= temp_cal7[31:6] + 1;
						7'd33: r_n33[25:0] <= temp_cal7[31:6] + 1;
						7'd34: r_n34[25:0] <= temp_cal7[31:6] + 1;
						7'd35: r_n35[25:0] <= temp_cal7[31:6] + 1;
						7'd36: r_n36[25:0] <= temp_cal7[31:6] + 1;
						7'd37: r_n37[25:0] <= temp_cal7[31:6] + 1;
						7'd38: r_n38[25:0] <= temp_cal7[31:6] + 1;
						7'd39: r_n39[25:0] <= temp_cal7[31:6] + 1;
						7'd40: r_n40[25:0] <= temp_cal7[31:6] + 1;
						7'd41: r_n41[25:0] <= temp_cal7[31:6] + 1;
						7'd42: r_n42[25:0] <= temp_cal7[31:6] + 1;
						7'd43: r_n43[25:0] <= temp_cal7[31:6] + 1;
						7'd44: r_n44[25:0] <= temp_cal7[31:6] + 1;
						7'd45: r_n45[25:0] <= temp_cal7[31:6] + 1;
						7'd46: r_n46[25:0] <= temp_cal7[31:6] + 1;
						7'd47: r_n47[25:0] <= temp_cal7[31:6] + 1;
						
						default: Index_pos_r_n0 <= 0;
					endcase
				end
				else begin
					case(Index7)
						7'd1: r_n1[25:0] <= temp_cal7[31:6];
						7'd2: r_n2[25:0] <= temp_cal7[31:6];
						7'd3: r_n3[25:0] <= temp_cal7[31:6];
						7'd4: r_n4[25:0] <= temp_cal7[31:6];
						7'd5: r_n5[25:0] <= temp_cal7[31:6];
						7'd6: r_n6[25:0] <= temp_cal7[31:6];
						7'd7: r_n7[25:0] <= temp_cal7[31:6];
						7'd8: r_n8[25:0] <= temp_cal7[31:6];
						7'd9: r_n9[25:0] <= temp_cal7[31:6];
						7'd10: r_n10[25:0] <= temp_cal7[31:6];
						7'd11: r_n11[25:0] <= temp_cal7[31:6];
						7'd12: r_n12[25:0] <= temp_cal7[31:6];
						7'd13: r_n13[25:0] <= temp_cal7[31:6];
						7'd14: r_n14[25:0] <= temp_cal7[31:6];
						7'd15: r_n15[25:0] <= temp_cal7[31:6];
						7'd16: r_n16[25:0] <= temp_cal7[31:6];
						7'd17: r_n17[25:0] <= temp_cal7[31:6];
						7'd18: r_n18[25:0] <= temp_cal7[31:6];
						7'd19: r_n19[25:0] <= temp_cal7[31:6];
						7'd20: r_n20[25:0] <= temp_cal7[31:6];
						7'd21: r_n21[25:0] <= temp_cal7[31:6];
						7'd22: r_n22[25:0] <= temp_cal7[31:6];
						7'd23: r_n23[25:0] <= temp_cal7[31:6];
						7'd24: r_n24[25:0] <= temp_cal7[31:6];
						7'd25: r_n25[25:0] <= temp_cal7[31:6];
						7'd26: r_n26[25:0] <= temp_cal7[31:6];
						7'd27: r_n27[25:0] <= temp_cal7[31:6];
						7'd28: r_n28[25:0] <= temp_cal7[31:6];
						7'd29: r_n29[25:0] <= temp_cal7[31:6];
						7'd30: r_n30[25:0] <= temp_cal7[31:6];
						7'd31: r_n31[25:0] <= temp_cal7[31:6];
						7'd32: r_n32[25:0] <= temp_cal7[31:6];
						7'd33: r_n33[25:0] <= temp_cal7[31:6];
						7'd34: r_n34[25:0] <= temp_cal7[31:6];
						7'd35: r_n35[25:0] <= temp_cal7[31:6];
						7'd36: r_n36[25:0] <= temp_cal7[31:6];
						7'd37: r_n37[25:0] <= temp_cal7[31:6];
						7'd38: r_n38[25:0] <= temp_cal7[31:6];
						7'd39: r_n39[25:0] <= temp_cal7[31:6];
						7'd40: r_n40[25:0] <= temp_cal7[31:6];
						7'd41: r_n41[25:0] <= temp_cal7[31:6];
						7'd42: r_n42[25:0] <= temp_cal7[31:6];
						7'd43: r_n43[25:0] <= temp_cal7[31:6];
						7'd44: r_n44[25:0] <= temp_cal7[31:6];
						7'd45: r_n45[25:0] <= temp_cal7[31:6];
						7'd46: r_n46[25:0] <= temp_cal7[31:6];
						7'd47: r_n47[25:0] <= temp_cal7[31:6];
						
						default: Index_pos_r_n0 <= 0;
					endcase
				end
				
				if(temp_cal8[31] == 1)begin
					case(Index8)
						7'd1: r_n1[25:0] <= temp_cal8[31:6] + 1;
						7'd2: r_n2[25:0] <= temp_cal8[31:6] + 1;
						7'd3: r_n3[25:0] <= temp_cal8[31:6] + 1;
						7'd4: r_n4[25:0] <= temp_cal8[31:6] + 1;
						7'd5: r_n5[25:0] <= temp_cal8[31:6] + 1;
						7'd6: r_n6[25:0] <= temp_cal8[31:6] + 1;
						7'd7: r_n7[25:0] <= temp_cal8[31:6] + 1;
						7'd8: r_n8[25:0] <= temp_cal8[31:6] + 1;
						7'd9: r_n9[25:0] <= temp_cal8[31:6] + 1;
						7'd10: r_n10[25:0] <= temp_cal8[31:6] + 1;
						7'd11: r_n11[25:0] <= temp_cal8[31:6] + 1;
						7'd12: r_n12[25:0] <= temp_cal8[31:6] + 1;
						7'd13: r_n13[25:0] <= temp_cal8[31:6] + 1;
						7'd14: r_n14[25:0] <= temp_cal8[31:6] + 1;
						7'd15: r_n15[25:0] <= temp_cal8[31:6] + 1;
						7'd16: r_n16[25:0] <= temp_cal8[31:6] + 1;
						7'd17: r_n17[25:0] <= temp_cal8[31:6] + 1;
						7'd18: r_n18[25:0] <= temp_cal8[31:6] + 1;
						7'd19: r_n19[25:0] <= temp_cal8[31:6] + 1;
						7'd20: r_n20[25:0] <= temp_cal8[31:6] + 1;
						7'd21: r_n21[25:0] <= temp_cal8[31:6] + 1;
						7'd22: r_n22[25:0] <= temp_cal8[31:6] + 1;
						7'd23: r_n23[25:0] <= temp_cal8[31:6] + 1;
						7'd24: r_n24[25:0] <= temp_cal8[31:6] + 1;
						7'd25: r_n25[25:0] <= temp_cal8[31:6] + 1;
						7'd26: r_n26[25:0] <= temp_cal8[31:6] + 1;
						7'd27: r_n27[25:0] <= temp_cal8[31:6] + 1;
						7'd28: r_n28[25:0] <= temp_cal8[31:6] + 1;
						7'd29: r_n29[25:0] <= temp_cal8[31:6] + 1;
						7'd30: r_n30[25:0] <= temp_cal8[31:6] + 1;
						7'd31: r_n31[25:0] <= temp_cal8[31:6] + 1;
						7'd32: r_n32[25:0] <= temp_cal8[31:6] + 1;
						7'd33: r_n33[25:0] <= temp_cal8[31:6] + 1;
						7'd34: r_n34[25:0] <= temp_cal8[31:6] + 1;
						7'd35: r_n35[25:0] <= temp_cal8[31:6] + 1;
						7'd36: r_n36[25:0] <= temp_cal8[31:6] + 1;
						7'd37: r_n37[25:0] <= temp_cal8[31:6] + 1;
						7'd38: r_n38[25:0] <= temp_cal8[31:6] + 1;
						7'd39: r_n39[25:0] <= temp_cal8[31:6] + 1;
						7'd40: r_n40[25:0] <= temp_cal8[31:6] + 1;
						7'd41: r_n41[25:0] <= temp_cal8[31:6] + 1;
						7'd42: r_n42[25:0] <= temp_cal8[31:6] + 1;
						7'd43: r_n43[25:0] <= temp_cal8[31:6] + 1;
						7'd44: r_n44[25:0] <= temp_cal8[31:6] + 1;
						7'd45: r_n45[25:0] <= temp_cal8[31:6] + 1;
						7'd46: r_n46[25:0] <= temp_cal8[31:6] + 1;
						7'd47: r_n47[25:0] <= temp_cal8[31:6] + 1;
						
						default: Index_pos_r_n0 <= 0;
					endcase
				end 
				else begin
					case(Index8)
						7'd1: r_n1[25:0] <= temp_cal8[31:6];
						7'd2: r_n2[25:0] <= temp_cal8[31:6];
						7'd3: r_n3[25:0] <= temp_cal8[31:6];
						7'd4: r_n4[25:0] <= temp_cal8[31:6];
						7'd5: r_n5[25:0] <= temp_cal8[31:6];
						7'd6: r_n6[25:0] <= temp_cal8[31:6];
						7'd7: r_n7[25:0] <= temp_cal8[31:6];
						7'd8: r_n8[25:0] <= temp_cal8[31:6];
						7'd9: r_n9[25:0] <= temp_cal8[31:6];
						7'd10: r_n10[25:0] <= temp_cal8[31:6];
						7'd11: r_n11[25:0] <= temp_cal8[31:6];
						7'd12: r_n12[25:0] <= temp_cal8[31:6];
						7'd13: r_n13[25:0] <= temp_cal8[31:6];
						7'd14: r_n14[25:0] <= temp_cal8[31:6];
						7'd15: r_n15[25:0] <= temp_cal8[31:6];
						7'd16: r_n16[25:0] <= temp_cal8[31:6];
						7'd17: r_n17[25:0] <= temp_cal8[31:6];
						7'd18: r_n18[25:0] <= temp_cal8[31:6];
						7'd19: r_n19[25:0] <= temp_cal8[31:6];
						7'd20: r_n20[25:0] <= temp_cal8[31:6];
						7'd21: r_n21[25:0] <= temp_cal8[31:6];
						7'd22: r_n22[25:0] <= temp_cal8[31:6];
						7'd23: r_n23[25:0] <= temp_cal8[31:6];
						7'd24: r_n24[25:0] <= temp_cal8[31:6];
						7'd25: r_n25[25:0] <= temp_cal8[31:6];
						7'd26: r_n26[25:0] <= temp_cal8[31:6];
						7'd27: r_n27[25:0] <= temp_cal8[31:6];
						7'd28: r_n28[25:0] <= temp_cal8[31:6];
						7'd29: r_n29[25:0] <= temp_cal8[31:6];
						7'd30: r_n30[25:0] <= temp_cal8[31:6];
						7'd31: r_n31[25:0] <= temp_cal8[31:6];
						7'd32: r_n32[25:0] <= temp_cal8[31:6];
						7'd33: r_n33[25:0] <= temp_cal8[31:6];
						7'd34: r_n34[25:0] <= temp_cal8[31:6];
						7'd35: r_n35[25:0] <= temp_cal8[31:6];
						7'd36: r_n36[25:0] <= temp_cal8[31:6];
						7'd37: r_n37[25:0] <= temp_cal8[31:6];
						7'd38: r_n38[25:0] <= temp_cal8[31:6];
						7'd39: r_n39[25:0] <= temp_cal8[31:6];
						7'd40: r_n40[25:0] <= temp_cal8[31:6];
						7'd41: r_n41[25:0] <= temp_cal8[31:6];
						7'd42: r_n42[25:0] <= temp_cal8[31:6];
						7'd43: r_n43[25:0] <= temp_cal8[31:6];
						7'd44: r_n44[25:0] <= temp_cal8[31:6];
						7'd45: r_n45[25:0] <= temp_cal8[31:6];
						7'd46: r_n46[25:0] <= temp_cal8[31:6];
						7'd47: r_n47[25:0] <= temp_cal8[31:6];
						
						default: Index_pos_r_n0 <= 0;
					endcase
				end
				
				if(temp_cal9[31] == 1)begin
					case(Index9)
						7'd1: r_n1[25:0] <= temp_cal9[31:6] + 1;
						7'd2: r_n2[25:0] <= temp_cal9[31:6] + 1;
						7'd3: r_n3[25:0] <= temp_cal9[31:6] + 1;
						7'd4: r_n4[25:0] <= temp_cal9[31:6] + 1;
						7'd5: r_n5[25:0] <= temp_cal9[31:6] + 1;
						7'd6: r_n6[25:0] <= temp_cal9[31:6] + 1;
						7'd7: r_n7[25:0] <= temp_cal9[31:6] + 1;
						7'd8: r_n8[25:0] <= temp_cal9[31:6] + 1;
						7'd9: r_n9[25:0] <= temp_cal9[31:6] + 1;
						7'd10: r_n10[25:0] <= temp_cal9[31:6] + 1;
						7'd11: r_n11[25:0] <= temp_cal9[31:6] + 1;
						7'd12: r_n12[25:0] <= temp_cal9[31:6] + 1;
						7'd13: r_n13[25:0] <= temp_cal9[31:6] + 1;
						7'd14: r_n14[25:0] <= temp_cal9[31:6] + 1;
						7'd15: r_n15[25:0] <= temp_cal9[31:6] + 1;
						7'd16: r_n16[25:0] <= temp_cal9[31:6] + 1;
						7'd17: r_n17[25:0] <= temp_cal9[31:6] + 1;
						7'd18: r_n18[25:0] <= temp_cal9[31:6] + 1;
						7'd19: r_n19[25:0] <= temp_cal9[31:6] + 1;
						7'd20: r_n20[25:0] <= temp_cal9[31:6] + 1;
						7'd21: r_n21[25:0] <= temp_cal9[31:6] + 1;
						7'd22: r_n22[25:0] <= temp_cal9[31:6] + 1;
						7'd23: r_n23[25:0] <= temp_cal9[31:6] + 1;
						7'd24: r_n24[25:0] <= temp_cal9[31:6] + 1;
						7'd25: r_n25[25:0] <= temp_cal9[31:6] + 1;
						7'd26: r_n26[25:0] <= temp_cal9[31:6] + 1;
						7'd27: r_n27[25:0] <= temp_cal9[31:6] + 1;
						7'd28: r_n28[25:0] <= temp_cal9[31:6] + 1;
						7'd29: r_n29[25:0] <= temp_cal9[31:6] + 1;
						7'd30: r_n30[25:0] <= temp_cal9[31:6] + 1;
						7'd31: r_n31[25:0] <= temp_cal9[31:6] + 1;
						7'd32: r_n32[25:0] <= temp_cal9[31:6] + 1;
						7'd33: r_n33[25:0] <= temp_cal9[31:6] + 1;
						7'd34: r_n34[25:0] <= temp_cal9[31:6] + 1;
						7'd35: r_n35[25:0] <= temp_cal9[31:6] + 1;
						7'd36: r_n36[25:0] <= temp_cal9[31:6] + 1;
						7'd37: r_n37[25:0] <= temp_cal9[31:6] + 1;
						7'd38: r_n38[25:0] <= temp_cal9[31:6] + 1;
						7'd39: r_n39[25:0] <= temp_cal9[31:6] + 1;
						7'd40: r_n40[25:0] <= temp_cal9[31:6] + 1;
						7'd41: r_n41[25:0] <= temp_cal9[31:6] + 1;
						7'd42: r_n42[25:0] <= temp_cal9[31:6] + 1;
						7'd43: r_n43[25:0] <= temp_cal9[31:6] + 1;
						7'd44: r_n44[25:0] <= temp_cal9[31:6] + 1;
						7'd45: r_n45[25:0] <= temp_cal9[31:6] + 1;
						7'd46: r_n46[25:0] <= temp_cal9[31:6] + 1;
						7'd47: r_n47[25:0] <= temp_cal9[31:6] + 1;
						
						default: Index_pos_r_n0 <= 0;
					endcase
				end
				else begin
					case(Index9)
						7'd1: r_n1[25:0] <= temp_cal9[31:6];
						7'd2: r_n2[25:0] <= temp_cal9[31:6];
						7'd3: r_n3[25:0] <= temp_cal9[31:6];
						7'd4: r_n4[25:0] <= temp_cal9[31:6];
						7'd5: r_n5[25:0] <= temp_cal9[31:6];
						7'd6: r_n6[25:0] <= temp_cal9[31:6];
						7'd7: r_n7[25:0] <= temp_cal9[31:6];
						7'd8: r_n8[25:0] <= temp_cal9[31:6];
						7'd9: r_n9[25:0] <= temp_cal9[31:6];
						7'd10: r_n10[25:0] <= temp_cal9[31:6];
						7'd11: r_n11[25:0] <= temp_cal9[31:6];
						7'd12: r_n12[25:0] <= temp_cal9[31:6];
						7'd13: r_n13[25:0] <= temp_cal9[31:6];
						7'd14: r_n14[25:0] <= temp_cal9[31:6];
						7'd15: r_n15[25:0] <= temp_cal9[31:6];
						7'd16: r_n16[25:0] <= temp_cal9[31:6];
						7'd17: r_n17[25:0] <= temp_cal9[31:6];
						7'd18: r_n18[25:0] <= temp_cal9[31:6];
						7'd19: r_n19[25:0] <= temp_cal9[31:6];
						7'd20: r_n20[25:0] <= temp_cal9[31:6];
						7'd21: r_n21[25:0] <= temp_cal9[31:6];
						7'd22: r_n22[25:0] <= temp_cal9[31:6];
						7'd23: r_n23[25:0] <= temp_cal9[31:6];
						7'd24: r_n24[25:0] <= temp_cal9[31:6];
						7'd25: r_n25[25:0] <= temp_cal9[31:6];
						7'd26: r_n26[25:0] <= temp_cal9[31:6];
						7'd27: r_n27[25:0] <= temp_cal9[31:6];
						7'd28: r_n28[25:0] <= temp_cal9[31:6];
						7'd29: r_n29[25:0] <= temp_cal9[31:6];
						7'd30: r_n30[25:0] <= temp_cal9[31:6];
						7'd31: r_n31[25:0] <= temp_cal9[31:6];
						7'd32: r_n32[25:0] <= temp_cal9[31:6];
						7'd33: r_n33[25:0] <= temp_cal9[31:6];
						7'd34: r_n34[25:0] <= temp_cal9[31:6];
						7'd35: r_n35[25:0] <= temp_cal9[31:6];
						7'd36: r_n36[25:0] <= temp_cal9[31:6];
						7'd37: r_n37[25:0] <= temp_cal9[31:6];
						7'd38: r_n38[25:0] <= temp_cal9[31:6];
						7'd39: r_n39[25:0] <= temp_cal9[31:6];
						7'd40: r_n40[25:0] <= temp_cal9[31:6];
						7'd41: r_n41[25:0] <= temp_cal9[31:6];
						7'd42: r_n42[25:0] <= temp_cal9[31:6];
						7'd43: r_n43[25:0] <= temp_cal9[31:6];
						7'd44: r_n44[25:0] <= temp_cal9[31:6];
						7'd45: r_n45[25:0] <= temp_cal9[31:6];
						7'd46: r_n46[25:0] <= temp_cal9[31:6];
						7'd47: r_n47[25:0] <= temp_cal9[31:6];
						
						default: Index_pos_r_n0 <= 0;
					endcase
				end
				
				
				if(temp_cal10[31] == 1) begin 
					case(Index10)
						7'd1: r_n1[25:0] <= temp_cal10[31:6] + 1;
						7'd2: r_n2[25:0] <= temp_cal10[31:6] + 1;
						7'd3: r_n3[25:0] <= temp_cal10[31:6] + 1;
						7'd4: r_n4[25:0] <= temp_cal10[31:6] + 1;
						7'd5: r_n5[25:0] <= temp_cal10[31:6] + 1;
						7'd6: r_n6[25:0] <= temp_cal10[31:6] + 1;
						7'd7: r_n7[25:0] <= temp_cal10[31:6] + 1;
						7'd8: r_n8[25:0] <= temp_cal10[31:6] + 1;
						7'd9: r_n9[25:0] <= temp_cal10[31:6] + 1;
						7'd10: r_n10[25:0] <= temp_cal10[31:6] + 1;
						7'd11: r_n11[25:0] <= temp_cal10[31:6] + 1;
						7'd12: r_n12[25:0] <= temp_cal10[31:6] + 1;
						7'd13: r_n13[25:0] <= temp_cal10[31:6] + 1;
						7'd14: r_n14[25:0] <= temp_cal10[31:6] + 1;
						7'd15: r_n15[25:0] <= temp_cal10[31:6] + 1;
						7'd16: r_n16[25:0] <= temp_cal10[31:6] + 1;
						7'd17: r_n17[25:0] <= temp_cal10[31:6] + 1;
						7'd18: r_n18[25:0] <= temp_cal10[31:6] + 1;
						7'd19: r_n19[25:0] <= temp_cal10[31:6] + 1;
						7'd20: r_n20[25:0] <= temp_cal10[31:6] + 1;
						7'd21: r_n21[25:0] <= temp_cal10[31:6] + 1;
						7'd22: r_n22[25:0] <= temp_cal10[31:6] + 1;
						7'd23: r_n23[25:0] <= temp_cal10[31:6] + 1;
						7'd24: r_n24[25:0] <= temp_cal10[31:6] + 1;
						7'd25: r_n25[25:0] <= temp_cal10[31:6] + 1;
						7'd26: r_n26[25:0] <= temp_cal10[31:6] + 1;
						7'd27: r_n27[25:0] <= temp_cal10[31:6] + 1;
						7'd28: r_n28[25:0] <= temp_cal10[31:6] + 1;
						7'd29: r_n29[25:0] <= temp_cal10[31:6] + 1;
						7'd30: r_n30[25:0] <= temp_cal10[31:6] + 1;
						7'd31: r_n31[25:0] <= temp_cal10[31:6] + 1;
						7'd32: r_n32[25:0] <= temp_cal10[31:6] + 1;
						7'd33: r_n33[25:0] <= temp_cal10[31:6] + 1;
						7'd34: r_n34[25:0] <= temp_cal10[31:6] + 1;
						7'd35: r_n35[25:0] <= temp_cal10[31:6] + 1;
						7'd36: r_n36[25:0] <= temp_cal10[31:6] + 1;
						7'd37: r_n37[25:0] <= temp_cal10[31:6] + 1;
						7'd38: r_n38[25:0] <= temp_cal10[31:6] + 1;
						7'd39: r_n39[25:0] <= temp_cal10[31:6] + 1;
						7'd40: r_n40[25:0] <= temp_cal10[31:6] + 1;
						7'd41: r_n41[25:0] <= temp_cal10[31:6] + 1;
						7'd42: r_n42[25:0] <= temp_cal10[31:6] + 1;
						7'd43: r_n43[25:0] <= temp_cal10[31:6] + 1;
						7'd44: r_n44[25:0] <= temp_cal10[31:6] + 1;
						7'd45: r_n45[25:0] <= temp_cal10[31:6] + 1;
						7'd46: r_n46[25:0] <= temp_cal10[31:6] + 1;
						7'd47: r_n47[25:0] <= temp_cal10[31:6] + 1;
						
						default: Index_pos_r_n0 <= 0;
					endcase
				end
				else begin
					case(Index10)
						7'd1: r_n1[25:0] <= temp_cal10[31:6];
						7'd2: r_n2[25:0] <= temp_cal10[31:6];
						7'd3: r_n3[25:0] <= temp_cal10[31:6];
						7'd4: r_n4[25:0] <= temp_cal10[31:6];
						7'd5: r_n5[25:0] <= temp_cal10[31:6];
						7'd6: r_n6[25:0] <= temp_cal10[31:6];
						7'd7: r_n7[25:0] <= temp_cal10[31:6];
						7'd8: r_n8[25:0] <= temp_cal10[31:6];
						7'd9: r_n9[25:0] <= temp_cal10[31:6];
						7'd10: r_n10[25:0] <= temp_cal10[31:6];
						7'd11: r_n11[25:0] <= temp_cal10[31:6];
						7'd12: r_n12[25:0] <= temp_cal10[31:6];
						7'd13: r_n13[25:0] <= temp_cal10[31:6];
						7'd14: r_n14[25:0] <= temp_cal10[31:6];
						7'd15: r_n15[25:0] <= temp_cal10[31:6];
						7'd16: r_n16[25:0] <= temp_cal10[31:6];
						7'd17: r_n17[25:0] <= temp_cal10[31:6];
						7'd18: r_n18[25:0] <= temp_cal10[31:6];
						7'd19: r_n19[25:0] <= temp_cal10[31:6];
						7'd20: r_n20[25:0] <= temp_cal10[31:6];
						7'd21: r_n21[25:0] <= temp_cal10[31:6];
						7'd22: r_n22[25:0] <= temp_cal10[31:6];
						7'd23: r_n23[25:0] <= temp_cal10[31:6];
						7'd24: r_n24[25:0] <= temp_cal10[31:6];
						7'd25: r_n25[25:0] <= temp_cal10[31:6];
						7'd26: r_n26[25:0] <= temp_cal10[31:6];
						7'd27: r_n27[25:0] <= temp_cal10[31:6];
						7'd28: r_n28[25:0] <= temp_cal10[31:6];
						7'd29: r_n29[25:0] <= temp_cal10[31:6];
						7'd30: r_n30[25:0] <= temp_cal10[31:6];
						7'd31: r_n31[25:0] <= temp_cal10[31:6];
						7'd32: r_n32[25:0] <= temp_cal10[31:6];
						7'd33: r_n33[25:0] <= temp_cal10[31:6];
						7'd34: r_n34[25:0] <= temp_cal10[31:6];
						7'd35: r_n35[25:0] <= temp_cal10[31:6];
						7'd36: r_n36[25:0] <= temp_cal10[31:6];
						7'd37: r_n37[25:0] <= temp_cal10[31:6];
						7'd38: r_n38[25:0] <= temp_cal10[31:6];
						7'd39: r_n39[25:0] <= temp_cal10[31:6];
						7'd40: r_n40[25:0] <= temp_cal10[31:6];
						7'd41: r_n41[25:0] <= temp_cal10[31:6];
						7'd42: r_n42[25:0] <= temp_cal10[31:6];
						7'd43: r_n43[25:0] <= temp_cal10[31:6];
						7'd44: r_n44[25:0] <= temp_cal10[31:6];
						7'd45: r_n45[25:0] <= temp_cal10[31:6];
						7'd46: r_n46[25:0] <= temp_cal10[31:6];
						7'd47: r_n47[25:0] <= temp_cal10[31:6];
						
						default: Index_pos_r_n0 <= 0;
					endcase
				end
				
				if(temp_cal11[31] == 1)begin 
					case(Index11)
						7'd1: r_n1[25:0] <= temp_cal11[31:6] + 1;
						7'd2: r_n2[25:0] <= temp_cal11[31:6] + 1;
						7'd3: r_n3[25:0] <= temp_cal11[31:6] + 1;
						7'd4: r_n4[25:0] <= temp_cal11[31:6] + 1;
						7'd5: r_n5[25:0] <= temp_cal11[31:6] + 1;
						7'd6: r_n6[25:0] <= temp_cal11[31:6] + 1;
						7'd7: r_n7[25:0] <= temp_cal11[31:6] + 1;
						7'd8: r_n8[25:0] <= temp_cal11[31:6] + 1;
						7'd9: r_n9[25:0] <= temp_cal11[31:6] + 1;
						7'd10: r_n10[25:0] <= temp_cal11[31:6] + 1;
						7'd11: r_n11[25:0] <= temp_cal11[31:6] + 1;
						7'd12: r_n12[25:0] <= temp_cal11[31:6] + 1;
						7'd13: r_n13[25:0] <= temp_cal11[31:6] + 1;
						7'd14: r_n14[25:0] <= temp_cal11[31:6] + 1;
						7'd15: r_n15[25:0] <= temp_cal11[31:6] + 1;
						7'd16: r_n16[25:0] <= temp_cal11[31:6] + 1;
						7'd17: r_n17[25:0] <= temp_cal11[31:6] + 1;
						7'd18: r_n18[25:0] <= temp_cal11[31:6] + 1;
						7'd19: r_n19[25:0] <= temp_cal11[31:6] + 1;
						7'd20: r_n20[25:0] <= temp_cal11[31:6] + 1;
						7'd21: r_n21[25:0] <= temp_cal11[31:6] + 1;
						7'd22: r_n22[25:0] <= temp_cal11[31:6] + 1;
						7'd23: r_n23[25:0] <= temp_cal11[31:6] + 1;
						7'd24: r_n24[25:0] <= temp_cal11[31:6] + 1;
						7'd25: r_n25[25:0] <= temp_cal11[31:6] + 1;
						7'd26: r_n26[25:0] <= temp_cal11[31:6] + 1;
						7'd27: r_n27[25:0] <= temp_cal11[31:6] + 1;
						7'd28: r_n28[25:0] <= temp_cal11[31:6] + 1;
						7'd29: r_n29[25:0] <= temp_cal11[31:6] + 1;
						7'd30: r_n30[25:0] <= temp_cal11[31:6] + 1;
						7'd31: r_n31[25:0] <= temp_cal11[31:6] + 1;
						7'd32: r_n32[25:0] <= temp_cal11[31:6] + 1;
						7'd33: r_n33[25:0] <= temp_cal11[31:6] + 1;
						7'd34: r_n34[25:0] <= temp_cal11[31:6] + 1;
						7'd35: r_n35[25:0] <= temp_cal11[31:6] + 1;
						7'd36: r_n36[25:0] <= temp_cal11[31:6] + 1;
						7'd37: r_n37[25:0] <= temp_cal11[31:6] + 1;
						7'd38: r_n38[25:0] <= temp_cal11[31:6] + 1;
						7'd39: r_n39[25:0] <= temp_cal11[31:6] + 1;
						7'd40: r_n40[25:0] <= temp_cal11[31:6] + 1;
						7'd41: r_n41[25:0] <= temp_cal11[31:6] + 1;
						7'd42: r_n42[25:0] <= temp_cal11[31:6] + 1;
						7'd43: r_n43[25:0] <= temp_cal11[31:6] + 1;
						7'd44: r_n44[25:0] <= temp_cal11[31:6] + 1;
						7'd45: r_n45[25:0] <= temp_cal11[31:6] + 1;
						7'd46: r_n46[25:0] <= temp_cal11[31:6] + 1;
						7'd47: r_n47[25:0] <= temp_cal11[31:6] + 1;
						
						default: Index_pos_r_n0 <= 0;
					endcase
				end
				else begin
					case(Index11)
						7'd1: r_n1[25:0] <= temp_cal11[31:6];
						7'd2: r_n2[25:0] <= temp_cal11[31:6];
						7'd3: r_n3[25:0] <= temp_cal11[31:6];
						7'd4: r_n4[25:0] <= temp_cal11[31:6];
						7'd5: r_n5[25:0] <= temp_cal11[31:6];
						7'd6: r_n6[25:0] <= temp_cal11[31:6];
						7'd7: r_n7[25:0] <= temp_cal11[31:6];
						7'd8: r_n8[25:0] <= temp_cal11[31:6];
						7'd9: r_n9[25:0] <= temp_cal11[31:6];
						7'd10: r_n10[25:0] <= temp_cal11[31:6];
						7'd11: r_n11[25:0] <= temp_cal11[31:6];
						7'd12: r_n12[25:0] <= temp_cal11[31:6];
						7'd13: r_n13[25:0] <= temp_cal11[31:6];
						7'd14: r_n14[25:0] <= temp_cal11[31:6];
						7'd15: r_n15[25:0] <= temp_cal11[31:6];
						7'd16: r_n16[25:0] <= temp_cal11[31:6];
						7'd17: r_n17[25:0] <= temp_cal11[31:6];
						7'd18: r_n18[25:0] <= temp_cal11[31:6];
						7'd19: r_n19[25:0] <= temp_cal11[31:6];
						7'd20: r_n20[25:0] <= temp_cal11[31:6];
						7'd21: r_n21[25:0] <= temp_cal11[31:6];
						7'd22: r_n22[25:0] <= temp_cal11[31:6];
						7'd23: r_n23[25:0] <= temp_cal11[31:6];
						7'd24: r_n24[25:0] <= temp_cal11[31:6];
						7'd25: r_n25[25:0] <= temp_cal11[31:6];
						7'd26: r_n26[25:0] <= temp_cal11[31:6];
						7'd27: r_n27[25:0] <= temp_cal11[31:6];
						7'd28: r_n28[25:0] <= temp_cal11[31:6];
						7'd29: r_n29[25:0] <= temp_cal11[31:6];
						7'd30: r_n30[25:0] <= temp_cal11[31:6];
						7'd31: r_n31[25:0] <= temp_cal11[31:6];
						7'd32: r_n32[25:0] <= temp_cal11[31:6];
						7'd33: r_n33[25:0] <= temp_cal11[31:6];
						7'd34: r_n34[25:0] <= temp_cal11[31:6];
						7'd35: r_n35[25:0] <= temp_cal11[31:6];
						7'd36: r_n36[25:0] <= temp_cal11[31:6];
						7'd37: r_n37[25:0] <= temp_cal11[31:6];
						7'd38: r_n38[25:0] <= temp_cal11[31:6];
						7'd39: r_n39[25:0] <= temp_cal11[31:6];
						7'd40: r_n40[25:0] <= temp_cal11[31:6];
						7'd41: r_n41[25:0] <= temp_cal11[31:6];
						7'd42: r_n42[25:0] <= temp_cal11[31:6];
						7'd43: r_n43[25:0] <= temp_cal11[31:6];
						7'd44: r_n44[25:0] <= temp_cal11[31:6];
						7'd45: r_n45[25:0] <= temp_cal11[31:6];
						7'd46: r_n46[25:0] <= temp_cal11[31:6];
						7'd47: r_n47[25:0] <= temp_cal11[31:6];
						
						default: Index_pos_r_n0 <= 0;
					endcase
				end
				
				if(temp_cal12[31] == 1) begin
					case(Index12)
						7'd1: r_n1[25:0] <= temp_cal12[31:6] + 1;
						7'd2: r_n2[25:0] <= temp_cal12[31:6] + 1;
						7'd3: r_n3[25:0] <= temp_cal12[31:6] + 1;
						7'd4: r_n4[25:0] <= temp_cal12[31:6] + 1;
						7'd5: r_n5[25:0] <= temp_cal12[31:6] + 1;
						7'd6: r_n6[25:0] <= temp_cal12[31:6] + 1;
						7'd7: r_n7[25:0] <= temp_cal12[31:6] + 1;
						7'd8: r_n8[25:0] <= temp_cal12[31:6] + 1;
						7'd9: r_n9[25:0] <= temp_cal12[31:6] + 1;
						7'd10: r_n10[25:0] <= temp_cal12[31:6] + 1;
						7'd11: r_n11[25:0] <= temp_cal12[31:6] + 1;
						7'd12: r_n12[25:0] <= temp_cal12[31:6] + 1;
						7'd13: r_n13[25:0] <= temp_cal12[31:6] + 1;
						7'd14: r_n14[25:0] <= temp_cal12[31:6] + 1;
						7'd15: r_n15[25:0] <= temp_cal12[31:6] + 1;
						7'd16: r_n16[25:0] <= temp_cal12[31:6] + 1;
						7'd17: r_n17[25:0] <= temp_cal12[31:6] + 1;
						7'd18: r_n18[25:0] <= temp_cal12[31:6] + 1;
						7'd19: r_n19[25:0] <= temp_cal12[31:6] + 1;
						7'd20: r_n20[25:0] <= temp_cal12[31:6] + 1;
						7'd21: r_n21[25:0] <= temp_cal12[31:6] + 1;
						7'd22: r_n22[25:0] <= temp_cal12[31:6] + 1;
						7'd23: r_n23[25:0] <= temp_cal12[31:6] + 1;
						7'd24: r_n24[25:0] <= temp_cal12[31:6] + 1;
						7'd25: r_n25[25:0] <= temp_cal12[31:6] + 1;
						7'd26: r_n26[25:0] <= temp_cal12[31:6] + 1;
						7'd27: r_n27[25:0] <= temp_cal12[31:6] + 1;
						7'd28: r_n28[25:0] <= temp_cal12[31:6] + 1;
						7'd29: r_n29[25:0] <= temp_cal12[31:6] + 1;
						7'd30: r_n30[25:0] <= temp_cal12[31:6] + 1;
						7'd31: r_n31[25:0] <= temp_cal12[31:6] + 1;
						7'd32: r_n32[25:0] <= temp_cal12[31:6] + 1;
						7'd33: r_n33[25:0] <= temp_cal12[31:6] + 1;
						7'd34: r_n34[25:0] <= temp_cal12[31:6] + 1;
						7'd35: r_n35[25:0] <= temp_cal12[31:6] + 1;
						7'd36: r_n36[25:0] <= temp_cal12[31:6] + 1;
						7'd37: r_n37[25:0] <= temp_cal12[31:6] + 1;
						7'd38: r_n38[25:0] <= temp_cal12[31:6] + 1;
						7'd39: r_n39[25:0] <= temp_cal12[31:6] + 1;
						7'd40: r_n40[25:0] <= temp_cal12[31:6] + 1;
						7'd41: r_n41[25:0] <= temp_cal12[31:6] + 1;
						7'd42: r_n42[25:0] <= temp_cal12[31:6] + 1;
						7'd43: r_n43[25:0] <= temp_cal12[31:6] + 1;
						7'd44: r_n44[25:0] <= temp_cal12[31:6] + 1;
						7'd45: r_n45[25:0] <= temp_cal12[31:6] + 1;
						7'd46: r_n46[25:0] <= temp_cal12[31:6] + 1;
						7'd47: r_n47[25:0] <= temp_cal12[31:6] + 1;
						
						default: Index_pos_r_n0 <= 0;
					endcase
				end
				else begin
					case(Index12)
						7'd1: r_n1[25:0] <= temp_cal12[31:6];
						7'd2: r_n2[25:0] <= temp_cal12[31:6];
						7'd3: r_n3[25:0] <= temp_cal12[31:6];
						7'd4: r_n4[25:0] <= temp_cal12[31:6];
						7'd5: r_n5[25:0] <= temp_cal12[31:6];
						7'd6: r_n6[25:0] <= temp_cal12[31:6];
						7'd7: r_n7[25:0] <= temp_cal12[31:6];
						7'd8: r_n8[25:0] <= temp_cal12[31:6];
						7'd9: r_n9[25:0] <= temp_cal12[31:6];
						7'd10: r_n10[25:0] <= temp_cal12[31:6];
						7'd11: r_n11[25:0] <= temp_cal12[31:6];
						7'd12: r_n12[25:0] <= temp_cal12[31:6];
						7'd13: r_n13[25:0] <= temp_cal12[31:6];
						7'd14: r_n14[25:0] <= temp_cal12[31:6];
						7'd15: r_n15[25:0] <= temp_cal12[31:6];
						7'd16: r_n16[25:0] <= temp_cal12[31:6];
						7'd17: r_n17[25:0] <= temp_cal12[31:6];
						7'd18: r_n18[25:0] <= temp_cal12[31:6];
						7'd19: r_n19[25:0] <= temp_cal12[31:6];
						7'd20: r_n20[25:0] <= temp_cal12[31:6];
						7'd21: r_n21[25:0] <= temp_cal12[31:6];
						7'd22: r_n22[25:0] <= temp_cal12[31:6];
						7'd23: r_n23[25:0] <= temp_cal12[31:6];
						7'd24: r_n24[25:0] <= temp_cal12[31:6];
						7'd25: r_n25[25:0] <= temp_cal12[31:6];
						7'd26: r_n26[25:0] <= temp_cal12[31:6];
						7'd27: r_n27[25:0] <= temp_cal12[31:6];
						7'd28: r_n28[25:0] <= temp_cal12[31:6];
						7'd29: r_n29[25:0] <= temp_cal12[31:6];
						7'd30: r_n30[25:0] <= temp_cal12[31:6];
						7'd31: r_n31[25:0] <= temp_cal12[31:6];
						7'd32: r_n32[25:0] <= temp_cal12[31:6];
						7'd33: r_n33[25:0] <= temp_cal12[31:6];
						7'd34: r_n34[25:0] <= temp_cal12[31:6];
						7'd35: r_n35[25:0] <= temp_cal12[31:6];
						7'd36: r_n36[25:0] <= temp_cal12[31:6];
						7'd37: r_n37[25:0] <= temp_cal12[31:6];
						7'd38: r_n38[25:0] <= temp_cal12[31:6];
						7'd39: r_n39[25:0] <= temp_cal12[31:6];
						7'd40: r_n40[25:0] <= temp_cal12[31:6];
						7'd41: r_n41[25:0] <= temp_cal12[31:6];
						7'd42: r_n42[25:0] <= temp_cal12[31:6];
						7'd43: r_n43[25:0] <= temp_cal12[31:6];
						7'd44: r_n44[25:0] <= temp_cal12[31:6];
						7'd45: r_n45[25:0] <= temp_cal12[31:6];
						7'd46: r_n46[25:0] <= temp_cal12[31:6];
						7'd47: r_n47[25:0] <= temp_cal12[31:6];
						
						default: Index_pos_r_n0 <= 0;
					endcase
				end
				
				if(temp_cal13[31] == 1) begin
					case(Index13)
						7'd1: r_n1[25:0] <= temp_cal13[31:6] + 1;
						7'd2: r_n2[25:0] <= temp_cal13[31:6] + 1;
						7'd3: r_n3[25:0] <= temp_cal13[31:6] + 1;
						7'd4: r_n4[25:0] <= temp_cal13[31:6] + 1;
						7'd5: r_n5[25:0] <= temp_cal13[31:6] + 1;
						7'd6: r_n6[25:0] <= temp_cal13[31:6] + 1;
						7'd7: r_n7[25:0] <= temp_cal13[31:6] + 1;
						7'd8: r_n8[25:0] <= temp_cal13[31:6] + 1;
						7'd9: r_n9[25:0] <= temp_cal13[31:6] + 1;
						7'd10: r_n10[25:0] <= temp_cal13[31:6] + 1;
						7'd11: r_n11[25:0] <= temp_cal13[31:6] + 1;
						7'd12: r_n12[25:0] <= temp_cal13[31:6] + 1;
						7'd13: r_n13[25:0] <= temp_cal13[31:6] + 1;
						7'd14: r_n14[25:0] <= temp_cal13[31:6] + 1;
						7'd15: r_n15[25:0] <= temp_cal13[31:6] + 1;
						7'd16: r_n16[25:0] <= temp_cal13[31:6] + 1;
						7'd17: r_n17[25:0] <= temp_cal13[31:6] + 1;
						7'd18: r_n18[25:0] <= temp_cal13[31:6] + 1;
						7'd19: r_n19[25:0] <= temp_cal13[31:6] + 1;
						7'd20: r_n20[25:0] <= temp_cal13[31:6] + 1;
						7'd21: r_n21[25:0] <= temp_cal13[31:6] + 1;
						7'd22: r_n22[25:0] <= temp_cal13[31:6] + 1;
						7'd23: r_n23[25:0] <= temp_cal13[31:6] + 1;
						7'd24: r_n24[25:0] <= temp_cal13[31:6] + 1;
						7'd25: r_n25[25:0] <= temp_cal13[31:6] + 1;
						7'd26: r_n26[25:0] <= temp_cal13[31:6] + 1;
						7'd27: r_n27[25:0] <= temp_cal13[31:6] + 1;
						7'd28: r_n28[25:0] <= temp_cal13[31:6] + 1;
						7'd29: r_n29[25:0] <= temp_cal13[31:6] + 1;
						7'd30: r_n30[25:0] <= temp_cal13[31:6] + 1;
						7'd31: r_n31[25:0] <= temp_cal13[31:6] + 1;
						7'd32: r_n32[25:0] <= temp_cal13[31:6] + 1;
						7'd33: r_n33[25:0] <= temp_cal13[31:6] + 1;
						7'd34: r_n34[25:0] <= temp_cal13[31:6] + 1;
						7'd35: r_n35[25:0] <= temp_cal13[31:6] + 1;
						7'd36: r_n36[25:0] <= temp_cal13[31:6] + 1;
						7'd37: r_n37[25:0] <= temp_cal13[31:6] + 1;
						7'd38: r_n38[25:0] <= temp_cal13[31:6] + 1;
						7'd39: r_n39[25:0] <= temp_cal13[31:6] + 1;
						7'd40: r_n40[25:0] <= temp_cal13[31:6] + 1;
						7'd41: r_n41[25:0] <= temp_cal13[31:6] + 1;
						7'd42: r_n42[25:0] <= temp_cal13[31:6] + 1;
						7'd43: r_n43[25:0] <= temp_cal13[31:6] + 1;
						7'd44: r_n44[25:0] <= temp_cal13[31:6] + 1;
						7'd45: r_n45[25:0] <= temp_cal13[31:6] + 1;
						7'd46: r_n46[25:0] <= temp_cal13[31:6] + 1;
						7'd47: r_n47[25:0] <= temp_cal13[31:6] + 1;
						
						default: Index_pos_r_n0 <= 0;
					endcase
				end
				else begin
					case(Index13)
						7'd1: r_n1[25:0] <= temp_cal13[31:6];
						7'd2: r_n2[25:0] <= temp_cal13[31:6];
						7'd3: r_n3[25:0] <= temp_cal13[31:6];
						7'd4: r_n4[25:0] <= temp_cal13[31:6];
						7'd5: r_n5[25:0] <= temp_cal13[31:6];
						7'd6: r_n6[25:0] <= temp_cal13[31:6];
						7'd7: r_n7[25:0] <= temp_cal13[31:6];
						7'd8: r_n8[25:0] <= temp_cal13[31:6];
						7'd9: r_n9[25:0] <= temp_cal13[31:6];
						7'd10: r_n10[25:0] <= temp_cal13[31:6];
						7'd11: r_n11[25:0] <= temp_cal13[31:6];
						7'd12: r_n12[25:0] <= temp_cal13[31:6];
						7'd13: r_n13[25:0] <= temp_cal13[31:6];
						7'd14: r_n14[25:0] <= temp_cal13[31:6];
						7'd15: r_n15[25:0] <= temp_cal13[31:6];
						7'd16: r_n16[25:0] <= temp_cal13[31:6];
						7'd17: r_n17[25:0] <= temp_cal13[31:6];
						7'd18: r_n18[25:0] <= temp_cal13[31:6];
						7'd19: r_n19[25:0] <= temp_cal13[31:6];
						7'd20: r_n20[25:0] <= temp_cal13[31:6];
						7'd21: r_n21[25:0] <= temp_cal13[31:6];
						7'd22: r_n22[25:0] <= temp_cal13[31:6];
						7'd23: r_n23[25:0] <= temp_cal13[31:6];
						7'd24: r_n24[25:0] <= temp_cal13[31:6];
						7'd25: r_n25[25:0] <= temp_cal13[31:6];
						7'd26: r_n26[25:0] <= temp_cal13[31:6];
						7'd27: r_n27[25:0] <= temp_cal13[31:6];
						7'd28: r_n28[25:0] <= temp_cal13[31:6];
						7'd29: r_n29[25:0] <= temp_cal13[31:6];
						7'd30: r_n30[25:0] <= temp_cal13[31:6];
						7'd31: r_n31[25:0] <= temp_cal13[31:6];
						7'd32: r_n32[25:0] <= temp_cal13[31:6];
						7'd33: r_n33[25:0] <= temp_cal13[31:6];
						7'd34: r_n34[25:0] <= temp_cal13[31:6];
						7'd35: r_n35[25:0] <= temp_cal13[31:6];
						7'd36: r_n36[25:0] <= temp_cal13[31:6];
						7'd37: r_n37[25:0] <= temp_cal13[31:6];
						7'd38: r_n38[25:0] <= temp_cal13[31:6];
						7'd39: r_n39[25:0] <= temp_cal13[31:6];
						7'd40: r_n40[25:0] <= temp_cal13[31:6];
						7'd41: r_n41[25:0] <= temp_cal13[31:6];
						7'd42: r_n42[25:0] <= temp_cal13[31:6];
						7'd43: r_n43[25:0] <= temp_cal13[31:6];
						7'd44: r_n44[25:0] <= temp_cal13[31:6];
						7'd45: r_n45[25:0] <= temp_cal13[31:6];
						7'd46: r_n46[25:0] <= temp_cal13[31:6];
						7'd47: r_n47[25:0] <= temp_cal13[31:6];
						
						default: Index_pos_r_n0 <= 0;
					endcase
				end
				
				if(temp_cal14[31] == 1)begin
					case(Index14)
						7'd1: r_n1[25:0] <= temp_cal14[31:6] + 1;
						7'd2: r_n2[25:0] <= temp_cal14[31:6] + 1;
						7'd3: r_n3[25:0] <= temp_cal14[31:6] + 1;
						7'd4: r_n4[25:0] <= temp_cal14[31:6] + 1;
						7'd5: r_n5[25:0] <= temp_cal14[31:6] + 1;
						7'd6: r_n6[25:0] <= temp_cal14[31:6] + 1;
						7'd7: r_n7[25:0] <= temp_cal14[31:6] + 1;
						7'd8: r_n8[25:0] <= temp_cal14[31:6] + 1;
						7'd9: r_n9[25:0] <= temp_cal14[31:6] + 1;
						7'd10: r_n10[25:0] <= temp_cal14[31:6] + 1;
						7'd11: r_n11[25:0] <= temp_cal14[31:6] + 1;
						7'd12: r_n12[25:0] <= temp_cal14[31:6] + 1;
						7'd13: r_n13[25:0] <= temp_cal14[31:6] + 1;
						7'd14: r_n14[25:0] <= temp_cal14[31:6] + 1;
						7'd15: r_n15[25:0] <= temp_cal14[31:6] + 1;
						7'd16: r_n16[25:0] <= temp_cal14[31:6] + 1;
						7'd17: r_n17[25:0] <= temp_cal14[31:6] + 1;
						7'd18: r_n18[25:0] <= temp_cal14[31:6] + 1;
						7'd19: r_n19[25:0] <= temp_cal14[31:6] + 1;
						7'd20: r_n20[25:0] <= temp_cal14[31:6] + 1;
						7'd21: r_n21[25:0] <= temp_cal14[31:6] + 1;
						7'd22: r_n22[25:0] <= temp_cal14[31:6] + 1;
						7'd23: r_n23[25:0] <= temp_cal14[31:6] + 1;
						7'd24: r_n24[25:0] <= temp_cal14[31:6] + 1;
						7'd25: r_n25[25:0] <= temp_cal14[31:6] + 1;
						7'd26: r_n26[25:0] <= temp_cal14[31:6] + 1;
						7'd27: r_n27[25:0] <= temp_cal14[31:6] + 1;
						7'd28: r_n28[25:0] <= temp_cal14[31:6] + 1;
						7'd29: r_n29[25:0] <= temp_cal14[31:6] + 1;
						7'd30: r_n30[25:0] <= temp_cal14[31:6] + 1;
						7'd31: r_n31[25:0] <= temp_cal14[31:6] + 1;
						7'd32: r_n32[25:0] <= temp_cal14[31:6] + 1;
						7'd33: r_n33[25:0] <= temp_cal14[31:6] + 1;
						7'd34: r_n34[25:0] <= temp_cal14[31:6] + 1;
						7'd35: r_n35[25:0] <= temp_cal14[31:6] + 1;
						7'd36: r_n36[25:0] <= temp_cal14[31:6] + 1;
						7'd37: r_n37[25:0] <= temp_cal14[31:6] + 1;
						7'd38: r_n38[25:0] <= temp_cal14[31:6] + 1;
						7'd39: r_n39[25:0] <= temp_cal14[31:6] + 1;
						7'd40: r_n40[25:0] <= temp_cal14[31:6] + 1;
						7'd41: r_n41[25:0] <= temp_cal14[31:6] + 1;
						7'd42: r_n42[25:0] <= temp_cal14[31:6] + 1;
						7'd43: r_n43[25:0] <= temp_cal14[31:6] + 1;
						7'd44: r_n44[25:0] <= temp_cal14[31:6] + 1;
						7'd45: r_n45[25:0] <= temp_cal14[31:6] + 1;
						7'd46: r_n46[25:0] <= temp_cal14[31:6] + 1;
						7'd47: r_n47[25:0] <= temp_cal14[31:6] + 1;
						
						default: Index_pos_r_n0 <= 0;
					endcase
				end
				else begin
					case(Index14)
						7'd1: r_n1[25:0] <= temp_cal14[31:6];
						7'd2: r_n2[25:0] <= temp_cal14[31:6];
						7'd3: r_n3[25:0] <= temp_cal14[31:6];
						7'd4: r_n4[25:0] <= temp_cal14[31:6];
						7'd5: r_n5[25:0] <= temp_cal14[31:6];
						7'd6: r_n6[25:0] <= temp_cal14[31:6];
						7'd7: r_n7[25:0] <= temp_cal14[31:6];
						7'd8: r_n8[25:0] <= temp_cal14[31:6];
						7'd9: r_n9[25:0] <= temp_cal14[31:6];
						7'd10: r_n10[25:0] <= temp_cal14[31:6];
						7'd11: r_n11[25:0] <= temp_cal14[31:6];
						7'd12: r_n12[25:0] <= temp_cal14[31:6];
						7'd13: r_n13[25:0] <= temp_cal14[31:6];
						7'd14: r_n14[25:0] <= temp_cal14[31:6];
						7'd15: r_n15[25:0] <= temp_cal14[31:6];
						7'd16: r_n16[25:0] <= temp_cal14[31:6];
						7'd17: r_n17[25:0] <= temp_cal14[31:6];
						7'd18: r_n18[25:0] <= temp_cal14[31:6];
						7'd19: r_n19[25:0] <= temp_cal14[31:6];
						7'd20: r_n20[25:0] <= temp_cal14[31:6];
						7'd21: r_n21[25:0] <= temp_cal14[31:6];
						7'd22: r_n22[25:0] <= temp_cal14[31:6];
						7'd23: r_n23[25:0] <= temp_cal14[31:6];
						7'd24: r_n24[25:0] <= temp_cal14[31:6];
						7'd25: r_n25[25:0] <= temp_cal14[31:6];
						7'd26: r_n26[25:0] <= temp_cal14[31:6];
						7'd27: r_n27[25:0] <= temp_cal14[31:6];
						7'd28: r_n28[25:0] <= temp_cal14[31:6];
						7'd29: r_n29[25:0] <= temp_cal14[31:6];
						7'd30: r_n30[25:0] <= temp_cal14[31:6];
						7'd31: r_n31[25:0] <= temp_cal14[31:6];
						7'd32: r_n32[25:0] <= temp_cal14[31:6];
						7'd33: r_n33[25:0] <= temp_cal14[31:6];
						7'd34: r_n34[25:0] <= temp_cal14[31:6];
						7'd35: r_n35[25:0] <= temp_cal14[31:6];
						7'd36: r_n36[25:0] <= temp_cal14[31:6];
						7'd37: r_n37[25:0] <= temp_cal14[31:6];
						7'd38: r_n38[25:0] <= temp_cal14[31:6];
						7'd39: r_n39[25:0] <= temp_cal14[31:6];
						7'd40: r_n40[25:0] <= temp_cal14[31:6];
						7'd41: r_n41[25:0] <= temp_cal14[31:6];
						7'd42: r_n42[25:0] <= temp_cal14[31:6];
						7'd43: r_n43[25:0] <= temp_cal14[31:6];
						7'd44: r_n44[25:0] <= temp_cal14[31:6];
						7'd45: r_n45[25:0] <= temp_cal14[31:6];
						7'd46: r_n46[25:0] <= temp_cal14[31:6];
						7'd47: r_n47[25:0] <= temp_cal14[31:6];
						
						default: Index_pos_r_n0 <= 0;
					endcase
				end
				
				if(temp_cal15[31] == 1)begin 
					case(Index15)
						7'd1: r_n1[25:0] <= temp_cal15[31:6] + 1;
						7'd2: r_n2[25:0] <= temp_cal15[31:6] + 1;
						7'd3: r_n3[25:0] <= temp_cal15[31:6] + 1;
						7'd4: r_n4[25:0] <= temp_cal15[31:6] + 1;
						7'd5: r_n5[25:0] <= temp_cal15[31:6] + 1;
						7'd6: r_n6[25:0] <= temp_cal15[31:6] + 1;
						7'd7: r_n7[25:0] <= temp_cal15[31:6] + 1;
						7'd8: r_n8[25:0] <= temp_cal15[31:6] + 1;
						7'd9: r_n9[25:0] <= temp_cal15[31:6] + 1;
						7'd10: r_n10[25:0] <= temp_cal15[31:6] + 1;
						7'd11: r_n11[25:0] <= temp_cal15[31:6] + 1;
						7'd12: r_n12[25:0] <= temp_cal15[31:6] + 1;
						7'd13: r_n13[25:0] <= temp_cal15[31:6] + 1;
						7'd14: r_n14[25:0] <= temp_cal15[31:6] + 1;
						7'd15: r_n15[25:0] <= temp_cal15[31:6] + 1;
						7'd16: r_n16[25:0] <= temp_cal15[31:6] + 1;
						7'd17: r_n17[25:0] <= temp_cal15[31:6] + 1;
						7'd18: r_n18[25:0] <= temp_cal15[31:6] + 1;
						7'd19: r_n19[25:0] <= temp_cal15[31:6] + 1;
						7'd20: r_n20[25:0] <= temp_cal15[31:6] + 1;
						7'd21: r_n21[25:0] <= temp_cal15[31:6] + 1;
						7'd22: r_n22[25:0] <= temp_cal15[31:6] + 1;
						7'd23: r_n23[25:0] <= temp_cal15[31:6] + 1;
						7'd24: r_n24[25:0] <= temp_cal15[31:6] + 1;
						7'd25: r_n25[25:0] <= temp_cal15[31:6] + 1;
						7'd26: r_n26[25:0] <= temp_cal15[31:6] + 1;
						7'd27: r_n27[25:0] <= temp_cal15[31:6] + 1;
						7'd28: r_n28[25:0] <= temp_cal15[31:6] + 1;
						7'd29: r_n29[25:0] <= temp_cal15[31:6] + 1;
						7'd30: r_n30[25:0] <= temp_cal15[31:6] + 1;
						7'd31: r_n31[25:0] <= temp_cal15[31:6] + 1;
						7'd32: r_n32[25:0] <= temp_cal15[31:6] + 1;
						7'd33: r_n33[25:0] <= temp_cal15[31:6] + 1;
						7'd34: r_n34[25:0] <= temp_cal15[31:6] + 1;
						7'd35: r_n35[25:0] <= temp_cal15[31:6] + 1;
						7'd36: r_n36[25:0] <= temp_cal15[31:6] + 1;
						7'd37: r_n37[25:0] <= temp_cal15[31:6] + 1;
						7'd38: r_n38[25:0] <= temp_cal15[31:6] + 1;
						7'd39: r_n39[25:0] <= temp_cal15[31:6] + 1;
						7'd40: r_n40[25:0] <= temp_cal15[31:6] + 1;
						7'd41: r_n41[25:0] <= temp_cal15[31:6] + 1;
						7'd42: r_n42[25:0] <= temp_cal15[31:6] + 1;
						7'd43: r_n43[25:0] <= temp_cal15[31:6] + 1;
						7'd44: r_n44[25:0] <= temp_cal15[31:6] + 1;
						7'd45: r_n45[25:0] <= temp_cal15[31:6] + 1;
						7'd46: r_n46[25:0] <= temp_cal15[31:6] + 1;
						7'd47: r_n47[25:0] <= temp_cal15[31:6] + 1;
						
						default: Index_pos_r_n0 <= 0;
					endcase
				end
				else begin
					case(Index15)
						7'd1: r_n1[25:0] <= temp_cal15[31:6];
						7'd2: r_n2[25:0] <= temp_cal15[31:6];
						7'd3: r_n3[25:0] <= temp_cal15[31:6];
						7'd4: r_n4[25:0] <= temp_cal15[31:6];
						7'd5: r_n5[25:0] <= temp_cal15[31:6];
						7'd6: r_n6[25:0] <= temp_cal15[31:6];
						7'd7: r_n7[25:0] <= temp_cal15[31:6];
						7'd8: r_n8[25:0] <= temp_cal15[31:6];
						7'd9: r_n9[25:0] <= temp_cal15[31:6];
						7'd10: r_n10[25:0] <= temp_cal15[31:6];
						7'd11: r_n11[25:0] <= temp_cal15[31:6];
						7'd12: r_n12[25:0] <= temp_cal15[31:6];
						7'd13: r_n13[25:0] <= temp_cal15[31:6];
						7'd14: r_n14[25:0] <= temp_cal15[31:6];
						7'd15: r_n15[25:0] <= temp_cal15[31:6];
						7'd16: r_n16[25:0] <= temp_cal15[31:6];
						7'd17: r_n17[25:0] <= temp_cal15[31:6];
						7'd18: r_n18[25:0] <= temp_cal15[31:6];
						7'd19: r_n19[25:0] <= temp_cal15[31:6];
						7'd20: r_n20[25:0] <= temp_cal15[31:6];
						7'd21: r_n21[25:0] <= temp_cal15[31:6];
						7'd22: r_n22[25:0] <= temp_cal15[31:6];
						7'd23: r_n23[25:0] <= temp_cal15[31:6];
						7'd24: r_n24[25:0] <= temp_cal15[31:6];
						7'd25: r_n25[25:0] <= temp_cal15[31:6];
						7'd26: r_n26[25:0] <= temp_cal15[31:6];
						7'd27: r_n27[25:0] <= temp_cal15[31:6];
						7'd28: r_n28[25:0] <= temp_cal15[31:6];
						7'd29: r_n29[25:0] <= temp_cal15[31:6];
						7'd30: r_n30[25:0] <= temp_cal15[31:6];
						7'd31: r_n31[25:0] <= temp_cal15[31:6];
						7'd32: r_n32[25:0] <= temp_cal15[31:6];
						7'd33: r_n33[25:0] <= temp_cal15[31:6];
						7'd34: r_n34[25:0] <= temp_cal15[31:6];
						7'd35: r_n35[25:0] <= temp_cal15[31:6];
						7'd36: r_n36[25:0] <= temp_cal15[31:6];
						7'd37: r_n37[25:0] <= temp_cal15[31:6];
						7'd38: r_n38[25:0] <= temp_cal15[31:6];
						7'd39: r_n39[25:0] <= temp_cal15[31:6];
						7'd40: r_n40[25:0] <= temp_cal15[31:6];
						7'd41: r_n41[25:0] <= temp_cal15[31:6];
						7'd42: r_n42[25:0] <= temp_cal15[31:6];
						7'd43: r_n43[25:0] <= temp_cal15[31:6];
						7'd44: r_n44[25:0] <= temp_cal15[31:6];
						7'd45: r_n45[25:0] <= temp_cal15[31:6];
						7'd46: r_n46[25:0] <= temp_cal15[31:6];
						7'd47: r_n47[25:0] <= temp_cal15[31:6];
						
						default: Index_pos_r_n0 <= 0;
					endcase
				end
				
				if(temp_cal16[31] == 1)begin
					case(Index16)
						7'd1: r_n1[25:0] <= temp_cal16[31:6] + 1;
						7'd2: r_n2[25:0] <= temp_cal16[31:6] + 1;
						7'd3: r_n3[25:0] <= temp_cal16[31:6] + 1;
						7'd4: r_n4[25:0] <= temp_cal16[31:6] + 1;
						7'd5: r_n5[25:0] <= temp_cal16[31:6] + 1;
						7'd6: r_n6[25:0] <= temp_cal16[31:6] + 1;
						7'd7: r_n7[25:0] <= temp_cal16[31:6] + 1;
						7'd8: r_n8[25:0] <= temp_cal16[31:6] + 1;
						7'd9: r_n9[25:0] <= temp_cal16[31:6] + 1;
						7'd10: r_n10[25:0] <= temp_cal16[31:6] + 1;
						7'd11: r_n11[25:0] <= temp_cal16[31:6] + 1;
						7'd12: r_n12[25:0] <= temp_cal16[31:6] + 1;
						7'd13: r_n13[25:0] <= temp_cal16[31:6] + 1;
						7'd14: r_n14[25:0] <= temp_cal16[31:6] + 1;
						7'd15: r_n15[25:0] <= temp_cal16[31:6] + 1;
						7'd16: r_n16[25:0] <= temp_cal16[31:6] + 1;
						7'd17: r_n17[25:0] <= temp_cal16[31:6] + 1;
						7'd18: r_n18[25:0] <= temp_cal16[31:6] + 1;
						7'd19: r_n19[25:0] <= temp_cal16[31:6] + 1;
						7'd20: r_n20[25:0] <= temp_cal16[31:6] + 1;
						7'd21: r_n21[25:0] <= temp_cal16[31:6] + 1;
						7'd22: r_n22[25:0] <= temp_cal16[31:6] + 1;
						7'd23: r_n23[25:0] <= temp_cal16[31:6] + 1;
						7'd24: r_n24[25:0] <= temp_cal16[31:6] + 1;
						7'd25: r_n25[25:0] <= temp_cal16[31:6] + 1;
						7'd26: r_n26[25:0] <= temp_cal16[31:6] + 1;
						7'd27: r_n27[25:0] <= temp_cal16[31:6] + 1;
						7'd28: r_n28[25:0] <= temp_cal16[31:6] + 1;
						7'd29: r_n29[25:0] <= temp_cal16[31:6] + 1;
						7'd30: r_n30[25:0] <= temp_cal16[31:6] + 1;
						7'd31: r_n31[25:0] <= temp_cal16[31:6] + 1;
						7'd32: r_n32[25:0] <= temp_cal16[31:6] + 1;
						7'd33: r_n33[25:0] <= temp_cal16[31:6] + 1;
						7'd34: r_n34[25:0] <= temp_cal16[31:6] + 1;
						7'd35: r_n35[25:0] <= temp_cal16[31:6] + 1;
						7'd36: r_n36[25:0] <= temp_cal16[31:6] + 1;
						7'd37: r_n37[25:0] <= temp_cal16[31:6] + 1;
						7'd38: r_n38[25:0] <= temp_cal16[31:6] + 1;
						7'd39: r_n39[25:0] <= temp_cal16[31:6] + 1;
						7'd40: r_n40[25:0] <= temp_cal16[31:6] + 1;
						7'd41: r_n41[25:0] <= temp_cal16[31:6] + 1;
						7'd42: r_n42[25:0] <= temp_cal16[31:6] + 1;
						7'd43: r_n43[25:0] <= temp_cal16[31:6] + 1;
						7'd44: r_n44[25:0] <= temp_cal16[31:6] + 1;
						7'd45: r_n45[25:0] <= temp_cal16[31:6] + 1;
						7'd46: r_n46[25:0] <= temp_cal16[31:6] + 1;
						7'd47: r_n47[25:0] <= temp_cal16[31:6] + 1;
						
						default: Index_pos_r_n0 <= 0;
					endcase
				end
				else begin
					case(Index16)
						7'd1: r_n1[25:0] <= temp_cal16[31:6];
						7'd2: r_n2[25:0] <= temp_cal16[31:6];
						7'd3: r_n3[25:0] <= temp_cal16[31:6];
						7'd4: r_n4[25:0] <= temp_cal16[31:6];
						7'd5: r_n5[25:0] <= temp_cal16[31:6];
						7'd6: r_n6[25:0] <= temp_cal16[31:6];
						7'd7: r_n7[25:0] <= temp_cal16[31:6];
						7'd8: r_n8[25:0] <= temp_cal16[31:6];
						7'd9: r_n9[25:0] <= temp_cal16[31:6];
						7'd10: r_n10[25:0] <= temp_cal16[31:6];
						7'd11: r_n11[25:0] <= temp_cal16[31:6];
						7'd12: r_n12[25:0] <= temp_cal16[31:6];
						7'd13: r_n13[25:0] <= temp_cal16[31:6];
						7'd14: r_n14[25:0] <= temp_cal16[31:6];
						7'd15: r_n15[25:0] <= temp_cal16[31:6];
						7'd16: r_n16[25:0] <= temp_cal16[31:6];
						7'd17: r_n17[25:0] <= temp_cal16[31:6];
						7'd18: r_n18[25:0] <= temp_cal16[31:6];
						7'd19: r_n19[25:0] <= temp_cal16[31:6];
						7'd20: r_n20[25:0] <= temp_cal16[31:6];
						7'd21: r_n21[25:0] <= temp_cal16[31:6];
						7'd22: r_n22[25:0] <= temp_cal16[31:6];
						7'd23: r_n23[25:0] <= temp_cal16[31:6];
						7'd24: r_n24[25:0] <= temp_cal16[31:6];
						7'd25: r_n25[25:0] <= temp_cal16[31:6];
						7'd26: r_n26[25:0] <= temp_cal16[31:6];
						7'd27: r_n27[25:0] <= temp_cal16[31:6];
						7'd28: r_n28[25:0] <= temp_cal16[31:6];
						7'd29: r_n29[25:0] <= temp_cal16[31:6];
						7'd30: r_n30[25:0] <= temp_cal16[31:6];
						7'd31: r_n31[25:0] <= temp_cal16[31:6];
						7'd32: r_n32[25:0] <= temp_cal16[31:6];
						7'd33: r_n33[25:0] <= temp_cal16[31:6];
						7'd34: r_n34[25:0] <= temp_cal16[31:6];
						7'd35: r_n35[25:0] <= temp_cal16[31:6];
						7'd36: r_n36[25:0] <= temp_cal16[31:6];
						7'd37: r_n37[25:0] <= temp_cal16[31:6];
						7'd38: r_n38[25:0] <= temp_cal16[31:6];
						7'd39: r_n39[25:0] <= temp_cal16[31:6];
						7'd40: r_n40[25:0] <= temp_cal16[31:6];
						7'd41: r_n41[25:0] <= temp_cal16[31:6];
						7'd42: r_n42[25:0] <= temp_cal16[31:6];
						7'd43: r_n43[25:0] <= temp_cal16[31:6];
						7'd44: r_n44[25:0] <= temp_cal16[31:6];
						7'd45: r_n45[25:0] <= temp_cal16[31:6];
						7'd46: r_n46[25:0] <= temp_cal16[31:6];
						7'd47: r_n47[25:0] <= temp_cal16[31:6];
						
						default: Index_pos_r_n0 <= 0;
					endcase
				end
				
				if(temp_cal17[31] == 1)begin
					case(Index17)
						7'd1: r_n1[25:0] <= temp_cal17[31:6] + 1;
						7'd2: r_n2[25:0] <= temp_cal17[31:6] + 1;
						7'd3: r_n3[25:0] <= temp_cal17[31:6] + 1;
						7'd4: r_n4[25:0] <= temp_cal17[31:6] + 1;
						7'd5: r_n5[25:0] <= temp_cal17[31:6] + 1;
						7'd6: r_n6[25:0] <= temp_cal17[31:6] + 1;
						7'd7: r_n7[25:0] <= temp_cal17[31:6] + 1;
						7'd8: r_n8[25:0] <= temp_cal17[31:6] + 1;
						7'd9: r_n9[25:0] <= temp_cal17[31:6] + 1;
						7'd10: r_n10[25:0] <= temp_cal17[31:6] + 1;
						7'd11: r_n11[25:0] <= temp_cal17[31:6] + 1;
						7'd12: r_n12[25:0] <= temp_cal17[31:6] + 1;
						7'd13: r_n13[25:0] <= temp_cal17[31:6] + 1;
						7'd14: r_n14[25:0] <= temp_cal17[31:6] + 1;
						7'd15: r_n15[25:0] <= temp_cal17[31:6] + 1;
						7'd16: r_n16[25:0] <= temp_cal17[31:6] + 1;
						7'd17: r_n17[25:0] <= temp_cal17[31:6] + 1;
						7'd18: r_n18[25:0] <= temp_cal17[31:6] + 1;
						7'd19: r_n19[25:0] <= temp_cal17[31:6] + 1;
						7'd20: r_n20[25:0] <= temp_cal17[31:6] + 1;
						7'd21: r_n21[25:0] <= temp_cal17[31:6] + 1;
						7'd22: r_n22[25:0] <= temp_cal17[31:6] + 1;
						7'd23: r_n23[25:0] <= temp_cal17[31:6] + 1;
						7'd24: r_n24[25:0] <= temp_cal17[31:6] + 1;
						7'd25: r_n25[25:0] <= temp_cal17[31:6] + 1;
						7'd26: r_n26[25:0] <= temp_cal17[31:6] + 1;
						7'd27: r_n27[25:0] <= temp_cal17[31:6] + 1;
						7'd28: r_n28[25:0] <= temp_cal17[31:6] + 1;
						7'd29: r_n29[25:0] <= temp_cal17[31:6] + 1;
						7'd30: r_n30[25:0] <= temp_cal17[31:6] + 1;
						7'd31: r_n31[25:0] <= temp_cal17[31:6] + 1;
						7'd32: r_n32[25:0] <= temp_cal17[31:6] + 1;
						7'd33: r_n33[25:0] <= temp_cal17[31:6] + 1;
						7'd34: r_n34[25:0] <= temp_cal17[31:6] + 1;
						7'd35: r_n35[25:0] <= temp_cal17[31:6] + 1;
						7'd36: r_n36[25:0] <= temp_cal17[31:6] + 1;
						7'd37: r_n37[25:0] <= temp_cal17[31:6] + 1;
						7'd38: r_n38[25:0] <= temp_cal17[31:6] + 1;
						7'd39: r_n39[25:0] <= temp_cal17[31:6] + 1;
						7'd40: r_n40[25:0] <= temp_cal17[31:6] + 1;
						7'd41: r_n41[25:0] <= temp_cal17[31:6] + 1;
						7'd42: r_n42[25:0] <= temp_cal17[31:6] + 1;
						7'd43: r_n43[25:0] <= temp_cal17[31:6] + 1;
						7'd44: r_n44[25:0] <= temp_cal17[31:6] + 1;
						7'd45: r_n45[25:0] <= temp_cal17[31:6] + 1;
						7'd46: r_n46[25:0] <= temp_cal17[31:6] + 1;
						7'd47: r_n47[25:0] <= temp_cal17[31:6] + 1;
						
						default: Index_pos_r_n0 <= 0;
					endcase
				end
				else begin
					case(Index17)
						7'd1: r_n1[25:0] <= temp_cal17[31:6];
						7'd2: r_n2[25:0] <= temp_cal17[31:6];
						7'd3: r_n3[25:0] <= temp_cal17[31:6];
						7'd4: r_n4[25:0] <= temp_cal17[31:6];
						7'd5: r_n5[25:0] <= temp_cal17[31:6];
						7'd6: r_n6[25:0] <= temp_cal17[31:6];
						7'd7: r_n7[25:0] <= temp_cal17[31:6];
						7'd8: r_n8[25:0] <= temp_cal17[31:6];
						7'd9: r_n9[25:0] <= temp_cal17[31:6];
						7'd10: r_n10[25:0] <= temp_cal17[31:6];
						7'd11: r_n11[25:0] <= temp_cal17[31:6];
						7'd12: r_n12[25:0] <= temp_cal17[31:6];
						7'd13: r_n13[25:0] <= temp_cal17[31:6];
						7'd14: r_n14[25:0] <= temp_cal17[31:6];
						7'd15: r_n15[25:0] <= temp_cal17[31:6];
						7'd16: r_n16[25:0] <= temp_cal17[31:6];
						7'd17: r_n17[25:0] <= temp_cal17[31:6];
						7'd18: r_n18[25:0] <= temp_cal17[31:6];
						7'd19: r_n19[25:0] <= temp_cal17[31:6];
						7'd20: r_n20[25:0] <= temp_cal17[31:6];
						7'd21: r_n21[25:0] <= temp_cal17[31:6];
						7'd22: r_n22[25:0] <= temp_cal17[31:6];
						7'd23: r_n23[25:0] <= temp_cal17[31:6];
						7'd24: r_n24[25:0] <= temp_cal17[31:6];
						7'd25: r_n25[25:0] <= temp_cal17[31:6];
						7'd26: r_n26[25:0] <= temp_cal17[31:6];
						7'd27: r_n27[25:0] <= temp_cal17[31:6];
						7'd28: r_n28[25:0] <= temp_cal17[31:6];
						7'd29: r_n29[25:0] <= temp_cal17[31:6];
						7'd30: r_n30[25:0] <= temp_cal17[31:6];
						7'd31: r_n31[25:0] <= temp_cal17[31:6];
						7'd32: r_n32[25:0] <= temp_cal17[31:6];
						7'd33: r_n33[25:0] <= temp_cal17[31:6];
						7'd34: r_n34[25:0] <= temp_cal17[31:6];
						7'd35: r_n35[25:0] <= temp_cal17[31:6];
						7'd36: r_n36[25:0] <= temp_cal17[31:6];
						7'd37: r_n37[25:0] <= temp_cal17[31:6];
						7'd38: r_n38[25:0] <= temp_cal17[31:6];
						7'd39: r_n39[25:0] <= temp_cal17[31:6];
						7'd40: r_n40[25:0] <= temp_cal17[31:6];
						7'd41: r_n41[25:0] <= temp_cal17[31:6];
						7'd42: r_n42[25:0] <= temp_cal17[31:6];
						7'd43: r_n43[25:0] <= temp_cal17[31:6];
						7'd44: r_n44[25:0] <= temp_cal17[31:6];
						7'd45: r_n45[25:0] <= temp_cal17[31:6];
						7'd46: r_n46[25:0] <= temp_cal17[31:6];
						7'd47: r_n47[25:0] <= temp_cal17[31:6];
						
						default: Index_pos_r_n0 <= 0;
					endcase
				end
				
				if(temp_cal18[31] == 1)begin
					case(Index18)
						7'd1: r_n1[25:0] <= temp_cal18[31:6] + 1;
						7'd2: r_n2[25:0] <= temp_cal18[31:6] + 1;
						7'd3: r_n3[25:0] <= temp_cal18[31:6] + 1;
						7'd4: r_n4[25:0] <= temp_cal18[31:6] + 1;
						7'd5: r_n5[25:0] <= temp_cal18[31:6] + 1;
						7'd6: r_n6[25:0] <= temp_cal18[31:6] + 1;
						7'd7: r_n7[25:0] <= temp_cal18[31:6] + 1;
						7'd8: r_n8[25:0] <= temp_cal18[31:6] + 1;
						7'd9: r_n9[25:0] <= temp_cal18[31:6] + 1;
						7'd10: r_n10[25:0] <= temp_cal18[31:6] + 1;
						7'd11: r_n11[25:0] <= temp_cal18[31:6] + 1;
						7'd12: r_n12[25:0] <= temp_cal18[31:6] + 1;
						7'd13: r_n13[25:0] <= temp_cal18[31:6] + 1;
						7'd14: r_n14[25:0] <= temp_cal18[31:6] + 1;
						7'd15: r_n15[25:0] <= temp_cal18[31:6] + 1;
						7'd16: r_n16[25:0] <= temp_cal18[31:6] + 1;
						7'd17: r_n17[25:0] <= temp_cal18[31:6] + 1;
						7'd18: r_n18[25:0] <= temp_cal18[31:6] + 1;
						7'd19: r_n19[25:0] <= temp_cal18[31:6] + 1;
						7'd20: r_n20[25:0] <= temp_cal18[31:6] + 1;
						7'd21: r_n21[25:0] <= temp_cal18[31:6] + 1;
						7'd22: r_n22[25:0] <= temp_cal18[31:6] + 1;
						7'd23: r_n23[25:0] <= temp_cal18[31:6] + 1;
						7'd24: r_n24[25:0] <= temp_cal18[31:6] + 1;
						7'd25: r_n25[25:0] <= temp_cal18[31:6] + 1;
						7'd26: r_n26[25:0] <= temp_cal18[31:6] + 1;
						7'd27: r_n27[25:0] <= temp_cal18[31:6] + 1;
						7'd28: r_n28[25:0] <= temp_cal18[31:6] + 1;
						7'd29: r_n29[25:0] <= temp_cal18[31:6] + 1;
						7'd30: r_n30[25:0] <= temp_cal18[31:6] + 1;
						7'd31: r_n31[25:0] <= temp_cal18[31:6] + 1;
						7'd32: r_n32[25:0] <= temp_cal18[31:6] + 1;
						7'd33: r_n33[25:0] <= temp_cal18[31:6] + 1;
						7'd34: r_n34[25:0] <= temp_cal18[31:6] + 1;
						7'd35: r_n35[25:0] <= temp_cal18[31:6] + 1;
						7'd36: r_n36[25:0] <= temp_cal18[31:6] + 1;
						7'd37: r_n37[25:0] <= temp_cal18[31:6] + 1;
						7'd38: r_n38[25:0] <= temp_cal18[31:6] + 1;
						7'd39: r_n39[25:0] <= temp_cal18[31:6] + 1;
						7'd40: r_n40[25:0] <= temp_cal18[31:6] + 1;
						7'd41: r_n41[25:0] <= temp_cal18[31:6] + 1;
						7'd42: r_n42[25:0] <= temp_cal18[31:6] + 1;
						7'd43: r_n43[25:0] <= temp_cal18[31:6] + 1;
						7'd44: r_n44[25:0] <= temp_cal18[31:6] + 1;
						7'd45: r_n45[25:0] <= temp_cal18[31:6] + 1;
						7'd46: r_n46[25:0] <= temp_cal18[31:6] + 1;
						7'd47: r_n47[25:0] <= temp_cal18[31:6] + 1;
						
						default: Index_pos_r_n0 <= 0;
					endcase
				end
				else begin
					case(Index18)
						7'd1: r_n1[25:0] <= temp_cal18[31:6];
						7'd2: r_n2[25:0] <= temp_cal18[31:6];
						7'd3: r_n3[25:0] <= temp_cal18[31:6];
						7'd4: r_n4[25:0] <= temp_cal18[31:6];
						7'd5: r_n5[25:0] <= temp_cal18[31:6];
						7'd6: r_n6[25:0] <= temp_cal18[31:6];
						7'd7: r_n7[25:0] <= temp_cal18[31:6];
						7'd8: r_n8[25:0] <= temp_cal18[31:6];
						7'd9: r_n9[25:0] <= temp_cal18[31:6];
						7'd10: r_n10[25:0] <= temp_cal18[31:6];
						7'd11: r_n11[25:0] <= temp_cal18[31:6];
						7'd12: r_n12[25:0] <= temp_cal18[31:6];
						7'd13: r_n13[25:0] <= temp_cal18[31:6];
						7'd14: r_n14[25:0] <= temp_cal18[31:6];
						7'd15: r_n15[25:0] <= temp_cal18[31:6];
						7'd16: r_n16[25:0] <= temp_cal18[31:6];
						7'd17: r_n17[25:0] <= temp_cal18[31:6];
						7'd18: r_n18[25:0] <= temp_cal18[31:6];
						7'd19: r_n19[25:0] <= temp_cal18[31:6];
						7'd20: r_n20[25:0] <= temp_cal18[31:6];
						7'd21: r_n21[25:0] <= temp_cal18[31:6];
						7'd22: r_n22[25:0] <= temp_cal18[31:6];
						7'd23: r_n23[25:0] <= temp_cal18[31:6];
						7'd24: r_n24[25:0] <= temp_cal18[31:6];
						7'd25: r_n25[25:0] <= temp_cal18[31:6];
						7'd26: r_n26[25:0] <= temp_cal18[31:6];
						7'd27: r_n27[25:0] <= temp_cal18[31:6];
						7'd28: r_n28[25:0] <= temp_cal18[31:6];
						7'd29: r_n29[25:0] <= temp_cal18[31:6];
						7'd30: r_n30[25:0] <= temp_cal18[31:6];
						7'd31: r_n31[25:0] <= temp_cal18[31:6];
						7'd32: r_n32[25:0] <= temp_cal18[31:6];
						7'd33: r_n33[25:0] <= temp_cal18[31:6];
						7'd34: r_n34[25:0] <= temp_cal18[31:6];
						7'd35: r_n35[25:0] <= temp_cal18[31:6];
						7'd36: r_n36[25:0] <= temp_cal18[31:6];
						7'd37: r_n37[25:0] <= temp_cal18[31:6];
						7'd38: r_n38[25:0] <= temp_cal18[31:6];
						7'd39: r_n39[25:0] <= temp_cal18[31:6];
						7'd40: r_n40[25:0] <= temp_cal18[31:6];
						7'd41: r_n41[25:0] <= temp_cal18[31:6];
						7'd42: r_n42[25:0] <= temp_cal18[31:6];
						7'd43: r_n43[25:0] <= temp_cal18[31:6];
						7'd44: r_n44[25:0] <= temp_cal18[31:6];
						7'd45: r_n45[25:0] <= temp_cal18[31:6];
						7'd46: r_n46[25:0] <= temp_cal18[31:6];
						7'd47: r_n47[25:0] <= temp_cal18[31:6];
						
						default: Index_pos_r_n0 <= 0;
					endcase
				end
				
				if(temp_cal19[31] == 1) begin
					case(Index19)
						7'd1: r_n1[25:0] <= temp_cal19[31:6] + 1;
						7'd2: r_n2[25:0] <= temp_cal19[31:6] + 1;
						7'd3: r_n3[25:0] <= temp_cal19[31:6] + 1;
						7'd4: r_n4[25:0] <= temp_cal19[31:6] + 1;
						7'd5: r_n5[25:0] <= temp_cal19[31:6] + 1;
						7'd6: r_n6[25:0] <= temp_cal19[31:6] + 1;
						7'd7: r_n7[25:0] <= temp_cal19[31:6] + 1;
						7'd8: r_n8[25:0] <= temp_cal19[31:6] + 1;
						7'd9: r_n9[25:0] <= temp_cal19[31:6] + 1;
						7'd10: r_n10[25:0] <= temp_cal19[31:6] + 1;
						7'd11: r_n11[25:0] <= temp_cal19[31:6] + 1;
						7'd12: r_n12[25:0] <= temp_cal19[31:6] + 1;
						7'd13: r_n13[25:0] <= temp_cal19[31:6] + 1;
						7'd14: r_n14[25:0] <= temp_cal19[31:6] + 1;
						7'd15: r_n15[25:0] <= temp_cal19[31:6] + 1;
						7'd16: r_n16[25:0] <= temp_cal19[31:6] + 1;
						7'd17: r_n17[25:0] <= temp_cal19[31:6] + 1;
						7'd18: r_n18[25:0] <= temp_cal19[31:6] + 1;
						7'd19: r_n19[25:0] <= temp_cal19[31:6] + 1;
						7'd20: r_n20[25:0] <= temp_cal19[31:6] + 1;
						7'd21: r_n21[25:0] <= temp_cal19[31:6] + 1;
						7'd22: r_n22[25:0] <= temp_cal19[31:6] + 1;
						7'd23: r_n23[25:0] <= temp_cal19[31:6] + 1;
						7'd24: r_n24[25:0] <= temp_cal19[31:6] + 1;
						7'd25: r_n25[25:0] <= temp_cal19[31:6] + 1;
						7'd26: r_n26[25:0] <= temp_cal19[31:6] + 1;
						7'd27: r_n27[25:0] <= temp_cal19[31:6] + 1;
						7'd28: r_n28[25:0] <= temp_cal19[31:6] + 1;
						7'd29: r_n29[25:0] <= temp_cal19[31:6] + 1;
						7'd30: r_n30[25:0] <= temp_cal19[31:6] + 1;
						7'd31: r_n31[25:0] <= temp_cal19[31:6] + 1;
						7'd32: r_n32[25:0] <= temp_cal19[31:6] + 1;
						7'd33: r_n33[25:0] <= temp_cal19[31:6] + 1;
						7'd34: r_n34[25:0] <= temp_cal19[31:6] + 1;
						7'd35: r_n35[25:0] <= temp_cal19[31:6] + 1;
						7'd36: r_n36[25:0] <= temp_cal19[31:6] + 1;
						7'd37: r_n37[25:0] <= temp_cal19[31:6] + 1;
						7'd38: r_n38[25:0] <= temp_cal19[31:6] + 1;
						7'd39: r_n39[25:0] <= temp_cal19[31:6] + 1;
						7'd40: r_n40[25:0] <= temp_cal19[31:6] + 1;
						7'd41: r_n41[25:0] <= temp_cal19[31:6] + 1;
						7'd42: r_n42[25:0] <= temp_cal19[31:6] + 1;
						7'd43: r_n43[25:0] <= temp_cal19[31:6] + 1;
						7'd44: r_n44[25:0] <= temp_cal19[31:6] + 1;
						7'd45: r_n45[25:0] <= temp_cal19[31:6] + 1;
						7'd46: r_n46[25:0] <= temp_cal19[31:6] + 1;
						7'd47: r_n47[25:0] <= temp_cal19[31:6] + 1;
						
						default: Index_pos_r_n0 <= 0;
					endcase
				end
				else begin 
					case(Index19)
						7'd1: r_n1[25:0] <= temp_cal19[31:6];
						7'd2: r_n2[25:0] <= temp_cal19[31:6];
						7'd3: r_n3[25:0] <= temp_cal19[31:6];
						7'd4: r_n4[25:0] <= temp_cal19[31:6];
						7'd5: r_n5[25:0] <= temp_cal19[31:6];
						7'd6: r_n6[25:0] <= temp_cal19[31:6];
						7'd7: r_n7[25:0] <= temp_cal19[31:6];
						7'd8: r_n8[25:0] <= temp_cal19[31:6];
						7'd9: r_n9[25:0] <= temp_cal19[31:6];
						7'd10: r_n10[25:0] <= temp_cal19[31:6];
						7'd11: r_n11[25:0] <= temp_cal19[31:6];
						7'd12: r_n12[25:0] <= temp_cal19[31:6];
						7'd13: r_n13[25:0] <= temp_cal19[31:6];
						7'd14: r_n14[25:0] <= temp_cal19[31:6];
						7'd15: r_n15[25:0] <= temp_cal19[31:6];
						7'd16: r_n16[25:0] <= temp_cal19[31:6];
						7'd17: r_n17[25:0] <= temp_cal19[31:6];
						7'd18: r_n18[25:0] <= temp_cal19[31:6];
						7'd19: r_n19[25:0] <= temp_cal19[31:6];
						7'd20: r_n20[25:0] <= temp_cal19[31:6];
						7'd21: r_n21[25:0] <= temp_cal19[31:6];
						7'd22: r_n22[25:0] <= temp_cal19[31:6];
						7'd23: r_n23[25:0] <= temp_cal19[31:6];
						7'd24: r_n24[25:0] <= temp_cal19[31:6];
						7'd25: r_n25[25:0] <= temp_cal19[31:6];
						7'd26: r_n26[25:0] <= temp_cal19[31:6];
						7'd27: r_n27[25:0] <= temp_cal19[31:6];
						7'd28: r_n28[25:0] <= temp_cal19[31:6];
						7'd29: r_n29[25:0] <= temp_cal19[31:6];
						7'd30: r_n30[25:0] <= temp_cal19[31:6];
						7'd31: r_n31[25:0] <= temp_cal19[31:6];
						7'd32: r_n32[25:0] <= temp_cal19[31:6];
						7'd33: r_n33[25:0] <= temp_cal19[31:6];
						7'd34: r_n34[25:0] <= temp_cal19[31:6];
						7'd35: r_n35[25:0] <= temp_cal19[31:6];
						7'd36: r_n36[25:0] <= temp_cal19[31:6];
						7'd37: r_n37[25:0] <= temp_cal19[31:6];
						7'd38: r_n38[25:0] <= temp_cal19[31:6];
						7'd39: r_n39[25:0] <= temp_cal19[31:6];
						7'd40: r_n40[25:0] <= temp_cal19[31:6];
						7'd41: r_n41[25:0] <= temp_cal19[31:6];
						7'd42: r_n42[25:0] <= temp_cal19[31:6];
						7'd43: r_n43[25:0] <= temp_cal19[31:6];
						7'd44: r_n44[25:0] <= temp_cal19[31:6];
						7'd45: r_n45[25:0] <= temp_cal19[31:6];
						7'd46: r_n46[25:0] <= temp_cal19[31:6];
						7'd47: r_n47[25:0] <= temp_cal19[31:6];
						
						default: Index_pos_r_n0 <= 0;
					endcase
				end
				
				if(temp_cal20[31] == 1) begin
					case(Index20)
						7'd1: r_n1[25:0] <= temp_cal20[31:6] + 1;
						7'd2: r_n2[25:0] <= temp_cal20[31:6] + 1;
						7'd3: r_n3[25:0] <= temp_cal20[31:6] + 1;
						7'd4: r_n4[25:0] <= temp_cal20[31:6] + 1;
						7'd5: r_n5[25:0] <= temp_cal20[31:6] + 1;
						7'd6: r_n6[25:0] <= temp_cal20[31:6] + 1;
						7'd7: r_n7[25:0] <= temp_cal20[31:6] + 1;
						7'd8: r_n8[25:0] <= temp_cal20[31:6] + 1;
						7'd9: r_n9[25:0] <= temp_cal20[31:6] + 1;
						7'd10: r_n10[25:0] <= temp_cal20[31:6] + 1;
						7'd11: r_n11[25:0] <= temp_cal20[31:6] + 1;
						7'd12: r_n12[25:0] <= temp_cal20[31:6] + 1;
						7'd13: r_n13[25:0] <= temp_cal20[31:6] + 1;
						7'd14: r_n14[25:0] <= temp_cal20[31:6] + 1;
						7'd15: r_n15[25:0] <= temp_cal20[31:6] + 1;
						7'd16: r_n16[25:0] <= temp_cal20[31:6] + 1;
						7'd17: r_n17[25:0] <= temp_cal20[31:6] + 1;
						7'd18: r_n18[25:0] <= temp_cal20[31:6] + 1;
						7'd19: r_n19[25:0] <= temp_cal20[31:6] + 1;
						7'd20: r_n20[25:0] <= temp_cal20[31:6] + 1;
						7'd21: r_n21[25:0] <= temp_cal20[31:6] + 1;
						7'd22: r_n22[25:0] <= temp_cal20[31:6] + 1;
						7'd23: r_n23[25:0] <= temp_cal20[31:6] + 1;
						7'd24: r_n24[25:0] <= temp_cal20[31:6] + 1;
						7'd25: r_n25[25:0] <= temp_cal20[31:6] + 1;
						7'd26: r_n26[25:0] <= temp_cal20[31:6] + 1;
						7'd27: r_n27[25:0] <= temp_cal20[31:6] + 1;
						7'd28: r_n28[25:0] <= temp_cal20[31:6] + 1;
						7'd29: r_n29[25:0] <= temp_cal20[31:6] + 1;
						7'd30: r_n30[25:0] <= temp_cal20[31:6] + 1;
						7'd31: r_n31[25:0] <= temp_cal20[31:6] + 1;
						7'd32: r_n32[25:0] <= temp_cal20[31:6] + 1;
						7'd33: r_n33[25:0] <= temp_cal20[31:6] + 1;
						7'd34: r_n34[25:0] <= temp_cal20[31:6] + 1;
						7'd35: r_n35[25:0] <= temp_cal20[31:6] + 1;
						7'd36: r_n36[25:0] <= temp_cal20[31:6] + 1;
						7'd37: r_n37[25:0] <= temp_cal20[31:6] + 1;
						7'd38: r_n38[25:0] <= temp_cal20[31:6] + 1;
						7'd39: r_n39[25:0] <= temp_cal20[31:6] + 1;
						7'd40: r_n40[25:0] <= temp_cal20[31:6] + 1;
						7'd41: r_n41[25:0] <= temp_cal20[31:6] + 1;
						7'd42: r_n42[25:0] <= temp_cal20[31:6] + 1;
						7'd43: r_n43[25:0] <= temp_cal20[31:6] + 1;
						7'd44: r_n44[25:0] <= temp_cal20[31:6] + 1;
						7'd45: r_n45[25:0] <= temp_cal20[31:6] + 1;
						7'd46: r_n46[25:0] <= temp_cal20[31:6] + 1;
						7'd47: r_n47[25:0] <= temp_cal20[31:6] + 1;
						
						default: Index_pos_r_n0 <= 0;
					endcase
				end
				else begin 
					case(Index20)
						7'd1: r_n1[25:0] <= temp_cal20[31:6];
						7'd2: r_n2[25:0] <= temp_cal20[31:6];
						7'd3: r_n3[25:0] <= temp_cal20[31:6];
						7'd4: r_n4[25:0] <= temp_cal20[31:6];
						7'd5: r_n5[25:0] <= temp_cal20[31:6];
						7'd6: r_n6[25:0] <= temp_cal20[31:6];
						7'd7: r_n7[25:0] <= temp_cal20[31:6];
						7'd8: r_n8[25:0] <= temp_cal20[31:6];
						7'd9: r_n9[25:0] <= temp_cal20[31:6];
						7'd10: r_n10[25:0] <= temp_cal20[31:6];
						7'd11: r_n11[25:0] <= temp_cal20[31:6];
						7'd12: r_n12[25:0] <= temp_cal20[31:6];
						7'd13: r_n13[25:0] <= temp_cal20[31:6];
						7'd14: r_n14[25:0] <= temp_cal20[31:6];
						7'd15: r_n15[25:0] <= temp_cal20[31:6];
						7'd16: r_n16[25:0] <= temp_cal20[31:6];
						7'd17: r_n17[25:0] <= temp_cal20[31:6];
						7'd18: r_n18[25:0] <= temp_cal20[31:6];
						7'd19: r_n19[25:0] <= temp_cal20[31:6];
						7'd20: r_n20[25:0] <= temp_cal20[31:6];
						7'd21: r_n21[25:0] <= temp_cal20[31:6];
						7'd22: r_n22[25:0] <= temp_cal20[31:6];
						7'd23: r_n23[25:0] <= temp_cal20[31:6];
						7'd24: r_n24[25:0] <= temp_cal20[31:6];
						7'd25: r_n25[25:0] <= temp_cal20[31:6];
						7'd26: r_n26[25:0] <= temp_cal20[31:6];
						7'd27: r_n27[25:0] <= temp_cal20[31:6];
						7'd28: r_n28[25:0] <= temp_cal20[31:6];
						7'd29: r_n29[25:0] <= temp_cal20[31:6];
						7'd30: r_n30[25:0] <= temp_cal20[31:6];
						7'd31: r_n31[25:0] <= temp_cal20[31:6];
						7'd32: r_n32[25:0] <= temp_cal20[31:6];
						7'd33: r_n33[25:0] <= temp_cal20[31:6];
						7'd34: r_n34[25:0] <= temp_cal20[31:6];
						7'd35: r_n35[25:0] <= temp_cal20[31:6];
						7'd36: r_n36[25:0] <= temp_cal20[31:6];
						7'd37: r_n37[25:0] <= temp_cal20[31:6];
						7'd38: r_n38[25:0] <= temp_cal20[31:6];
						7'd39: r_n39[25:0] <= temp_cal20[31:6];
						7'd40: r_n40[25:0] <= temp_cal20[31:6];
						7'd41: r_n41[25:0] <= temp_cal20[31:6];
						7'd42: r_n42[25:0] <= temp_cal20[31:6];
						7'd43: r_n43[25:0] <= temp_cal20[31:6];
						7'd44: r_n44[25:0] <= temp_cal20[31:6];
						7'd45: r_n45[25:0] <= temp_cal20[31:6];
						7'd46: r_n46[25:0] <= temp_cal20[31:6];
						7'd47: r_n47[25:0] <= temp_cal20[31:6];
						
						default: Index_pos_r_n0 <= 0;
					endcase
				end
				
				finish_flag <= 1;
			end
			else begin
			end
			
		end
	end

endmodule
