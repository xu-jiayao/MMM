
module BlockRecons
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
	
	
	//recosntructed block infor
	output reg[7:0] pixel0,
	output reg[7:0]	pixel1,
	output reg[7:0]	pixel2,
	output reg[7:0]	pixel3,
	output reg[7:0]	pixel4,
	output reg[7:0]	pixel5,
	output reg[7:0]	pixel6,
	output reg[7:0]	pixel7,
	output reg[7:0]	pixel8,
	output reg[7:0]	pixel9,
	output reg[7:0]	pixel10,
	output reg[7:0]	pixel11,
	output reg[7:0]	pixel12,
	output reg[7:0]	pixel13,
	output reg[7:0]	pixel14,
	output reg[7:0]	pixel15,
	output reg[7:0]	pixel16,
	output reg[7:0]	pixel17,
	output reg[7:0]	pixel18,
	output reg[7:0]	pixel19,
	output reg[7:0]	pixel20,
	output reg[7:0]	pixel21,
	output reg[7:0]	pixel22,
	output reg[7:0]	pixel23,
	output reg[7:0]	pixel24,
	output reg[7:0]	pixel25,
	output reg[7:0]	pixel26,
	output reg[7:0]	pixel27,
	output reg[7:0]	pixel28,
	output reg[7:0]	pixel29,
	output reg[7:0]	pixel30,
	output reg[7:0]	pixel31,
	output reg[7:0]	pixel32,
	output reg[7:0]	pixel33,
	output reg[7:0]	pixel34,
	output reg[7:0]	pixel35,
	output reg[7:0]	pixel36,
	output reg[7:0]	pixel37,
	output reg[7:0]	pixel38,
	output reg[7:0]	pixel39,
	output reg[7:0]	pixel40,
	output reg[7:0]	pixel41,
	output reg[7:0]	pixel42,
	output reg[7:0]	pixel43,
	output reg[7:0]	pixel44,
	output reg[7:0]	pixel45,
	output reg[7:0]	pixel46,
	output reg[7:0]	pixel47,
	output reg[7:0]	pixel48,
	output reg[7:0]	pixel49,
	output reg[7:0]	pixel50,
	output reg[7:0]	pixel51,
	output reg[7:0]	pixel52,
	output reg[7:0]	pixel53,
	output reg[7:0]	pixel54,
	output reg[7:0]	pixel55,
	output reg[7:0]	pixel56,
	output reg[7:0]	pixel57,
	output reg[7:0]	pixel58,
	output reg[7:0]	pixel59,
	output reg[7:0]	pixel60,
	output reg[7:0]	pixel61,
	output reg[7:0]	pixel62,
	output reg[7:0]	pixel63,

	output reg finish_flag
);
	
	reg[8:0] times;
	
	
	//DotAndMax Input
	reg reset_DotAndMax;
	reg[25:0] residual0;
	reg[25:0] residual1;
	reg[25:0] residual2;
	reg[25:0] residual3;
	reg[25:0] residual4;
	reg[25:0] residual5;
	reg[25:0] residual6;
	reg[25:0] residual7;
	reg[25:0] residual8;
	reg[25:0] residual9;
	
	reg[25:0] residual10;
	reg[25:0] residual11;
	reg[25:0] residual12;
	reg[25:0] residual13;
	reg[25:0] residual14;
	reg[25:0] residual15;
	reg[25:0] residual16;
	reg[25:0] residual17;
	reg[25:0] residual18;
	reg[25:0] residual19;
	
	reg[25:0] residual20;
	reg[25:0] residual21;
	reg[25:0] residual22;
	reg[25:0] residual23;
	reg[25:0] residual24;
	reg[25:0] residual25;
	reg[25:0] residual26;
	reg[25:0] residual27;
	reg[25:0] residual28;
	reg[25:0] residual29;
	
	reg[25:0] residual30;
	reg[25:0] residual31;
	reg[25:0] residual32;
	reg[25:0] residual33;
	reg[25:0] residual34;
	reg[25:0] residual35;
	reg[25:0] residual36;
	reg[25:0] residual37;
	reg[25:0] residual38;
	reg[25:0] residual39;
	
	reg[25:0] residual40;
	reg[25:0] residual41;
	reg[25:0] residual42;
	reg[25:0] residual43;
	reg[25:0] residual44;
	reg[25:0] residual45;
	reg[25:0] residual46;
	reg[25:0] residual47;
	
	//DotAndMax output
	wire [7:0] index_max;
	wire index_finish_flag;
	
	reg [25:0] value_max;
	reg [7:0] reg_index_max;

	//Iteration input
	reg[15:0] iteration_measurements0;
	reg[15:0] iteration_measurements1;
	reg[15:0] iteration_measurements2;
	reg[15:0] iteration_measurements3;
	reg[15:0] iteration_measurements4;
	reg[15:0] iteration_measurements5;
	reg[15:0] iteration_measurements6;
	reg[15:0] iteration_measurements7;
	reg[15:0] iteration_measurements8;
	reg[15:0] iteration_measurements9;
		
	reg[15:0] iteration_measurements10;
	reg[15:0] iteration_measurements11;
	reg[15:0] iteration_measurements12;
	reg[15:0] iteration_measurements13;
	reg[15:0] iteration_measurements14;
	reg[15:0] iteration_measurements15;
	reg[15:0] iteration_measurements16;
	reg[15:0] iteration_measurements17;
	reg[15:0] iteration_measurements18;
	reg[15:0] iteration_measurements19;
		
	reg[15:0] iteration_measurements20;
	reg[15:0] iteration_measurements21;
	reg[15:0] iteration_measurements22;
	reg[15:0] iteration_measurements23;
	reg[15:0] iteration_measurements24;
	reg[15:0] iteration_measurements25;
	reg[15:0] iteration_measurements26;
	reg[15:0] iteration_measurements27;
	reg[15:0] iteration_measurements28;
	reg[15:0] iteration_measurements29;
		
	reg[15:0] iteration_measurements30;
	reg[15:0] iteration_measurements31;
	reg[15:0] iteration_measurements32;
	reg[15:0] iteration_measurements33;
	reg[15:0] iteration_measurements34;
	reg[15:0] iteration_measurements35;
	reg[15:0] iteration_measurements36;
	reg[15:0] iteration_measurements37;
	reg[15:0] iteration_measurements38;
	reg[15:0] iteration_measurements39;
		
	reg[15:0] iteration_measurements40;
	reg[15:0] iteration_measurements41;
	reg[15:0] iteration_measurements42;
	reg[15:0] iteration_measurements43;
	reg[15:0] iteration_measurements44;
	reg[15:0] iteration_measurements45;
	reg[15:0] iteration_measurements46;
	reg[15:0] iteration_measurements47;
	
	//parameters of iterations
	reg resetIteration;
	
	//index values
	reg [7:0] Index1;
	reg [7:0] Index2;
	reg [7:0] Index3;
	reg [7:0] Index4;
	reg [7:0] Index5;
	reg [7:0] Index6;
	reg [7:0] Index7;
	reg [7:0] Index8;
	reg [7:0] Index9;
		   
	reg [7:0] Index10;
	reg [7:0] Index11;
	reg [7:0] Index12;
	reg [7:0] Index13;
	reg [7:0] Index14;
	reg [7:0] Index15;
	reg [7:0] Index16;
	reg [7:0] Index17;
	reg [7:0] Index18;
	reg [7:0] Index19;
	
	reg [7:0] Index20;
	
	//max values
	reg [25:0] Value_Max1;
	reg [25:0] Value_Max2;
	reg [25:0] Value_Max3;
	reg [25:0] Value_Max4;
	reg [25:0] Value_Max5;
	reg [25:0] Value_Max6;
	reg [25:0] Value_Max7;
	reg [25:0] Value_Max8;
	reg [25:0] Value_Max9;
		   
	reg [25:0] Value_Max10;
	reg [25:0] Value_Max11;
	reg [25:0] Value_Max12;
	reg [25:0] Value_Max13;
	reg [25:0] Value_Max14;
	reg [25:0] Value_Max15;
	reg [25:0] Value_Max16;
	reg [25:0] Value_Max17;
	reg [25:0] Value_Max18;
	reg [25:0] Value_Max19;
	
	reg [25:0] Value_Max20;
	
	//judge if the last iteration or not
	reg [6:0] iterIndex;
	reg saveMax;
	
	
	//iteration output
	wire[25:0] r_n0;
	wire[25:0] r_n1;
	wire[25:0] r_n2;
	wire[25:0] r_n3;
	wire[25:0] r_n4;
	wire[25:0] r_n5;
	wire[25:0] r_n6;
	wire[25:0] r_n7;
	wire[25:0] r_n8;
	wire[25:0] r_n9;
	
	wire[25:0] r_n10;
	wire[25:0] r_n11;
	wire[25:0] r_n12;
	wire[25:0] r_n13;
	wire[25:0] r_n14;
	wire[25:0] r_n15;
	wire[25:0] r_n16;
	wire[25:0] r_n17;
	wire[25:0] r_n18;
	wire[25:0] r_n19;
	
	wire[25:0] r_n20;
	wire[25:0] r_n21;
	wire[25:0] r_n22;
	wire[25:0] r_n23;
	wire[25:0] r_n24;
	wire[25:0] r_n25;
	wire[25:0] r_n26;
	wire[25:0] r_n27;
	wire[25:0] r_n28;
	wire[25:0] r_n29;
	
	wire[25:0] r_n30;
	wire[25:0] r_n31;
	wire[25:0] r_n32;
	wire[25:0] r_n33;
	wire[25:0] r_n34;
	wire[25:0] r_n35;
	wire[25:0] r_n36;
	wire[25:0] r_n37;
	wire[25:0] r_n38;
	wire[25:0] r_n39;
	
	wire[25:0] r_n40;
	wire[25:0] r_n41;
	wire[25:0] r_n42;
	wire[25:0] r_n43;
	wire[25:0] r_n44;
	wire[25:0] r_n45;
	wire[25:0] r_n46;
	wire[25:0] r_n47;
	
	
	wire ifResidualZero;
	wire finish_Iteration;
	
	
	
	//temp paras
	//judge ifResidual is zero 
	reg[1:0] flag_pixel;
	
	//pixel value calculation 
	reg[25:0] tempPixel0;
	reg[25:0] tempPixel1;
	reg[25:0] tempPixel2;
	reg[25:0] tempPixel3;
	reg[25:0] tempPixel4;
	reg[25:0] tempPixel5;
	reg[25:0] tempPixel6;
	reg[25:0] tempPixel7;
	reg[25:0] tempPixel8;
	reg[25:0] tempPixel9;
	
	reg[25:0] tempPixel10;
	reg[25:0] tempPixel11;
	reg[25:0] tempPixel12;
	reg[25:0] tempPixel13;
	reg[25:0] tempPixel14;
	reg[25:0] tempPixel15;
	reg[25:0] tempPixel16;
	reg[25:0] tempPixel17;
	reg[25:0] tempPixel18;
	reg[25:0] tempPixel19;
	
	reg[25:0] tempPixel20;
	reg[25:0] tempPixel21;
	reg[25:0] tempPixel22;
	reg[25:0] tempPixel23;
	reg[25:0] tempPixel24;
	reg[25:0] tempPixel25;
	reg[25:0] tempPixel26;
	reg[25:0] tempPixel27;
	reg[25:0] tempPixel28;
	reg[25:0] tempPixel29;
	
	reg[25:0] tempPixel30;
	reg[25:0] tempPixel31;
	reg[25:0] tempPixel32;
	reg[25:0] tempPixel33;
	reg[25:0] tempPixel34;
	reg[25:0] tempPixel35;
	reg[25:0] tempPixel36;
	reg[25:0] tempPixel37;
	reg[25:0] tempPixel38;
	reg[25:0] tempPixel39;
	
	reg[25:0] tempPixel40;
	reg[25:0] tempPixel41;
	reg[25:0] tempPixel42;
	reg[25:0] tempPixel43;
	reg[25:0] tempPixel44;
	reg[25:0] tempPixel45;
	reg[25:0] tempPixel46;
	reg[25:0] tempPixel47;
	
	
	//pixel value before shift
	reg[25:0] temp_pixel0;
	reg[25:0] temp_pixel1;
	reg[25:0] temp_pixel2;
	reg[25:0] temp_pixel3;
	reg[25:0] temp_pixel4;
	reg[25:0] temp_pixel5;
	reg[25:0] temp_pixel6;
	reg[25:0] temp_pixel7;
	reg[25:0] temp_pixel8;
	reg[25:0] temp_pixel9;
	reg[25:0] temp_pixel10;
	reg[25:0] temp_pixel11;
	reg[25:0] temp_pixel12;
	reg[25:0] temp_pixel13;
	reg[25:0] temp_pixel14;
	reg[25:0] temp_pixel15;
	reg[25:0] temp_pixel16;
	reg[25:0] temp_pixel17;
	reg[25:0] temp_pixel18;
	reg[25:0] temp_pixel19;
	reg[25:0] temp_pixel20;
	reg[25:0] temp_pixel21;
	reg[25:0] temp_pixel22;
	reg[25:0] temp_pixel23;
	reg[25:0] temp_pixel24;
	reg[25:0] temp_pixel25;
	reg[25:0] temp_pixel26;
	reg[25:0] temp_pixel27;
	reg[25:0] temp_pixel28;
	reg[25:0] temp_pixel29;
	reg[25:0] temp_pixel30;
	reg[25:0] temp_pixel31;
	reg[25:0] temp_pixel32;
	reg[25:0] temp_pixel33;
	reg[25:0] temp_pixel34;
	reg[25:0] temp_pixel35;
	reg[25:0] temp_pixel36;
	reg[25:0] temp_pixel37;
	reg[25:0] temp_pixel38;
	reg[25:0] temp_pixel39;
	reg[25:0] temp_pixel40;
	reg[25:0] temp_pixel41;
	reg[25:0] temp_pixel42;
	reg[25:0] temp_pixel43;
	reg[25:0] temp_pixel44;
	reg[25:0] temp_pixel45;
	reg[25:0] temp_pixel46;
	reg[25:0] temp_pixel47;
	reg[25:0] temp_pixel48;
	reg[25:0] temp_pixel49;
	reg[25:0] temp_pixel50;
	reg[25:0] temp_pixel51;
	reg[25:0] temp_pixel52;
	reg[25:0] temp_pixel53;
	reg[25:0] temp_pixel54;
	reg[25:0] temp_pixel55;
	reg[25:0] temp_pixel56;
	reg[25:0] temp_pixel57;
	reg[25:0] temp_pixel58;
	reg[25:0] temp_pixel59;
	reg[25:0] temp_pixel60;
	reg[25:0] temp_pixel61;
	reg[25:0] temp_pixel62;
	reg[25:0] temp_pixel63;
	

	
	//Instantiate DotAndMax module 
	DotAndMax dotAndMax
		(.clk(clk),
		.reset(reset_DotAndMax),
		.measurements0(residual0),
		.measurements1(residual1),
		.measurements2(residual2),
		.measurements3(residual3),
		.measurements4(residual4),
		.measurements5(residual5),
		.measurements6(residual6),
		.measurements7(residual7),
		.measurements8(residual8),
		.measurements9(residual9),
		
		.measurements10(residual10),
		.measurements11(residual11),
		.measurements12(residual12),
		.measurements13(residual13),
		.measurements14(residual14),
		.measurements15(residual15),
		.measurements16(residual16),
		.measurements17(residual17),
		.measurements18(residual18),
		.measurements19(residual19),
		
		.measurements20(residual20),
		.measurements21(residual21),
		.measurements22(residual22),
		.measurements23(residual23),
		.measurements24(residual24),
		.measurements25(residual25),
		.measurements26(residual26),
		.measurements27(residual27),
		.measurements28(residual28),
		.measurements29(residual29),
		
		.measurements30(residual30),
		.measurements31(residual31),
		.measurements32(residual32),
		.measurements33(residual33),
		.measurements34(residual34),
		.measurements35(residual35),
		.measurements36(residual36),
		.measurements37(residual37),
		.measurements38(residual38),
		.measurements39(residual39),
		
		.measurements40(residual40),
		.measurements41(residual41),
		.measurements42(residual42),
		.measurements43(residual43),
		.measurements44(residual44),
		.measurements45(residual45),
		.measurements46(residual46),
		.measurements47(residual47),
		
		.index_max(index_max),
		.finish_flag(index_finish_flag)
		);
	
	
	
	

	//input reg ; output wire
	Iteration iteration
		(.clk(clk),
		.reset(resetIteration),
		.measurements0(iteration_measurements0),
		.measurements1(iteration_measurements1),
		.measurements2(iteration_measurements2),
		.measurements3(iteration_measurements3),
		.measurements4(iteration_measurements4),
		.measurements5(iteration_measurements5),
		.measurements6(iteration_measurements6),
		.measurements7(iteration_measurements7),
		.measurements8(iteration_measurements8),
		.measurements9(iteration_measurements9),
		
		.measurements10(iteration_measurements10),
		.measurements11(iteration_measurements11),
		.measurements12(iteration_measurements12),
		.measurements13(iteration_measurements13),
		.measurements14(iteration_measurements14),
		.measurements15(iteration_measurements15),
		.measurements16(iteration_measurements16),
		.measurements17(iteration_measurements17),
		.measurements18(iteration_measurements18),
		.measurements19(iteration_measurements19),
		
		.measurements20(iteration_measurements20),
		.measurements21(iteration_measurements21),
		.measurements22(iteration_measurements22),
		.measurements23(iteration_measurements23),
		.measurements24(iteration_measurements24),
		.measurements25(iteration_measurements25),
		.measurements26(iteration_measurements26),
		.measurements27(iteration_measurements27),
		.measurements28(iteration_measurements28),
		.measurements29(iteration_measurements29),
		
		.measurements30(iteration_measurements30),
		.measurements31(iteration_measurements31),
		.measurements32(iteration_measurements32),
		.measurements33(iteration_measurements33),
		.measurements34(iteration_measurements34),
		.measurements35(iteration_measurements35),
		.measurements36(iteration_measurements36),
		.measurements37(iteration_measurements37),
		.measurements38(iteration_measurements38),
		.measurements39(iteration_measurements39),
		
		.measurements40(iteration_measurements40),
		.measurements41(iteration_measurements41),
		.measurements42(iteration_measurements42),
		.measurements43(iteration_measurements43),
		.measurements44(iteration_measurements44),
		.measurements45(iteration_measurements45),
		.measurements46(iteration_measurements46),
		.measurements47(iteration_measurements47),
		
		//index values
		.Index1(Index1),
		.Index2(Index2),
		.Index3(Index3),
		.Index4(Index4),
		.Index5(Index5),
		.Index6(Index6),
		.Index7(Index7),
		.Index8(Index8),
		.Index9(Index9),
		
		.Index10(Index10),
		.Index11(Index11),
		.Index12(Index12),
		.Index13(Index13),
		.Index14(Index14),
		.Index15(Index15),
		.Index16(Index16),
		.Index17(Index17),
		.Index18(Index18),
		.Index19(Index19),
		
		.Index20(Index20),
		
		//max values
		.Value_Max1(Value_Max1),
		.Value_Max2(Value_Max2),
		.Value_Max3(Value_Max3),
		.Value_Max4(Value_Max4),
		.Value_Max5(Value_Max5),
		.Value_Max6(Value_Max6),
		.Value_Max7(Value_Max7),
		.Value_Max8(Value_Max8),
		.Value_Max9(Value_Max9),
		
		.Value_Max10(Value_Max10),
		.Value_Max11(Value_Max11),
		.Value_Max12(Value_Max12),
		.Value_Max13(Value_Max13),
		.Value_Max14(Value_Max14),
		.Value_Max15(Value_Max15),
		.Value_Max16(Value_Max16),
		.Value_Max17(Value_Max17),
		.Value_Max18(Value_Max18),
		.Value_Max19(Value_Max19),
		
		.Value_Max20(Value_Max20),
		
		.iterIndex(iterIndex),
		
		
		//output
		.r_n0(r_n0),
		.r_n1(r_n1),
		.r_n2(r_n2),
		.r_n3(r_n3),
		.r_n4(r_n4),
		.r_n5(r_n5),
		.r_n6(r_n6),
		.r_n7(r_n7),
		.r_n8(r_n8),
		.r_n9(r_n9),
		
		.r_n10(r_n10),
		.r_n11(r_n11),
		.r_n12(r_n12),
		.r_n13(r_n13),
		.r_n14(r_n14),
		.r_n15(r_n15),
		.r_n16(r_n16),
		.r_n17(r_n17),
		.r_n18(r_n18),
		.r_n19(r_n19),
		
		.r_n20(r_n20),
		.r_n21(r_n21),
		.r_n22(r_n22),
		.r_n23(r_n23),
		.r_n24(r_n24),
		.r_n25(r_n25),
		.r_n26(r_n26),
		.r_n27(r_n27),
		.r_n28(r_n28),
		.r_n29(r_n29),
		
		.r_n30(r_n30),
		.r_n31(r_n31),
		.r_n32(r_n32),
		.r_n33(r_n33),
		.r_n34(r_n34),
		.r_n35(r_n35),
		.r_n36(r_n36),
		.r_n37(r_n37),
		.r_n38(r_n38),
		.r_n39(r_n39),
		
		.r_n40(r_n40),
		.r_n41(r_n41),
		.r_n42(r_n42),
		.r_n43(r_n43),
		.r_n44(r_n44),
		.r_n45(r_n45),
		.r_n46(r_n46),
		.r_n47(r_n47),
		
		
		.ifResidualZero(ifResidualZero),
		.finish_flag(finish_Iteration)
		);
		

always@(posedge clk ) begin
		if(!reset || finish_flag == 1)begin
			
			//DotAndMax Input
			reset_DotAndMax <= 0;
			residual0 <= 0;
			residual1 <= 0;
			residual2 <= 0;
			residual3 <= 0;
			residual4 <= 0;
			residual5 <= 0;
			residual6 <= 0;
			residual7 <= 0;
			residual8 <= 0;
			residual9 <= 0;
			
			residual10 <= 0;
			residual11 <= 0;
			residual12 <= 0;
			residual13 <= 0;
			residual14 <= 0;
			residual15 <= 0;
			residual16 <= 0;
			residual17 <= 0;
			residual18 <= 0;
			residual19 <= 0;
			
			residual20 <= 0;
			residual21 <= 0;
			residual22 <= 0;
			residual23 <= 0;
			residual24 <= 0;
			residual25 <= 0;
			residual26 <= 0;
			residual27 <= 0;
			residual28 <= 0;
			residual29 <= 0;
			
			residual30 <= 0;
			residual31 <= 0;
			residual32 <= 0;
			residual33 <= 0;
			residual34 <= 0;
			residual35 <= 0;
			residual36 <= 0;
			residual37 <= 0;
			residual38 <= 0;
			residual39 <= 0;
			
			residual40 <= 0;
			residual41 <= 0;
			residual42 <= 0;
			residual43 <= 0;
			residual44 <= 0;
			residual45 <= 0;
			residual46 <= 0;
			residual47 <= 0;
	

			//Iteration input
			iteration_measurements0 <= 0;
			iteration_measurements1 <= 0;
			iteration_measurements2 <= 0;
			iteration_measurements3 <= 0;
			iteration_measurements4 <= 0;
			iteration_measurements5 <= 0;
			iteration_measurements6 <= 0;
			iteration_measurements7 <= 0;
			iteration_measurements8 <= 0;
			iteration_measurements9 <= 0;
			
			iteration_measurements10 <= 0;
			iteration_measurements11 <= 0;
			iteration_measurements12 <= 0;
			iteration_measurements13 <= 0;
			iteration_measurements14 <= 0;
			iteration_measurements15 <= 0;
			iteration_measurements16 <= 0;
			iteration_measurements17 <= 0;
			iteration_measurements18 <= 0;
			iteration_measurements19 <= 0;
			
			iteration_measurements20 <= 0;
			iteration_measurements21 <= 0;
			iteration_measurements22 <= 0;
			iteration_measurements23 <= 0;
			iteration_measurements24 <= 0;
			iteration_measurements25 <= 0;
			iteration_measurements26 <= 0;
			iteration_measurements27 <= 0;
			iteration_measurements28 <= 0;
			iteration_measurements29 <= 0;
			
			iteration_measurements30 <= 0;
			iteration_measurements31 <= 0;
			iteration_measurements32 <= 0;
			iteration_measurements33 <= 0;
			iteration_measurements34 <= 0;
			iteration_measurements35 <= 0;
			iteration_measurements36 <= 0;
			iteration_measurements37 <= 0;
			iteration_measurements38 <= 0;
			iteration_measurements39 <= 0;
			
			iteration_measurements40 <= 0;
			iteration_measurements41 <= 0;
			iteration_measurements42 <= 0;
			iteration_measurements43 <= 0;
			iteration_measurements44 <= 0;
			iteration_measurements45 <= 0;
			iteration_measurements46 <= 0;
			iteration_measurements47 <= 0;
	
			//parameters of iterations
			resetIteration <= 0;
	
			//index values
			Index1 <= 0;
			Index2 <= 0;
			Index3 <= 0;
			Index4 <= 0;
			Index5 <= 0;
			Index6 <= 0;
			Index7 <= 0;
			Index8 <= 0;
			Index9 <= 0;
			
			Index10 <= 0;
			Index11 <= 0;
			Index12 <= 0;
			Index13 <= 0;
			Index14 <= 0;
			Index15 <= 0;
			Index16 <= 0;
			Index17 <= 0;
			Index18 <= 0;
			Index19 <= 0;
			
			Index20 <= 0;
			
			value_max <= 0;
			saveMax <= 0;
			
			//max values
			Value_Max1 <= 0;
			Value_Max2 <= 0;
			Value_Max3 <= 0;
			Value_Max4 <= 0;
			Value_Max5 <= 0;
			Value_Max6 <= 0;
			Value_Max7 <= 0;
			Value_Max8 <= 0;
			Value_Max9 <= 0;
			
			Value_Max10 <= 0;
			Value_Max11 <= 0;
			Value_Max12 <= 0;
			Value_Max13 <= 0;
			Value_Max14 <= 0;
			Value_Max15 <= 0;
			Value_Max16 <= 0;
			Value_Max17 <= 0;
			Value_Max18 <= 0;
			Value_Max19 <= 0;
			
			Value_Max20 <= 0;
	
			//judge if the last iteration or not
			iterIndex <= 0;
			reg_index_max <= 0;
	
	
			//temp paras
			//judge ifResidual is zero 
			flag_pixel <= 0;
	
			//pixel value calculation 
			tempPixel0 <= 0;
			tempPixel1 <= 0;
			tempPixel2 <= 0;
			tempPixel3 <= 0;
			tempPixel4 <= 0;
			tempPixel5 <= 0;
			tempPixel6 <= 0;
			tempPixel7 <= 0;
			tempPixel8 <= 0;
			tempPixel9 <= 0;
			
			tempPixel10 <= 0;
			tempPixel11 <= 0;
			tempPixel12 <= 0;
			tempPixel13 <= 0;
			tempPixel14 <= 0;
			tempPixel15 <= 0;
			tempPixel16 <= 0;
			tempPixel17 <= 0;
			tempPixel18 <= 0;
			tempPixel19 <= 0;
			
			tempPixel20 <= 0;
			tempPixel21 <= 0;
			tempPixel22 <= 0;
			tempPixel23 <= 0;
			tempPixel24 <= 0;
			tempPixel25 <= 0;
			tempPixel26 <= 0;
			tempPixel27 <= 0;
			tempPixel28 <= 0;
			tempPixel29 <= 0;
			
			tempPixel30 <= 0;
			tempPixel31 <= 0;
			tempPixel32 <= 0;
			tempPixel33 <= 0;
			tempPixel34 <= 0;
			tempPixel35 <= 0;
			tempPixel36 <= 0;
			tempPixel37 <= 0;
			tempPixel38 <= 0;
			tempPixel39 <= 0;
			
			tempPixel40 <= 0;
			tempPixel41 <= 0;
			tempPixel42 <= 0;
			tempPixel43 <= 0;
			tempPixel44 <= 0;
			tempPixel45 <= 0;
			tempPixel46 <= 0;
			tempPixel47 <= 0;
	
	
			//pixel value before shift
			temp_pixel0 <= 0;
			temp_pixel1 <= 0;
			temp_pixel2 <= 0;
			temp_pixel3 <= 0;
			temp_pixel4 <= 0;
			temp_pixel5 <= 0;
			temp_pixel6 <= 0;
			temp_pixel7 <= 0;
			temp_pixel8 <= 0;
			temp_pixel9 <= 0;
			temp_pixel10 <= 0;
			temp_pixel11 <= 0;
			temp_pixel12 <= 0;
			temp_pixel13 <= 0;
			temp_pixel14 <= 0;
			temp_pixel15 <= 0;
			temp_pixel16 <= 0;
			temp_pixel17 <= 0;
			temp_pixel18 <= 0;
			temp_pixel19 <= 0;
			temp_pixel20 <= 0;
			temp_pixel21 <= 0;
			temp_pixel22 <= 0;
			temp_pixel23 <= 0;
			temp_pixel24 <= 0;
			temp_pixel25 <= 0;
			temp_pixel26 <= 0;
			temp_pixel27 <= 0;
			temp_pixel28 <= 0;
			temp_pixel29 <= 0;
			temp_pixel30 <= 0;
			temp_pixel31 <= 0;
			temp_pixel32 <= 0;
			temp_pixel33 <= 0;
			temp_pixel34 <= 0;
			temp_pixel35 <= 0;
			temp_pixel36 <= 0;
			temp_pixel37 <= 0;
			temp_pixel38 <= 0;
			temp_pixel39 <= 0;
			temp_pixel40 <= 0;
			temp_pixel41 <= 0;
			temp_pixel42 <= 0;
			temp_pixel43 <= 0;
			temp_pixel44 <= 0;
			temp_pixel45 <= 0;
			temp_pixel46 <= 0;
			temp_pixel47 <= 0;
			temp_pixel48 <= 0;
			temp_pixel49 <= 0;
			temp_pixel50 <= 0;
			temp_pixel51 <= 0;
			temp_pixel52 <= 0;
			temp_pixel53 <= 0;
			temp_pixel54 <= 0;
			temp_pixel55 <= 0;
			temp_pixel56 <= 0;
			temp_pixel57 <= 0;
			temp_pixel58 <= 0;
			temp_pixel59 <= 0;
			temp_pixel60 <= 0;
			temp_pixel61 <= 0;
			temp_pixel62 <= 0;
			temp_pixel63 <= 0;

			
			
			//output
			pixel0 <= 0;
			pixel1 <= 0;
			pixel2 <= 0;
			pixel3 <= 0;
			pixel4 <= 0;
			pixel5 <= 0;
			pixel6 <= 0;
			pixel7 <= 0;
			pixel8 <= 0;
			pixel9 <= 0;
			pixel10 <= 0;
			pixel11 <= 0;
			pixel12 <= 0;
			pixel13 <= 0;
			pixel14 <= 0;
			pixel15 <= 0;
			pixel16 <= 0;
			pixel17 <= 0;
			pixel18 <= 0;
			pixel19 <= 0;
			pixel20 <= 0;
			pixel21 <= 0;
			pixel22 <= 0;
			pixel23 <= 0;
			pixel24 <= 0;
			pixel25 <= 0;
			pixel26 <= 0;
			pixel27 <= 0;
			pixel28 <= 0;
			pixel29 <= 0;
			pixel30 <= 0;
			pixel31 <= 0;
			pixel32 <= 0;
			pixel33 <= 0;
			pixel34 <= 0;
			pixel35 <= 0;
			pixel36 <= 0;
			pixel37 <= 0;
			pixel38 <= 0;
			pixel39 <= 0;
			pixel40 <= 0;
			pixel41 <= 0;
			pixel42 <= 0;
			pixel43 <= 0;
			pixel44 <= 0;
			pixel45 <= 0;
			pixel46 <= 0;
			pixel47 <= 0;
			pixel48 <= 0;
			pixel49 <= 0;
			pixel50 <= 0;
			pixel51 <= 0;
			pixel52 <= 0;
			pixel53 <= 0;
			pixel54 <= 0;
			pixel55 <= 0;
			pixel56 <= 0;
			pixel57 <= 0;
			pixel58 <= 0;
			pixel59 <= 0;
			pixel60 <= 0;
			pixel61 <= 0;
			pixel62 <= 0;
			pixel63 <= 0;
			
			finish_flag <= 0;
			times <= 0;
		end
		else begin 
			
			times <= times + 1;
			
			//clock 1
			//singleton activate
			if(times == 0) begin
				// initialize the inputs 
				// the input of iteration is not changed
				// activate first iter
				resetIteration <= 1;
				
				//iteration input -- not change
				iterIndex <= 1;
				
				iteration_measurements0 <= measurements0; 
				iteration_measurements1 <= measurements1; 
				iteration_measurements2 <= measurements2; 
				iteration_measurements3 <= measurements3; 
				iteration_measurements4 <= measurements4; 
				iteration_measurements5 <= measurements5; 
				iteration_measurements6 <= measurements6; 
				iteration_measurements7 <= measurements7; 
				iteration_measurements8 <= measurements8; 
				iteration_measurements9 <= measurements9; 
				
				iteration_measurements10 <= measurements10;
				iteration_measurements11 <= measurements11;
				iteration_measurements12 <= measurements12;
				iteration_measurements13 <= measurements13;
				iteration_measurements14 <= measurements14;
				iteration_measurements15 <= measurements15;
				iteration_measurements16 <= measurements16;
				iteration_measurements17 <= measurements17;
				iteration_measurements18 <= measurements18;
				iteration_measurements19 <= measurements19;
				
				iteration_measurements20 <= measurements20;
				iteration_measurements21 <= measurements21;
				iteration_measurements22 <= measurements22;
				iteration_measurements23 <= measurements23;
				iteration_measurements24 <= measurements24;
				iteration_measurements25 <= measurements25;
				iteration_measurements26 <= measurements26;
				iteration_measurements27 <= measurements27;
				iteration_measurements28 <= measurements28;
				iteration_measurements29 <= measurements29;
				
				iteration_measurements30 <= measurements30;
				iteration_measurements31 <= measurements31;
				iteration_measurements32 <= measurements32;
				iteration_measurements33 <= measurements33;
				iteration_measurements34 <= measurements34;
				iteration_measurements35 <= measurements35;
				iteration_measurements36 <= measurements36;
				iteration_measurements37 <= measurements37;
				iteration_measurements38 <= measurements38;
				iteration_measurements39 <= measurements39;
				
				iteration_measurements40 <= measurements40;
				iteration_measurements41 <= measurements41;
				iteration_measurements42 <= measurements42;
				iteration_measurements43 <= measurements43;
				iteration_measurements44 <= measurements44;
				iteration_measurements45 <= measurements45;
				iteration_measurements46 <= measurements46;
				iteration_measurements47 <= measurements47;
				
			end
			else begin
			end
			
			
			//renew residual 
			if(finish_Iteration == 1) begin 
			
				//inactivate current module
				resetIteration <= 0;
				
				//if all zeros
				if (ifResidualZero == 1) begin 
					
					//activate flag_pixel
					flag_pixel <= 1;
					
					//pixel value calculation 
					tempPixel0 <= r_n0;
					tempPixel1 <= r_n1;
					tempPixel2 <= r_n2;
					tempPixel3 <= r_n3;
					tempPixel4 <= r_n4;
					tempPixel5 <= r_n5;
					tempPixel6 <= r_n6;
					tempPixel7 <= r_n7;
					tempPixel8 <= r_n8;
					tempPixel9 <= r_n9;
					
					tempPixel10 <= r_n10;
					tempPixel11 <= r_n11;
					tempPixel12 <= r_n12;
					tempPixel13 <= r_n13;
					tempPixel14 <= r_n14;
					tempPixel15 <= r_n15;
					tempPixel16 <= r_n16;
					tempPixel17 <= r_n17;
					tempPixel18 <= r_n18;
					tempPixel19 <= r_n19;
					
					tempPixel20 <= r_n20;
					tempPixel21 <= r_n21;
					tempPixel22 <= r_n22;
					tempPixel23 <= r_n23;
					tempPixel24 <= r_n24;
					tempPixel25 <= r_n25;
					tempPixel26 <= r_n26;
					tempPixel27 <= r_n27;
					tempPixel28 <= r_n28;
					tempPixel29 <= r_n29;
					
					tempPixel30 <= r_n30;
					tempPixel31 <= r_n31;
					tempPixel32 <= r_n32;
					tempPixel33 <= r_n33;
					tempPixel34 <= r_n34;
					tempPixel35 <= r_n35;
					tempPixel36 <= r_n36;
					tempPixel37 <= r_n37;
					tempPixel38 <= r_n38;
					tempPixel39 <= r_n39;
					
					tempPixel40 <= r_n40;
					tempPixel41 <= r_n41;
					tempPixel42 <= r_n42;
					tempPixel43 <= r_n43;
					tempPixel44 <= r_n44;
					tempPixel45 <= r_n45;
					tempPixel46 <= r_n46;
					tempPixel47 <= r_n47;
					
				end 
				else begin
					//activate reset_DotAndMax 
					reset_DotAndMax <= 1;
					
					//DotAndMax input
					residual0 <= r_n0;
					residual1 <= r_n1;
					residual2 <= r_n2;
					residual3 <= r_n3;
					residual4 <= r_n4;
					residual5 <= r_n5;
					residual6 <= r_n6;
					residual7 <= r_n7;
					residual8 <= r_n8;
					residual9 <= r_n9;
					
					residual10 <= r_n10;
					residual11 <= r_n11;
					residual12 <= r_n12;
					residual13 <= r_n13;
					residual14 <= r_n14;
					residual15 <= r_n15;
					residual16 <= r_n16;
					residual17 <= r_n17;
					residual18 <= r_n18;
					residual19 <= r_n19;
					
					residual20 <= r_n20;
					residual21 <= r_n21;
					residual22 <= r_n22;
					residual23 <= r_n23;
					residual24 <= r_n24;
					residual25 <= r_n25;
					residual26 <= r_n26;
					residual27 <= r_n27;
					residual28 <= r_n28;
					residual29 <= r_n29;
					
					residual30 <= r_n30;
					residual31 <= r_n31;
					residual32 <= r_n32;
					residual33 <= r_n33;
					residual34 <= r_n34;
					residual35 <= r_n35;
					residual36 <= r_n36;
					residual37 <= r_n37;
					residual38 <= r_n38;
					residual39 <= r_n39;
					
					residual40 <= r_n40;
					residual41 <= r_n41;
					residual42 <= r_n42;
					residual43 <= r_n43;
					residual44 <= r_n44;
					residual45 <= r_n45;
					residual46 <= r_n46;
					residual47 <= r_n47;
					
				end
			
			end
			else begin 
			end
			
			//index calculation
			if(index_finish_flag == 1) begin  //5 clocks
			
				//inactivate current module
				reset_DotAndMax <= 0;
				saveMax <= 1;
				
				reg_index_max <= index_max;
				
				case(index_max)
					7'd1: value_max <= measurements1;
					7'd2: value_max <= measurements2;
					7'd3: value_max <= measurements3;
					7'd4: value_max <= measurements4;
					7'd5: value_max <= measurements5;
					7'd6: value_max <= measurements6;
					7'd7: value_max <= measurements7;
					7'd8: value_max <= measurements8;
					7'd9: value_max <= measurements9;
					7'd10: value_max <= measurements10;
					7'd11: value_max <= measurements11;
					7'd12: value_max <= measurements12;
					7'd13: value_max <= measurements13;
					7'd14: value_max <= measurements14;
					7'd15: value_max <= measurements15;
					7'd16: value_max <= measurements16;
					7'd17: value_max <= measurements17;
					7'd18: value_max <= measurements18;
					7'd19: value_max <= measurements19;
					7'd20: value_max <= measurements20;
					7'd21: value_max <= measurements21;
					7'd22: value_max <= measurements22;
					7'd23: value_max <= measurements23;
					7'd24: value_max <= measurements24;
					7'd25: value_max <= measurements25;
					7'd26: value_max <= measurements26;
					7'd27: value_max <= measurements27;
					7'd28: value_max <= measurements28;
					7'd29: value_max <= measurements29;
					7'd30: value_max <= measurements30;
					7'd31: value_max <= measurements31;
					7'd32: value_max <= measurements32;
					7'd33: value_max <= measurements33;
					7'd34: value_max <= measurements34;
					7'd35: value_max <= measurements35;
					7'd36: value_max <= measurements36;
					7'd37: value_max <= measurements37;
					7'd38: value_max <= measurements38;
					7'd39: value_max <= measurements39;
					7'd40: value_max <= measurements40;
					7'd41: value_max <= measurements41;
					7'd42: value_max <= measurements42;
					7'd43: value_max <= measurements43;
					7'd44: value_max <= measurements44;
					7'd45: value_max <= measurements45;
					7'd46: value_max <= measurements46;
					7'd47: value_max <= measurements47;
					
					default: value_max <= 0;
				endcase
				
			end 
			else begin
			end
			
			if(saveMax) begin
				
				saveMax <= 0;
				//add iteration index
				iterIndex <= iterIndex + 1;
				
				//save index value
				//depends on iterIndex---iterIndex here is small 1 than real iterIndex
				if(iterIndex == 1) begin 
					Index1 <= reg_index_max;
					Value_Max1 <= value_max;
				end
				else if(iterIndex == 2) begin 
					Index2 <= reg_index_max;
					Value_Max2 <= value_max;
				end
				else if(iterIndex == 3) begin 
					Index3 <= reg_index_max;
					Value_Max3 <= value_max;
				end
				else if(iterIndex == 4) begin 
					Index4 <= reg_index_max;
					Value_Max4 <= value_max;
				end
				else if(iterIndex == 5) begin 
					Index5 <= reg_index_max;
					Value_Max5 <= value_max;
				end
				else if(iterIndex == 6) begin 
					Index6 <= reg_index_max;
					Value_Max6 <= value_max;
				end
				else if(iterIndex == 7) begin 
					Index7 <= reg_index_max;
					Value_Max7 <= value_max;
				end
				else if(iterIndex == 8) begin 
					Index8 <= reg_index_max;
					Value_Max8 <= value_max;
				end
				else if(iterIndex == 9) begin 
					Index9 <= reg_index_max;
					Value_Max9 <= value_max;
				end
				
				else if(iterIndex == 10) begin 
					Index10 <= reg_index_max;
					Value_Max10 <= value_max;
				end
				else if(iterIndex == 11) begin 
					Index11 <= reg_index_max;
					Value_Max11 <= value_max;
				end
				else if(iterIndex == 12) begin 
					Index12 <= reg_index_max;
					Value_Max12 <= value_max;
				end
				else if(iterIndex == 13) begin 
					Index13 <= reg_index_max;
					Value_Max13 <= value_max;
				end
				else if(iterIndex == 14) begin 
					Index14 <= reg_index_max;
					Value_Max14 <= value_max;
				end
				else if(iterIndex == 15) begin 
					Index15 <= reg_index_max;
					Value_Max15 <= value_max;
				end
				else if(iterIndex == 16) begin 
					Index16 <= reg_index_max;
					Value_Max16 <= value_max;
				end
				else if(iterIndex == 17) begin 
					Index17 <= reg_index_max;
					Value_Max17 <= value_max;
				end
				else if(iterIndex == 18) begin 
					Index18 <= reg_index_max;
					Value_Max18 <= value_max;
				end
				else if(iterIndex == 19) begin 
					Index19 <= reg_index_max;
					Value_Max19 <= value_max;
				end
				
				else if(iterIndex == 20) begin 
					Index20 <= reg_index_max;
					Value_Max20 <= value_max;
				end
				else begin
				end
				
				//activate resetSecIter
				resetIteration <= 1;
			end
			else begin
			end
			
			
			
			//calculate pixel values before shift
			if(flag_pixel == 1) begin 
				
				flag_pixel <= flag_pixel + 1;
				
				//add to 48--------------------
				temp_pixel0 <= tempPixel0 + tempPixel1 + tempPixel2 + tempPixel3 + tempPixel4 + tempPixel5 + tempPixel6 + tempPixel7 
					+ tempPixel8 + tempPixel9 + tempPixel10 + tempPixel11 + tempPixel12 + tempPixel13 + tempPixel14 + tempPixel15
					+ tempPixel16 + tempPixel17 + tempPixel18 + tempPixel19 + tempPixel20 + tempPixel21 + tempPixel22 + tempPixel23 
					+ tempPixel24 + tempPixel25 + tempPixel26 + tempPixel27 + tempPixel28 + tempPixel29 + tempPixel30 + tempPixel31 
					+ tempPixel32 + tempPixel33 + tempPixel34 + tempPixel35 + tempPixel36 + tempPixel37 + tempPixel38 + tempPixel39 
					+ tempPixel40 + tempPixel41 + tempPixel42 + tempPixel43 + tempPixel44 + tempPixel45 + tempPixel46 + tempPixel47;
				
				temp_pixel1 <= tempPixel0 + tempPixel1 + tempPixel2 + tempPixel3 + tempPixel4 + tempPixel5 + tempPixel6 + tempPixel7 
					+ tempPixel8 + tempPixel9 + tempPixel10 + tempPixel11 + tempPixel12 + tempPixel13 + tempPixel14 + tempPixel15
					+ tempPixel16 + tempPixel17 + tempPixel18 + tempPixel19 + tempPixel20 + tempPixel21 + tempPixel22 + tempPixel23 
					+ tempPixel24 + tempPixel25 + tempPixel26 + tempPixel27 + tempPixel28 + tempPixel29 + tempPixel30 + tempPixel31  
					- tempPixel32 - tempPixel33 - tempPixel34 - tempPixel35 - tempPixel36 - tempPixel37 - tempPixel38 - tempPixel39 
					- tempPixel40 - tempPixel41 - tempPixel42 - tempPixel43 - tempPixel44 - tempPixel45 - tempPixel46 - tempPixel47;
					
				temp_pixel2 <= tempPixel0 + tempPixel1 + tempPixel2 + tempPixel3 + tempPixel4 + tempPixel5 + tempPixel6 + tempPixel7
					+ tempPixel8 + tempPixel9 + tempPixel10 + tempPixel11 + tempPixel12 + tempPixel13 + tempPixel14 + tempPixel15
					- tempPixel16 - tempPixel17 - tempPixel18 - tempPixel19 - tempPixel20 - tempPixel21 - tempPixel22 - tempPixel23 
					- tempPixel24 - tempPixel25 - tempPixel26 - tempPixel27 - tempPixel28 - tempPixel29 - tempPixel30 - tempPixel31 
					- tempPixel32 - tempPixel33 - tempPixel34 - tempPixel35 - tempPixel36 - tempPixel37 - tempPixel38 - tempPixel39 
					- tempPixel40 - tempPixel41 - tempPixel42 - tempPixel43 - tempPixel44 - tempPixel45 - tempPixel46 - tempPixel47;
					
				temp_pixel3 <= tempPixel0 + tempPixel1 + tempPixel2 + tempPixel3 + tempPixel4 + tempPixel5 + tempPixel6 + tempPixel7
					+ tempPixel8 + tempPixel9 + tempPixel10 + tempPixel11 + tempPixel12 + tempPixel13 + tempPixel14 + tempPixel15
					- tempPixel16 - tempPixel17 - tempPixel18 - tempPixel19 - tempPixel20 - tempPixel21 - tempPixel22 - tempPixel23 
					- tempPixel24 - tempPixel25 - tempPixel26 - tempPixel27 - tempPixel28 - tempPixel29 - tempPixel30 - tempPixel31 
					+ tempPixel32 + tempPixel33 + tempPixel34 + tempPixel35 + tempPixel36 + tempPixel37 + tempPixel38 + tempPixel39 
					+ tempPixel40 + tempPixel41 + tempPixel42 + tempPixel43 + tempPixel44 + tempPixel45 + tempPixel46 + tempPixel47;
					
				temp_pixel4 <= tempPixel0 + tempPixel1 + tempPixel2 + tempPixel3 + tempPixel4 + tempPixel5 + tempPixel6 + tempPixel7
					- tempPixel8 - tempPixel9 - tempPixel10 - tempPixel11 - tempPixel12 - tempPixel13 - tempPixel14 - tempPixel15
					- tempPixel16 - tempPixel17 - tempPixel18 - tempPixel19 - tempPixel20 - tempPixel21 - tempPixel22 - tempPixel23 
					+ tempPixel24 + tempPixel25 + tempPixel26 + tempPixel27 + tempPixel28 + tempPixel29 + tempPixel30 + tempPixel31 
					+ tempPixel32 + tempPixel33 + tempPixel34 + tempPixel35 + tempPixel36 + tempPixel37 + tempPixel38 + tempPixel39 
					- tempPixel40 - tempPixel41 - tempPixel42 - tempPixel43 - tempPixel44 - tempPixel45 - tempPixel46 - tempPixel47;
					
				temp_pixel5 <= tempPixel0 + tempPixel1 + tempPixel2 + tempPixel3 + tempPixel4 + tempPixel5 + tempPixel6 + tempPixel7 
					- tempPixel8 - tempPixel9 - tempPixel10 - tempPixel11 - tempPixel12 - tempPixel13 - tempPixel14 - tempPixel15
					- tempPixel16 - tempPixel17 - tempPixel18 - tempPixel19 - tempPixel20 - tempPixel21 - tempPixel22 - tempPixel23 
					+ tempPixel24 + tempPixel25 + tempPixel26 + tempPixel27 + tempPixel28 + tempPixel29 + tempPixel30 + tempPixel31 
					- tempPixel32 - tempPixel33 - tempPixel34 - tempPixel35 - tempPixel36 - tempPixel37 - tempPixel38 - tempPixel39 
					+ tempPixel40 + tempPixel41 + tempPixel42 + tempPixel43 + tempPixel44 + tempPixel45 + tempPixel46 + tempPixel47;
					
				temp_pixel6 <= tempPixel0 + tempPixel1 + tempPixel2 + tempPixel3 + tempPixel4 + tempPixel5 + tempPixel6 + tempPixel7 
					- tempPixel8 - tempPixel9 - tempPixel10 - tempPixel11 - tempPixel12 - tempPixel13 - tempPixel14 - tempPixel15
					+ tempPixel16 + tempPixel17 + tempPixel18 + tempPixel19 + tempPixel20 + tempPixel21 + tempPixel22 + tempPixel23 
					- tempPixel24 - tempPixel25 - tempPixel26 - tempPixel27 - tempPixel28 - tempPixel29 - tempPixel30 - tempPixel31 
					- tempPixel32 - tempPixel33 - tempPixel34 - tempPixel35 - tempPixel36 - tempPixel37 - tempPixel38 - tempPixel39 
					+ tempPixel40 + tempPixel41 + tempPixel42 + tempPixel43 + tempPixel44 + tempPixel45 + tempPixel46 + tempPixel47;
				
				temp_pixel7 <= tempPixel0 + tempPixel1 + tempPixel2 + tempPixel3 + tempPixel4 + tempPixel5 + tempPixel6 + tempPixel7 
					- tempPixel8 - tempPixel9 - tempPixel10 - tempPixel11 - tempPixel12 - tempPixel13 - tempPixel14 - tempPixel15
					+ tempPixel16 + tempPixel17 + tempPixel18 + tempPixel19 + tempPixel20 + tempPixel21 + tempPixel22 + tempPixel23 
					- tempPixel24 - tempPixel25 - tempPixel26 - tempPixel27 - tempPixel28 - tempPixel29 - tempPixel30 - tempPixel31 
					+ tempPixel32 + tempPixel33 + tempPixel34 + tempPixel35 + tempPixel36 + tempPixel37 + tempPixel38 + tempPixel39 
					- tempPixel40 - tempPixel41 - tempPixel42 - tempPixel43 - tempPixel44 - tempPixel45 - tempPixel46 - tempPixel47;
				
				
				
				
				
				temp_pixel8 <= tempPixel0 + tempPixel1 + tempPixel2 + tempPixel3 - tempPixel4 - tempPixel5 - tempPixel6 - tempPixel7 
					- tempPixel8 - tempPixel9 - tempPixel10 - tempPixel11 + tempPixel12 + tempPixel13 + tempPixel14 + tempPixel15
					+ tempPixel16 + tempPixel17 + tempPixel18 + tempPixel19 - tempPixel20 - tempPixel21 - tempPixel22 - tempPixel23 
					- tempPixel24 - tempPixel25 - tempPixel26 - tempPixel27 + tempPixel28 + tempPixel29 + tempPixel30 + tempPixel31 
					+ tempPixel32 + tempPixel33 + tempPixel34 + tempPixel35 - tempPixel36 - tempPixel37 - tempPixel38 - tempPixel39 
					- tempPixel40 - tempPixel41 - tempPixel42 - tempPixel43 + tempPixel44 + tempPixel45 + tempPixel46 + tempPixel47;
					
				temp_pixel9 <= tempPixel0 + tempPixel1 + tempPixel2 + tempPixel3 - tempPixel4 - tempPixel5 - tempPixel6 - tempPixel7 
					- tempPixel8 - tempPixel9 - tempPixel10 - tempPixel11 + tempPixel12 + tempPixel13 + tempPixel14 + tempPixel15
					+ tempPixel16 + tempPixel17 + tempPixel18 + tempPixel19 - tempPixel20 - tempPixel21 - tempPixel22 - tempPixel23 
					- tempPixel24 - tempPixel25 - tempPixel26 - tempPixel27 + tempPixel28 + tempPixel29 + tempPixel30 + tempPixel31 
					- tempPixel32 - tempPixel33 - tempPixel34 - tempPixel35 + tempPixel36 + tempPixel37 + tempPixel38 + tempPixel39
					+ tempPixel40 + tempPixel41 + tempPixel42 + tempPixel43 - tempPixel44 - tempPixel45 - tempPixel46 - tempPixel47;
				
				temp_pixel10 <= tempPixel0 + tempPixel1 + tempPixel2 + tempPixel3 - tempPixel4 - tempPixel5 - tempPixel6 - tempPixel7 
					- tempPixel8 - tempPixel9 - tempPixel10 - tempPixel11 + tempPixel12 + tempPixel13 + tempPixel14 + tempPixel15
					- tempPixel16 - tempPixel17 - tempPixel18 - tempPixel19 + tempPixel20 + tempPixel21 + tempPixel22 + tempPixel23 
					+ tempPixel24 + tempPixel25 + tempPixel26 + tempPixel27 - tempPixel28 - tempPixel29 - tempPixel30 - tempPixel31
					- tempPixel32 - tempPixel33 - tempPixel34 - tempPixel35 + tempPixel36 + tempPixel37 + tempPixel38 + tempPixel39
					+ tempPixel40 + tempPixel41 + tempPixel42 + tempPixel43 - tempPixel44 - tempPixel45 - tempPixel46 - tempPixel47;
				
				temp_pixel11 <= tempPixel0 + tempPixel1 + tempPixel2 + tempPixel3 - tempPixel4 - tempPixel5 - tempPixel6 - tempPixel7 
					- tempPixel8 - tempPixel9 - tempPixel10 - tempPixel11 + tempPixel12 + tempPixel13 + tempPixel14 + tempPixel15
					- tempPixel16 - tempPixel17 - tempPixel18 - tempPixel19 + tempPixel20 + tempPixel21 + tempPixel22 + tempPixel23 
					+ tempPixel24 + tempPixel25 + tempPixel26 + tempPixel27 - tempPixel28 - tempPixel29 - tempPixel30 - tempPixel31
					+ tempPixel32 + tempPixel33 + tempPixel34 + tempPixel35 - tempPixel36 - tempPixel37 - tempPixel38 - tempPixel39 
					- tempPixel40 - tempPixel41 - tempPixel42 - tempPixel43 + tempPixel44 + tempPixel45 + tempPixel46 + tempPixel47;
				
				temp_pixel12 <= tempPixel0 + tempPixel1 + tempPixel2 + tempPixel3 - tempPixel4 - tempPixel5 - tempPixel6 - tempPixel7 
					+ tempPixel8 + tempPixel9 + tempPixel10 + tempPixel11 - tempPixel12 - tempPixel13 - tempPixel14 - tempPixel15
					- tempPixel16 - tempPixel17 - tempPixel18 - tempPixel19 + tempPixel20 + tempPixel21 + tempPixel22 + tempPixel23 
					- tempPixel24 - tempPixel25 - tempPixel26 - tempPixel27 + tempPixel28 + tempPixel29 + tempPixel30 + tempPixel31 
					+ tempPixel32 + tempPixel33 + tempPixel34 + tempPixel35 - tempPixel36 - tempPixel37 - tempPixel38 - tempPixel39 
					+ tempPixel40 + tempPixel41 + tempPixel42 + tempPixel43 - tempPixel44 - tempPixel45 - tempPixel46 - tempPixel47;
				
				temp_pixel13 <= tempPixel0 + tempPixel1 + tempPixel2 + tempPixel3 - tempPixel4 - tempPixel5 - tempPixel6 - tempPixel7 
					+ tempPixel8 + tempPixel9 + tempPixel10 + tempPixel11 - tempPixel12 - tempPixel13 - tempPixel14 - tempPixel15
					- tempPixel16 - tempPixel17 - tempPixel18 - tempPixel19 + tempPixel20 + tempPixel21 + tempPixel22 + tempPixel23 
					- tempPixel24 - tempPixel25 - tempPixel26 - tempPixel27 + tempPixel28 + tempPixel29 + tempPixel30 + tempPixel31 
					- tempPixel32 - tempPixel33 - tempPixel34 - tempPixel35 + tempPixel36 + tempPixel37 + tempPixel38 + tempPixel39
					- tempPixel40 - tempPixel41 - tempPixel42 - tempPixel43 + tempPixel44 + tempPixel45 + tempPixel46 + tempPixel47;
					
				temp_pixel14 <= tempPixel0 + tempPixel1 + tempPixel2 + tempPixel3 - tempPixel4 - tempPixel5 - tempPixel6 - tempPixel7 
					+ tempPixel8 + tempPixel9 + tempPixel10 + tempPixel11 - tempPixel12 - tempPixel13 - tempPixel14 - tempPixel15
					+ tempPixel16 + tempPixel17 + tempPixel18 + tempPixel19 - tempPixel20 - tempPixel21 - tempPixel22 - tempPixel23 
					+ tempPixel24 + tempPixel25 + tempPixel26 + tempPixel27 - tempPixel28 - tempPixel29 - tempPixel30 - tempPixel31
					- tempPixel32 - tempPixel33 - tempPixel34 - tempPixel35 + tempPixel36 + tempPixel37 + tempPixel38 + tempPixel39
					- tempPixel40 - tempPixel41 - tempPixel42 - tempPixel43 + tempPixel44 + tempPixel45 + tempPixel46 + tempPixel47;
				
				temp_pixel15 <= tempPixel0 + tempPixel1 + tempPixel2 + tempPixel3 - tempPixel4 - tempPixel5 - tempPixel6 - tempPixel7 
					+ tempPixel8 + tempPixel9 + tempPixel10 + tempPixel11 - tempPixel12 - tempPixel13 - tempPixel14 - tempPixel15
					+ tempPixel16 + tempPixel17 + tempPixel18 + tempPixel19 - tempPixel20 - tempPixel21 - tempPixel22 - tempPixel23 
					+ tempPixel24 + tempPixel25 + tempPixel26 + tempPixel27 - tempPixel28 - tempPixel29 - tempPixel30 - tempPixel31
					+ tempPixel32 + tempPixel33 + tempPixel34 + tempPixel35 - tempPixel36 - tempPixel37 - tempPixel38 - tempPixel39 
					+ tempPixel40 + tempPixel41 + tempPixel42 + tempPixel43 - tempPixel44 - tempPixel45 - tempPixel46 - tempPixel47;
					
					
					
					
					
				temp_pixel16 <= tempPixel0 + tempPixel1 - tempPixel2 - tempPixel3 - tempPixel4 - tempPixel5 + tempPixel6 + tempPixel7 
					+ tempPixel8 + tempPixel9 - tempPixel10 - tempPixel11 - tempPixel12 - tempPixel13 + tempPixel14 + tempPixel15
					+ tempPixel16 + tempPixel17 - tempPixel18 - tempPixel19 - tempPixel20 - tempPixel21 + tempPixel22 + tempPixel23 
					+ tempPixel24 + tempPixel25 - tempPixel26 - tempPixel27 - tempPixel28 - tempPixel29 + tempPixel30 + tempPixel31
					+ tempPixel32 + tempPixel33 - tempPixel34 - tempPixel35 - tempPixel36 - tempPixel37 + tempPixel38 + tempPixel39 
					+ tempPixel40 + tempPixel41 - tempPixel42 - tempPixel43 - tempPixel44 - tempPixel45 + tempPixel46 + tempPixel47;
				
				temp_pixel17 <= tempPixel0 + tempPixel1 - tempPixel2 - tempPixel3 - tempPixel4 - tempPixel5 + tempPixel6 + tempPixel7 
					+ tempPixel8 + tempPixel9 - tempPixel10 - tempPixel11 - tempPixel12 - tempPixel13 + tempPixel14 + tempPixel15
					+ tempPixel16 + tempPixel17 - tempPixel18 - tempPixel19 - tempPixel20 - tempPixel21 + tempPixel22 + tempPixel23 
					+ tempPixel24 + tempPixel25 - tempPixel26 - tempPixel27 - tempPixel28 - tempPixel29 + tempPixel30 + tempPixel31
					- tempPixel32 - tempPixel33 + tempPixel34 + tempPixel35 + tempPixel36 + tempPixel37 - tempPixel38 - tempPixel39
					- tempPixel40 - tempPixel41 + tempPixel42 + tempPixel43 + tempPixel44 + tempPixel45 - tempPixel46 - tempPixel47;
				
				temp_pixel18 <= tempPixel0 + tempPixel1 - tempPixel2 - tempPixel3 - tempPixel4 - tempPixel5 + tempPixel6 + tempPixel7 
					+ tempPixel8 + tempPixel9 - tempPixel10 - tempPixel11 - tempPixel12 - tempPixel13 + tempPixel14 + tempPixel15
					- tempPixel16 - tempPixel17 + tempPixel18 + tempPixel19 + tempPixel20 + tempPixel21 - tempPixel22 - tempPixel23
					- tempPixel24 - tempPixel25 + tempPixel26 + tempPixel27 + tempPixel28 + tempPixel29 - tempPixel30 - tempPixel31 
					- tempPixel32 - tempPixel33 + tempPixel34 + tempPixel35 + tempPixel36 + tempPixel37 - tempPixel38 - tempPixel39
					- tempPixel40 - tempPixel41 + tempPixel42 + tempPixel43 + tempPixel44 + tempPixel45 - tempPixel46 - tempPixel47;
					
				temp_pixel19 <= tempPixel0 + tempPixel1 - tempPixel2 - tempPixel3 - tempPixel4 - tempPixel5 + tempPixel6 + tempPixel7 
					+ tempPixel8 + tempPixel9 - tempPixel10 - tempPixel11 - tempPixel12 - tempPixel13 + tempPixel14 + tempPixel15
					- tempPixel16 - tempPixel17 + tempPixel18 + tempPixel19 + tempPixel20 + tempPixel21 - tempPixel22 - tempPixel23
					- tempPixel24 - tempPixel25 + tempPixel26 + tempPixel27 + tempPixel28 + tempPixel29 - tempPixel30 - tempPixel31 
					+ tempPixel32 + tempPixel33 - tempPixel34 - tempPixel35 - tempPixel36 - tempPixel37 + tempPixel38 + tempPixel39 
					+ tempPixel40 + tempPixel41 - tempPixel42 - tempPixel43 - tempPixel44 - tempPixel45 + tempPixel46 + tempPixel47;
				
				temp_pixel20 <= tempPixel0 + tempPixel1 - tempPixel2 - tempPixel3 - tempPixel4 - tempPixel5 + tempPixel6 + tempPixel7 
					- tempPixel8 - tempPixel9 + tempPixel10 + tempPixel11 + tempPixel12 + tempPixel13 - tempPixel14 - tempPixel15
					- tempPixel16 - tempPixel17 + tempPixel18 + tempPixel19 + tempPixel20 + tempPixel21 - tempPixel22 - tempPixel23
					+ tempPixel24 + tempPixel25 - tempPixel26 - tempPixel27 - tempPixel28 - tempPixel29 + tempPixel30 + tempPixel31
					+ tempPixel32 + tempPixel33 - tempPixel34 - tempPixel35 - tempPixel36 - tempPixel37 + tempPixel38 + tempPixel39 
					- tempPixel40 - tempPixel41 + tempPixel42 + tempPixel43 + tempPixel44 + tempPixel45 - tempPixel46 - tempPixel47;
				
				temp_pixel21 <= tempPixel0 + tempPixel1 - tempPixel2 - tempPixel3 - tempPixel4 - tempPixel5 + tempPixel6 + tempPixel7 
					- tempPixel8 - tempPixel9 + tempPixel10 + tempPixel11 + tempPixel12 + tempPixel13 - tempPixel14 - tempPixel15
					- tempPixel16 - tempPixel17 + tempPixel18 + tempPixel19 + tempPixel20 + tempPixel21 - tempPixel22 - tempPixel23
					+ tempPixel24 + tempPixel25 - tempPixel26 - tempPixel27 - tempPixel28 - tempPixel29 + tempPixel30 + tempPixel31
					- tempPixel32 - tempPixel33 + tempPixel34 + tempPixel35 + tempPixel36 + tempPixel37 - tempPixel38 - tempPixel39
					+ tempPixel40 + tempPixel41 - tempPixel42 - tempPixel43 - tempPixel44 - tempPixel45 + tempPixel46 + tempPixel47;
				
				temp_pixel22 <= tempPixel0 + tempPixel1 - tempPixel2 - tempPixel3 - tempPixel4 - tempPixel5 + tempPixel6 + tempPixel7 
					- tempPixel8 - tempPixel9 + tempPixel10 + tempPixel11 + tempPixel12 + tempPixel13 - tempPixel14 - tempPixel15
					+ tempPixel16 + tempPixel17 - tempPixel18 - tempPixel19 - tempPixel20 - tempPixel21 + tempPixel22 + tempPixel23 
					- tempPixel24 - tempPixel25 + tempPixel26 + tempPixel27 + tempPixel28 + tempPixel29 - tempPixel30 - tempPixel31 
					- tempPixel32 - tempPixel33 + tempPixel34 + tempPixel35 + tempPixel36 + tempPixel37 - tempPixel38 - tempPixel39
					+ tempPixel40 + tempPixel41 - tempPixel42 - tempPixel43 - tempPixel44 - tempPixel45 + tempPixel46 + tempPixel47;
				
				temp_pixel23 <= tempPixel0 + tempPixel1 - tempPixel2 - tempPixel3 - tempPixel4 - tempPixel5 + tempPixel6 + tempPixel7 
					- tempPixel8 - tempPixel9 + tempPixel10 + tempPixel11 + tempPixel12 + tempPixel13 - tempPixel14 - tempPixel15
					+ tempPixel16 + tempPixel17 - tempPixel18 - tempPixel19 - tempPixel20 - tempPixel21 + tempPixel22 + tempPixel23 
					- tempPixel24 - tempPixel25 + tempPixel26 + tempPixel27 + tempPixel28 + tempPixel29 - tempPixel30 - tempPixel31 
					+ tempPixel32 + tempPixel33 - tempPixel34 - tempPixel35 - tempPixel36 - tempPixel37 + tempPixel38 + tempPixel39 
					- tempPixel40 - tempPixel41 + tempPixel42 + tempPixel43 + tempPixel44 + tempPixel45 - tempPixel46 - tempPixel47;
				
				
				
				
				
				temp_pixel24 <= tempPixel0 + tempPixel1 - tempPixel2 - tempPixel3 + tempPixel4 + tempPixel5 - tempPixel6 - tempPixel7 
					- tempPixel8 - tempPixel9 + tempPixel10 + tempPixel11 - tempPixel12 - tempPixel13 + tempPixel14 + tempPixel15
					+ tempPixel16 + tempPixel17 - tempPixel18 - tempPixel19 + tempPixel20 + tempPixel21 - tempPixel22 - tempPixel23 
					- tempPixel24 - tempPixel25 + tempPixel26 + tempPixel27 - tempPixel28 - tempPixel29 + tempPixel30 + tempPixel31 
					+ tempPixel32 + tempPixel33 - tempPixel34 - tempPixel35 + tempPixel36 + tempPixel37 - tempPixel38 - tempPixel39 
					- tempPixel40 - tempPixel41 + tempPixel42 + tempPixel43 - tempPixel44 - tempPixel45 + tempPixel46 + tempPixel47;
				
				temp_pixel25 <= tempPixel0 + tempPixel1 - tempPixel2 - tempPixel3 + tempPixel4 + tempPixel5 - tempPixel6 - tempPixel7 
					- tempPixel8 - tempPixel9 + tempPixel10 + tempPixel11 - tempPixel12 - tempPixel13 + tempPixel14 + tempPixel15
					+ tempPixel16 + tempPixel17 - tempPixel18 - tempPixel19 + tempPixel20 + tempPixel21 - tempPixel22 - tempPixel23 
					- tempPixel24 - tempPixel25 + tempPixel26 + tempPixel27 - tempPixel28 - tempPixel29 + tempPixel30 + tempPixel31 
					- tempPixel32 - tempPixel33 + tempPixel34 + tempPixel35 - tempPixel36 - tempPixel37 + tempPixel38 + tempPixel39
					+ tempPixel40 + tempPixel41 - tempPixel42 - tempPixel43 + tempPixel44 + tempPixel45 - tempPixel46 - tempPixel47;
				
				temp_pixel26 <= tempPixel0 + tempPixel1 - tempPixel2 - tempPixel3 + tempPixel4 + tempPixel5 - tempPixel6 - tempPixel7 
					- tempPixel8 - tempPixel9 + tempPixel10 + tempPixel11 - tempPixel12 - tempPixel13 + tempPixel14 + tempPixel15
					- tempPixel16 - tempPixel17 + tempPixel18 + tempPixel19 - tempPixel20 - tempPixel21 + tempPixel22 + tempPixel23
					+ tempPixel24 + tempPixel25 - tempPixel26 - tempPixel27 + tempPixel28 + tempPixel29 - tempPixel30 - tempPixel31
					- tempPixel32 - tempPixel33 + tempPixel34 + tempPixel35 - tempPixel36 - tempPixel37 + tempPixel38 + tempPixel39
					+ tempPixel40 + tempPixel41 - tempPixel42 - tempPixel43 + tempPixel44 + tempPixel45 - tempPixel46 - tempPixel47;
				
				temp_pixel27 <= tempPixel0 + tempPixel1 - tempPixel2 - tempPixel3 + tempPixel4 + tempPixel5 - tempPixel6 - tempPixel7 
					- tempPixel8 - tempPixel9 + tempPixel10 + tempPixel11 - tempPixel12 - tempPixel13 + tempPixel14 + tempPixel15
					- tempPixel16 - tempPixel17 + tempPixel18 + tempPixel19 - tempPixel20 - tempPixel21 + tempPixel22 + tempPixel23
					+ tempPixel24 + tempPixel25 - tempPixel26 - tempPixel27 + tempPixel28 + tempPixel29 - tempPixel30 - tempPixel31
					+ tempPixel32 + tempPixel33 - tempPixel34 - tempPixel35 + tempPixel36 + tempPixel37 - tempPixel38 - tempPixel39 
					- tempPixel40 - tempPixel41 + tempPixel42 + tempPixel43 - tempPixel44 - tempPixel45 + tempPixel46 + tempPixel47;
				
				temp_pixel28 <= tempPixel0 + tempPixel1 - tempPixel2 - tempPixel3 + tempPixel4 + tempPixel5 - tempPixel6 - tempPixel7 
					+ tempPixel8 + tempPixel9 - tempPixel10 - tempPixel11 + tempPixel12 + tempPixel13 - tempPixel14 - tempPixel15
					- tempPixel16 - tempPixel17 + tempPixel18 + tempPixel19 - tempPixel20 - tempPixel21 + tempPixel22 + tempPixel23
					- tempPixel24 - tempPixel25 + tempPixel26 + tempPixel27 - tempPixel28 - tempPixel29 + tempPixel30 + tempPixel31 
					+ tempPixel32 + tempPixel33 - tempPixel34 - tempPixel35 + tempPixel36 + tempPixel37 - tempPixel38 - tempPixel39 
					+ tempPixel40 + tempPixel41 - tempPixel42 - tempPixel43 + tempPixel44 + tempPixel45 - tempPixel46 - tempPixel47;
				
				temp_pixel29 <= tempPixel0 + tempPixel1 - tempPixel2 - tempPixel3 + tempPixel4 + tempPixel5 - tempPixel6 - tempPixel7 
					+ tempPixel8 + tempPixel9 - tempPixel10 - tempPixel11 + tempPixel12 + tempPixel13 - tempPixel14 - tempPixel15
					- tempPixel16 - tempPixel17 + tempPixel18 + tempPixel19 - tempPixel20 - tempPixel21 + tempPixel22 + tempPixel23
					- tempPixel24 - tempPixel25 + tempPixel26 + tempPixel27 - tempPixel28 - tempPixel29 + tempPixel30 + tempPixel31 
					- tempPixel32 - tempPixel33 + tempPixel34 + tempPixel35 - tempPixel36 - tempPixel37 + tempPixel38 + tempPixel39
					- tempPixel40 - tempPixel41 + tempPixel42 + tempPixel43 - tempPixel44 - tempPixel45 + tempPixel46 + tempPixel47;
				
				temp_pixel30 <= tempPixel0 + tempPixel1 - tempPixel2 - tempPixel3 + tempPixel4 + tempPixel5 - tempPixel6 - tempPixel7 
					+ tempPixel8 + tempPixel9 - tempPixel10 - tempPixel11 + tempPixel12 + tempPixel13 - tempPixel14 - tempPixel15
					+ tempPixel16 + tempPixel17 - tempPixel18 - tempPixel19 + tempPixel20 + tempPixel21 - tempPixel22 - tempPixel23 
					+ tempPixel24 + tempPixel25 - tempPixel26 - tempPixel27 + tempPixel28 + tempPixel29 - tempPixel30 - tempPixel31
					- tempPixel32 - tempPixel33 + tempPixel34 + tempPixel35 - tempPixel36 - tempPixel37 + tempPixel38 + tempPixel39
					- tempPixel40 - tempPixel41 + tempPixel42 + tempPixel43 - tempPixel44 - tempPixel45 + tempPixel46 + tempPixel47;
				
				temp_pixel31 <= tempPixel0 + tempPixel1 - tempPixel2 - tempPixel3 + tempPixel4 + tempPixel5 - tempPixel6 - tempPixel7 
					+ tempPixel8 + tempPixel9 - tempPixel10 - tempPixel11 + tempPixel12 + tempPixel13 - tempPixel14 - tempPixel15
					+ tempPixel16 + tempPixel17 - tempPixel18 - tempPixel19 + tempPixel20 + tempPixel21 - tempPixel22 - tempPixel23 
					+ tempPixel24 + tempPixel25 - tempPixel26 - tempPixel27 + tempPixel28 + tempPixel29 - tempPixel30 - tempPixel31
					+ tempPixel32 + tempPixel33 - tempPixel34 - tempPixel35 + tempPixel36 + tempPixel37 - tempPixel38 - tempPixel39 
					+ tempPixel40 + tempPixel41 - tempPixel42 - tempPixel43 + tempPixel44 + tempPixel45 - tempPixel46 - tempPixel47;
				
				
				
				
				
				temp_pixel32 <= tempPixel0 - tempPixel1 - tempPixel2 + tempPixel3 + tempPixel4 - tempPixel5 - tempPixel6 + tempPixel7
					+ tempPixel8 - tempPixel9 - tempPixel10 + tempPixel11 + tempPixel12 - tempPixel13 - tempPixel14 + tempPixel15
					+ tempPixel16 - tempPixel17 - tempPixel18 + tempPixel19 + tempPixel20 - tempPixel21 - tempPixel22 + tempPixel23 
					+ tempPixel24 - tempPixel25 - tempPixel26 + tempPixel27 + tempPixel28 - tempPixel29 - tempPixel30 + tempPixel31
					+ tempPixel32 - tempPixel33 - tempPixel34 + tempPixel35 + tempPixel36 - tempPixel37 - tempPixel38 + tempPixel39 
					+ tempPixel40 - tempPixel41 - tempPixel42 + tempPixel43 + tempPixel44 - tempPixel45 - tempPixel46 + tempPixel47;
				
				temp_pixel33 <= tempPixel0 - tempPixel1 - tempPixel2 + tempPixel3 + tempPixel4 - tempPixel5 - tempPixel6 + tempPixel7
					+ tempPixel8 - tempPixel9 - tempPixel10 + tempPixel11 + tempPixel12 - tempPixel13 - tempPixel14 + tempPixel15
					+ tempPixel16 - tempPixel17 - tempPixel18 + tempPixel19 + tempPixel20 - tempPixel21 - tempPixel22 + tempPixel23 
					+ tempPixel24 - tempPixel25 - tempPixel26 + tempPixel27 + tempPixel28 - tempPixel29 - tempPixel30 + tempPixel31
					- tempPixel32 + tempPixel33 + tempPixel34 - tempPixel35 - tempPixel36 + tempPixel37 + tempPixel38 - tempPixel39
					- tempPixel40 + tempPixel41 + tempPixel42 - tempPixel43 - tempPixel44 + tempPixel45 + tempPixel46 - tempPixel47;
				
				temp_pixel34 <= tempPixel0 - tempPixel1 - tempPixel2 + tempPixel3 + tempPixel4 - tempPixel5 - tempPixel6 + tempPixel7
					+ tempPixel8 - tempPixel9 - tempPixel10 + tempPixel11 + tempPixel12 - tempPixel13 - tempPixel14 + tempPixel15
					- tempPixel16 + tempPixel17 + tempPixel18 - tempPixel19 - tempPixel20 + tempPixel21 + tempPixel22 - tempPixel23
					- tempPixel24 + tempPixel25 + tempPixel26 - tempPixel27 - tempPixel28 + tempPixel29 + tempPixel30 - tempPixel31 
					- tempPixel32 + tempPixel33 + tempPixel34 - tempPixel35 - tempPixel36 + tempPixel37 + tempPixel38 - tempPixel39
					- tempPixel40 + tempPixel41 + tempPixel42 - tempPixel43 - tempPixel44 + tempPixel45 + tempPixel46 - tempPixel47;
				
				temp_pixel35 <= tempPixel0 - tempPixel1 - tempPixel2 + tempPixel3 + tempPixel4 - tempPixel5 - tempPixel6 + tempPixel7
					+ tempPixel8 - tempPixel9 - tempPixel10 + tempPixel11 + tempPixel12 - tempPixel13 - tempPixel14 + tempPixel15
					- tempPixel16 + tempPixel17 + tempPixel18 - tempPixel19 - tempPixel20 + tempPixel21 + tempPixel22 - tempPixel23
					- tempPixel24 + tempPixel25 + tempPixel26 - tempPixel27 - tempPixel28 + tempPixel29 + tempPixel30 - tempPixel31 
					+ tempPixel32 - tempPixel33 - tempPixel34 + tempPixel35 + tempPixel36 - tempPixel37 - tempPixel38 + tempPixel39 
					+ tempPixel40 - tempPixel41 - tempPixel42 + tempPixel43 + tempPixel44 - tempPixel45 - tempPixel46 + tempPixel47;
				
				temp_pixel36 <= tempPixel0 - tempPixel1 - tempPixel2 + tempPixel3 + tempPixel4 - tempPixel5 - tempPixel6 + tempPixel7
					- tempPixel8 + tempPixel9 + tempPixel10 - tempPixel11 - tempPixel12 + tempPixel13 + tempPixel14 - tempPixel15
					- tempPixel16 + tempPixel17 + tempPixel18 - tempPixel19 - tempPixel20 + tempPixel21 + tempPixel22 - tempPixel23
					+ tempPixel24 - tempPixel25 - tempPixel26 + tempPixel27 + tempPixel28 - tempPixel29 - tempPixel30 + tempPixel31
					+ tempPixel32 - tempPixel33 - tempPixel34 + tempPixel35 + tempPixel36 - tempPixel37 - tempPixel38 + tempPixel39 
					- tempPixel40 + tempPixel41 + tempPixel42 - tempPixel43 - tempPixel44 + tempPixel45 + tempPixel46 - tempPixel47;
					
				temp_pixel37 <= tempPixel0 - tempPixel1 - tempPixel2 + tempPixel3 + tempPixel4 - tempPixel5 - tempPixel6 + tempPixel7
					- tempPixel8 + tempPixel9 + tempPixel10 - tempPixel11 - tempPixel12 + tempPixel13 + tempPixel14 - tempPixel15
					- tempPixel16 + tempPixel17 + tempPixel18 - tempPixel19 - tempPixel20 + tempPixel21 + tempPixel22 - tempPixel23
					+ tempPixel24 - tempPixel25 - tempPixel26 + tempPixel27 + tempPixel28 - tempPixel29 - tempPixel30 + tempPixel31
					- tempPixel32 + tempPixel33 + tempPixel34 - tempPixel35 - tempPixel36 + tempPixel37 + tempPixel38 - tempPixel39
					+ tempPixel40 - tempPixel41 - tempPixel42 + tempPixel43 + tempPixel44 - tempPixel45 - tempPixel46 + tempPixel47;
				
				temp_pixel38 <= tempPixel0 - tempPixel1 - tempPixel2 + tempPixel3 + tempPixel4 - tempPixel5 - tempPixel6 + tempPixel7
					- tempPixel8 + tempPixel9 + tempPixel10 - tempPixel11 - tempPixel12 + tempPixel13 + tempPixel14 - tempPixel15
					+ tempPixel16 - tempPixel17 - tempPixel18 + tempPixel19 + tempPixel20 - tempPixel21 - tempPixel22 + tempPixel23 
					- tempPixel24 + tempPixel25 + tempPixel26 - tempPixel27 - tempPixel28 + tempPixel29 + tempPixel30 - tempPixel31 
					- tempPixel32 + tempPixel33 + tempPixel34 - tempPixel35 - tempPixel36 + tempPixel37 + tempPixel38 - tempPixel39
					+ tempPixel40 - tempPixel41 - tempPixel42 + tempPixel43 + tempPixel44 - tempPixel45 - tempPixel46 + tempPixel47;
				
				temp_pixel39 <= tempPixel0 - tempPixel1 - tempPixel2 + tempPixel3 + tempPixel4 - tempPixel5 - tempPixel6 + tempPixel7
					- tempPixel8 + tempPixel9 + tempPixel10 - tempPixel11 - tempPixel12 + tempPixel13 + tempPixel14 - tempPixel15
					+ tempPixel16 - tempPixel17 - tempPixel18 + tempPixel19 + tempPixel20 - tempPixel21 - tempPixel22 + tempPixel23 
					- tempPixel24 + tempPixel25 + tempPixel26 - tempPixel27 - tempPixel28 + tempPixel29 + tempPixel30 - tempPixel31 
					+ tempPixel32 - tempPixel33 - tempPixel34 + tempPixel35 + tempPixel36 - tempPixel37 - tempPixel38 + tempPixel39 
					- tempPixel40 + tempPixel41 + tempPixel42 - tempPixel43 - tempPixel44 + tempPixel45 + tempPixel46 - tempPixel47;
				
				
				
				
				
				temp_pixel40 <= tempPixel0 - tempPixel1 - tempPixel2 + tempPixel3 - tempPixel4 + tempPixel5 + tempPixel6 - tempPixel7
					- tempPixel8 + tempPixel9 + tempPixel10 - tempPixel11 + tempPixel12 - tempPixel13 - tempPixel14 + tempPixel15
					+ tempPixel16 - tempPixel17 - tempPixel18 + tempPixel19 - tempPixel20 + tempPixel21 + tempPixel22 - tempPixel23 
					- tempPixel24 + tempPixel25 + tempPixel26 - tempPixel27 + tempPixel28 - tempPixel29 - tempPixel30 + tempPixel31 
					+ tempPixel32 - tempPixel33 - tempPixel34 + tempPixel35 - tempPixel36 + tempPixel37 + tempPixel38 - tempPixel39 
					- tempPixel40 + tempPixel41 + tempPixel42 - tempPixel43 + tempPixel44 - tempPixel45 - tempPixel46 + tempPixel47;
				
				temp_pixel41 <= tempPixel0 - tempPixel1 - tempPixel2 + tempPixel3 - tempPixel4 + tempPixel5 + tempPixel6 - tempPixel7
					- tempPixel8 + tempPixel9 + tempPixel10 - tempPixel11 + tempPixel12 - tempPixel13 - tempPixel14 + tempPixel15
					+ tempPixel16 - tempPixel17 - tempPixel18 + tempPixel19 - tempPixel20 + tempPixel21 + tempPixel22 - tempPixel23 
					- tempPixel24 + tempPixel25 + tempPixel26 - tempPixel27 + tempPixel28 - tempPixel29 - tempPixel30 + tempPixel31 
					- tempPixel32 + tempPixel33 + tempPixel34 - tempPixel35 + tempPixel36 - tempPixel37 - tempPixel38 + tempPixel39
					+ tempPixel40 - tempPixel41 - tempPixel42 + tempPixel43 - tempPixel44 + tempPixel45 + tempPixel46 - tempPixel47;
				
				temp_pixel42 <= tempPixel0 - tempPixel1 - tempPixel2 + tempPixel3 - tempPixel4 + tempPixel5 + tempPixel6 - tempPixel7
					- tempPixel8 + tempPixel9 + tempPixel10 - tempPixel11 + tempPixel12 - tempPixel13 - tempPixel14 + tempPixel15
					- tempPixel16 + tempPixel17 + tempPixel18 - tempPixel19 + tempPixel20 - tempPixel21 - tempPixel22 + tempPixel23
					+ tempPixel24 - tempPixel25 - tempPixel26 + tempPixel27 - tempPixel28 + tempPixel29 + tempPixel30 - tempPixel31
					- tempPixel32 + tempPixel33 + tempPixel34 - tempPixel35 + tempPixel36 - tempPixel37 - tempPixel38 + tempPixel39
					+ tempPixel40 - tempPixel41 - tempPixel42 + tempPixel43 - tempPixel44 + tempPixel45 + tempPixel46 - tempPixel47;
				
				temp_pixel43 <= tempPixel0 - tempPixel1 - tempPixel2 + tempPixel3 - tempPixel4 + tempPixel5 + tempPixel6 - tempPixel7
					- tempPixel8 + tempPixel9 + tempPixel10 - tempPixel11 + tempPixel12 - tempPixel13 - tempPixel14 + tempPixel15
					- tempPixel16 + tempPixel17 + tempPixel18 - tempPixel19 + tempPixel20 - tempPixel21 - tempPixel22 + tempPixel23
					+ tempPixel24 - tempPixel25 - tempPixel26 + tempPixel27 - tempPixel28 + tempPixel29 + tempPixel30 - tempPixel31
					+ tempPixel32 - tempPixel33 - tempPixel34 + tempPixel35 - tempPixel36 + tempPixel37 + tempPixel38 - tempPixel39 
					- tempPixel40 + tempPixel41 + tempPixel42 - tempPixel43 + tempPixel44 - tempPixel45 - tempPixel46 + tempPixel47;
				
				temp_pixel44 <= tempPixel0 - tempPixel1 - tempPixel2 + tempPixel3 - tempPixel4 + tempPixel5 + tempPixel6 - tempPixel7
					+ tempPixel8 - tempPixel9 - tempPixel10 + tempPixel11 - tempPixel12 + tempPixel13 + tempPixel14 - tempPixel15
					- tempPixel16 + tempPixel17 + tempPixel18 - tempPixel19 + tempPixel20 - tempPixel21 - tempPixel22 + tempPixel23
					- tempPixel24 + tempPixel25 + tempPixel26 - tempPixel27 + tempPixel28 - tempPixel29 - tempPixel30 + tempPixel31 
					+ tempPixel32 - tempPixel33 - tempPixel34 + tempPixel35 - tempPixel36 + tempPixel37 + tempPixel38 - tempPixel39 
					+ tempPixel40 - tempPixel41 - tempPixel42 + tempPixel43 - tempPixel44 + tempPixel45 + tempPixel46 - tempPixel47;
				
				temp_pixel45 <= tempPixel0 - tempPixel1 - tempPixel2 + tempPixel3 - tempPixel4 + tempPixel5 + tempPixel6 - tempPixel7
					+ tempPixel8 - tempPixel9 - tempPixel10 + tempPixel11 - tempPixel12 + tempPixel13 + tempPixel14 - tempPixel15
					- tempPixel16 + tempPixel17 + tempPixel18 - tempPixel19 + tempPixel20 - tempPixel21 - tempPixel22 + tempPixel23
					- tempPixel24 + tempPixel25 + tempPixel26 - tempPixel27 + tempPixel28 - tempPixel29 - tempPixel30 + tempPixel31 
					- tempPixel32 + tempPixel33 + tempPixel34 - tempPixel35 + tempPixel36 - tempPixel37 - tempPixel38 + tempPixel39
					- tempPixel40 + tempPixel41 + tempPixel42 - tempPixel43 + tempPixel44 - tempPixel45 - tempPixel46 + tempPixel47;
				
				temp_pixel46 <= tempPixel0 - tempPixel1 - tempPixel2 + tempPixel3 - tempPixel4 + tempPixel5 + tempPixel6 - tempPixel7
					+ tempPixel8 - tempPixel9 - tempPixel10 + tempPixel11 - tempPixel12 + tempPixel13 + tempPixel14 - tempPixel15
					+ tempPixel16 - tempPixel17 - tempPixel18 + tempPixel19 - tempPixel20 + tempPixel21 + tempPixel22 - tempPixel23 
					+ tempPixel24 - tempPixel25 - tempPixel26 + tempPixel27 - tempPixel28 + tempPixel29 + tempPixel30 - tempPixel31
					- tempPixel32 + tempPixel33 + tempPixel34 - tempPixel35 + tempPixel36 - tempPixel37 - tempPixel38 + tempPixel39
					- tempPixel40 + tempPixel41 + tempPixel42 - tempPixel43 + tempPixel44 - tempPixel45 - tempPixel46 + tempPixel47;
				
				temp_pixel47 <= tempPixel0 - tempPixel1 - tempPixel2 + tempPixel3 - tempPixel4 + tempPixel5 + tempPixel6 - tempPixel7
					+ tempPixel8 - tempPixel9 - tempPixel10 + tempPixel11 - tempPixel12 + tempPixel13 + tempPixel14 - tempPixel15
					+ tempPixel16 - tempPixel17 - tempPixel18 + tempPixel19 - tempPixel20 + tempPixel21 + tempPixel22 - tempPixel23 
					+ tempPixel24 - tempPixel25 - tempPixel26 + tempPixel27 - tempPixel28 + tempPixel29 + tempPixel30 - tempPixel31
					+ tempPixel32 - tempPixel33 - tempPixel34 + tempPixel35 - tempPixel36 + tempPixel37 + tempPixel38 - tempPixel39 
					+ tempPixel40 - tempPixel41 - tempPixel42 + tempPixel43 - tempPixel44 + tempPixel45 + tempPixel46 - tempPixel47;
					
				
				
				
				
				temp_pixel48 <= tempPixel0 - tempPixel1 + tempPixel2 - tempPixel3 - tempPixel4 + tempPixel5 - tempPixel6 + tempPixel7
					+ tempPixel8 - tempPixel9 + tempPixel10 - tempPixel11 - tempPixel12 + tempPixel13 - tempPixel14 + tempPixel15
					+ tempPixel16 - tempPixel17 + tempPixel18 - tempPixel19 - tempPixel20 + tempPixel21 - tempPixel22 + tempPixel23 
					+ tempPixel24 - tempPixel25 + tempPixel26 - tempPixel27 - tempPixel28 + tempPixel29 - tempPixel30 + tempPixel31
					+ tempPixel32 - tempPixel33 + tempPixel34 - tempPixel35 - tempPixel36 + tempPixel37 - tempPixel38 + tempPixel39 
					+ tempPixel40 - tempPixel41 + tempPixel42 - tempPixel43 - tempPixel44 + tempPixel45 - tempPixel46 + tempPixel47;
				
				temp_pixel49 <= tempPixel0 - tempPixel1 + tempPixel2 - tempPixel3 - tempPixel4 + tempPixel5 - tempPixel6 + tempPixel7
					+ tempPixel8 - tempPixel9 + tempPixel10 - tempPixel11 - tempPixel12 + tempPixel13 - tempPixel14 + tempPixel15
					+ tempPixel16 - tempPixel17 + tempPixel18 - tempPixel19 - tempPixel20 + tempPixel21 - tempPixel22 + tempPixel23 
					+ tempPixel24 - tempPixel25 + tempPixel26 - tempPixel27 - tempPixel28 + tempPixel29 - tempPixel30 + tempPixel31
					- tempPixel32 + tempPixel33 - tempPixel34 + tempPixel35 + tempPixel36 - tempPixel37 + tempPixel38 - tempPixel39
					- tempPixel40 + tempPixel41 - tempPixel42 + tempPixel43 + tempPixel44 - tempPixel45 + tempPixel46 - tempPixel47;
				
				temp_pixel50 <= tempPixel0 - tempPixel1 + tempPixel2 - tempPixel3 - tempPixel4 + tempPixel5 - tempPixel6 + tempPixel7
					+ tempPixel8 - tempPixel9 + tempPixel10 - tempPixel11 - tempPixel12 + tempPixel13 - tempPixel14 + tempPixel15
					- tempPixel16 + tempPixel17 - tempPixel18 + tempPixel19 + tempPixel20 - tempPixel21 + tempPixel22 - tempPixel23
					- tempPixel24 + tempPixel25 - tempPixel26 + tempPixel27 + tempPixel28 - tempPixel29 + tempPixel30 - tempPixel31 
					- tempPixel32 + tempPixel33 - tempPixel34 + tempPixel35 + tempPixel36 - tempPixel37 + tempPixel38 - tempPixel39
					- tempPixel40 + tempPixel41 - tempPixel42 + tempPixel43 + tempPixel44 - tempPixel45 + tempPixel46 - tempPixel47;
				
				temp_pixel51 <= tempPixel0 - tempPixel1 + tempPixel2 - tempPixel3 - tempPixel4 + tempPixel5 - tempPixel6 + tempPixel7
					+ tempPixel8 - tempPixel9 + tempPixel10 - tempPixel11 - tempPixel12 + tempPixel13 - tempPixel14 + tempPixel15
					- tempPixel16 + tempPixel17 - tempPixel18 + tempPixel19 + tempPixel20 - tempPixel21 + tempPixel22 - tempPixel23
					- tempPixel24 + tempPixel25 - tempPixel26 + tempPixel27 + tempPixel28 - tempPixel29 + tempPixel30 - tempPixel31 
					+ tempPixel32 - tempPixel33 + tempPixel34 - tempPixel35 - tempPixel36 + tempPixel37 - tempPixel38 + tempPixel39 
					+ tempPixel40 - tempPixel41 + tempPixel42 - tempPixel43 - tempPixel44 + tempPixel45 - tempPixel46 + tempPixel47;
				
				temp_pixel52 <= tempPixel0 - tempPixel1 + tempPixel2 - tempPixel3 - tempPixel4 + tempPixel5 - tempPixel6 + tempPixel7
					- tempPixel8 + tempPixel9 - tempPixel10 + tempPixel11 + tempPixel12 - tempPixel13 + tempPixel14 - tempPixel15
					- tempPixel16 + tempPixel17 - tempPixel18 + tempPixel19 + tempPixel20 - tempPixel21 + tempPixel22 - tempPixel23
					+ tempPixel24 - tempPixel25 + tempPixel26 - tempPixel27 - tempPixel28 + tempPixel29 - tempPixel30 + tempPixel31
					+ tempPixel32 - tempPixel33 + tempPixel34 - tempPixel35 - tempPixel36 + tempPixel37 - tempPixel38 + tempPixel39
					- tempPixel40 + tempPixel41 - tempPixel42 + tempPixel43 + tempPixel44 - tempPixel45 + tempPixel46 - tempPixel47;
				
				temp_pixel53 <= tempPixel0 - tempPixel1 + tempPixel2 - tempPixel3 - tempPixel4 + tempPixel5 - tempPixel6 + tempPixel7
					- tempPixel8 + tempPixel9 - tempPixel10 + tempPixel11 + tempPixel12 - tempPixel13 + tempPixel14 - tempPixel15
					- tempPixel16 + tempPixel17 - tempPixel18 + tempPixel19 + tempPixel20 - tempPixel21 + tempPixel22 - tempPixel23
					+ tempPixel24 - tempPixel25 + tempPixel26 - tempPixel27 - tempPixel28 + tempPixel29 - tempPixel30 + tempPixel31
					- tempPixel32 + tempPixel33 - tempPixel34 + tempPixel35 + tempPixel36 - tempPixel37 + tempPixel38 - tempPixel39
					+ tempPixel40 - tempPixel41 + tempPixel42 - tempPixel43 - tempPixel44 + tempPixel45 - tempPixel46 + tempPixel47;
				
				temp_pixel54 <= tempPixel0 - tempPixel1 + tempPixel2 - tempPixel3 - tempPixel4 + tempPixel5 - tempPixel6 + tempPixel7
					- tempPixel8 + tempPixel9 - tempPixel10 + tempPixel11 + tempPixel12 - tempPixel13 + tempPixel14 - tempPixel15
					+ tempPixel16 - tempPixel17 + tempPixel18 - tempPixel19 - tempPixel20 + tempPixel21 - tempPixel22 + tempPixel23 
					- tempPixel24 + tempPixel25 - tempPixel26 + tempPixel27 + tempPixel28 - tempPixel29 + tempPixel30 - tempPixel31 
					- tempPixel32 + tempPixel33 - tempPixel34 + tempPixel35 + tempPixel36 - tempPixel37 + tempPixel38 - tempPixel39
					+ tempPixel40 - tempPixel41 + tempPixel42 - tempPixel43 - tempPixel44 + tempPixel45 - tempPixel46 + tempPixel47;
					
				temp_pixel55 <= tempPixel0 - tempPixel1 + tempPixel2 - tempPixel3 - tempPixel4 + tempPixel5 - tempPixel6 + tempPixel7
					- tempPixel8 + tempPixel9 - tempPixel10 + tempPixel11 + tempPixel12 - tempPixel13 + tempPixel14 - tempPixel15
					+ tempPixel16 - tempPixel17 + tempPixel18 - tempPixel19 - tempPixel20 + tempPixel21 - tempPixel22 + tempPixel23 
					- tempPixel24 + tempPixel25 - tempPixel26 + tempPixel27 + tempPixel28 - tempPixel29 + tempPixel30 - tempPixel31 
					+ tempPixel32 - tempPixel33 + tempPixel34 - tempPixel35 - tempPixel36 + tempPixel37 - tempPixel38 + tempPixel39
					- tempPixel40 + tempPixel41 - tempPixel42 + tempPixel43 + tempPixel44 - tempPixel45 + tempPixel46 - tempPixel47;
				
				
				
				
				
				temp_pixel56 <= tempPixel0 - tempPixel1 + tempPixel2 - tempPixel3 + tempPixel4 - tempPixel5 + tempPixel6 - tempPixel7
					- tempPixel8 + tempPixel9 - tempPixel10 + tempPixel11 - tempPixel12 + tempPixel13 - tempPixel14 + tempPixel15
					+ tempPixel16 - tempPixel17 + tempPixel18 - tempPixel19 + tempPixel20 - tempPixel21 + tempPixel22 - tempPixel23 
					- tempPixel24 + tempPixel25 - tempPixel26 + tempPixel27 - tempPixel28 + tempPixel29 - tempPixel30 + tempPixel31 
					+ tempPixel32 - tempPixel33 + tempPixel34 - tempPixel35 + tempPixel36 - tempPixel37 + tempPixel38 - tempPixel39
					- tempPixel40 + tempPixel41 - tempPixel42 + tempPixel43 - tempPixel44 + tempPixel45 - tempPixel46 + tempPixel47;
				
				temp_pixel57 <= tempPixel0 - tempPixel1 + tempPixel2 - tempPixel3 + tempPixel4 - tempPixel5 + tempPixel6 - tempPixel7
					- tempPixel8 + tempPixel9 - tempPixel10 + tempPixel11 - tempPixel12 + tempPixel13 - tempPixel14 + tempPixel15
					+ tempPixel16 - tempPixel17 + tempPixel18 - tempPixel19 + tempPixel20 - tempPixel21 + tempPixel22 - tempPixel23 
					- tempPixel24 + tempPixel25 - tempPixel26 + tempPixel27 - tempPixel28 + tempPixel29 - tempPixel30 + tempPixel31 
					- tempPixel32 + tempPixel33 - tempPixel34 + tempPixel35 - tempPixel36 + tempPixel37 - tempPixel38 + tempPixel39
					+ tempPixel40 - tempPixel41 + tempPixel42 - tempPixel43 + tempPixel44 - tempPixel45 + tempPixel46 - tempPixel47;
				
				temp_pixel58 <= tempPixel0 - tempPixel1 + tempPixel2 - tempPixel3 + tempPixel4 - tempPixel5 + tempPixel6 - tempPixel7
					- tempPixel8 + tempPixel9 - tempPixel10 + tempPixel11 - tempPixel12 + tempPixel13 - tempPixel14 + tempPixel15
					- tempPixel16 + tempPixel17 - tempPixel18 + tempPixel19 - tempPixel20 + tempPixel21 - tempPixel22 + tempPixel23
					+ tempPixel24 - tempPixel25 + tempPixel26 - tempPixel27 + tempPixel28 - tempPixel29 + tempPixel30 - tempPixel31
					- tempPixel32 + tempPixel33 - tempPixel34 + tempPixel35 - tempPixel36 + tempPixel37 - tempPixel38 + tempPixel39
					+ tempPixel40 - tempPixel41 + tempPixel42 - tempPixel43 + tempPixel44 - tempPixel45 + tempPixel46 - tempPixel47;
				
				temp_pixel59 <= tempPixel0 - tempPixel1 + tempPixel2 - tempPixel3 + tempPixel4 - tempPixel5 + tempPixel6 - tempPixel7
					- tempPixel8 + tempPixel9 - tempPixel10 + tempPixel11 - tempPixel12 + tempPixel13 - tempPixel14 + tempPixel15
					- tempPixel16 + tempPixel17 - tempPixel18 + tempPixel19 - tempPixel20 + tempPixel21 - tempPixel22 + tempPixel23
					+ tempPixel24 - tempPixel25 + tempPixel26 - tempPixel27 + tempPixel28 - tempPixel29 + tempPixel30 - tempPixel31
					+ tempPixel32 - tempPixel33 + tempPixel34 - tempPixel35 + tempPixel36 - tempPixel37 + tempPixel38 - tempPixel39
					- tempPixel40 + tempPixel41 - tempPixel42 + tempPixel43 - tempPixel44 + tempPixel45 - tempPixel46 + tempPixel47;
				
				temp_pixel60 <= tempPixel0 - tempPixel1 + tempPixel2 - tempPixel3 + tempPixel4 - tempPixel5 + tempPixel6 - tempPixel7
					+ tempPixel8 - tempPixel9 + tempPixel10 - tempPixel11 + tempPixel12 - tempPixel13 + tempPixel14 - tempPixel15
					- tempPixel16 + tempPixel17 - tempPixel18 + tempPixel19 - tempPixel20 + tempPixel21 - tempPixel22 + tempPixel23
					- tempPixel24 + tempPixel25 - tempPixel26 + tempPixel27 - tempPixel28 + tempPixel29 - tempPixel30 + tempPixel31 
					+ tempPixel32 - tempPixel33 + tempPixel34 - tempPixel35 + tempPixel36 - tempPixel37 + tempPixel38 - tempPixel39
					+ tempPixel40 - tempPixel41 + tempPixel42 - tempPixel43 + tempPixel44 - tempPixel45 + tempPixel46 - tempPixel47;
				
				temp_pixel61 <= tempPixel0 - tempPixel1 + tempPixel2 - tempPixel3 + tempPixel4 - tempPixel5 + tempPixel6 - tempPixel7
					+ tempPixel8 - tempPixel9 + tempPixel10 - tempPixel11 + tempPixel12 - tempPixel13 + tempPixel14 - tempPixel15
					- tempPixel16 + tempPixel17 - tempPixel18 + tempPixel19 - tempPixel20 + tempPixel21 - tempPixel22 + tempPixel23
					- tempPixel24 + tempPixel25 - tempPixel26 + tempPixel27 - tempPixel28 + tempPixel29 - tempPixel30 + tempPixel31 
					- tempPixel32 + tempPixel33 - tempPixel34 + tempPixel35 - tempPixel36 + tempPixel37 - tempPixel38 + tempPixel39
					- tempPixel40 + tempPixel41 - tempPixel42 + tempPixel43 - tempPixel44 + tempPixel45 - tempPixel46 + tempPixel47;
				
				temp_pixel62 <= tempPixel0 - tempPixel1 + tempPixel2 - tempPixel3 + tempPixel4 - tempPixel5 + tempPixel6 - tempPixel7
					+ tempPixel8 - tempPixel9 + tempPixel10 - tempPixel11 + tempPixel12 - tempPixel13 + tempPixel14 - tempPixel15
					+ tempPixel16 - tempPixel17 + tempPixel18 - tempPixel19 + tempPixel20 - tempPixel21 + tempPixel22 - tempPixel23 
					+ tempPixel24 - tempPixel25 + tempPixel26 - tempPixel27 + tempPixel28 - tempPixel29 + tempPixel30 - tempPixel31
					- tempPixel32 + tempPixel33 - tempPixel34 + tempPixel35 - tempPixel36 + tempPixel37 - tempPixel38 + tempPixel39
					- tempPixel40 + tempPixel41 - tempPixel42 + tempPixel43 - tempPixel44 + tempPixel45 - tempPixel46 + tempPixel47;
				
				temp_pixel63 <= tempPixel0 - tempPixel1 + tempPixel2 - tempPixel3 + tempPixel4 - tempPixel5 + tempPixel6 - tempPixel7
					+ tempPixel8 - tempPixel9 + tempPixel10 - tempPixel11 + tempPixel12 - tempPixel13 + tempPixel14 - tempPixel15
					+ tempPixel16 - tempPixel17 + tempPixel18 - tempPixel19 + tempPixel20 - tempPixel21 + tempPixel22 - tempPixel23 
					+ tempPixel24 - tempPixel25 + tempPixel26 - tempPixel27 + tempPixel28 - tempPixel29 + tempPixel30 - tempPixel31
					+ tempPixel32 - tempPixel33 + tempPixel34 - tempPixel35 + tempPixel36 - tempPixel37 + tempPixel38 - tempPixel39
					+ tempPixel40 - tempPixel41 + tempPixel42 - tempPixel43 + tempPixel44 - tempPixel45 + tempPixel46 - tempPixel47;
				
			end
			else begin 
			end
			
			
			if(flag_pixel == 2) begin 
				
				//limit the result into 0-255
				//if negtive number
				if(temp_pixel0[25] == 1) begin 
					pixel0[7:0]  <= 8'd0;
				end
				else begin
					//final_image_transformation(final_image_transformation>255) = 255;
					if(temp_pixel0[18] == 1) begin
						pixel0[7:0]  <= 8'd255;
					end
					else begin 
						pixel0[7:0]  <= temp_pixel0[17:10];
					end
				end
				
				//limit the result into 0-255
				//if negtive number
				if(temp_pixel1[25] == 1) begin 
					pixel1[7:0]  <= 8'd0;
				end
				else begin
					//final_image_transformation(final_image_transformation>255) = 255;
					if(temp_pixel1[18] == 1) begin
						pixel1[7:0]  <= 8'd255;
					end
					else begin 
						pixel1[7:0]  <= temp_pixel1[17:10];
					end
				end
				
				//limit the result into 0-255
				//if negtive number
				if(temp_pixel2[25] == 1) begin 
					pixel2[7:0]  <= 8'd0;
				end
				else begin
					//final_image_transformation(final_image_transformation>255) = 255;
					if(temp_pixel2[18] == 1) begin
						pixel2[7:0]  <= 8'd255;
					end
					else begin 
						pixel2[7:0]  <= temp_pixel2[17:10];
					end
				end
				
				//limit the result into 0-255
				//if negtive number
				if(temp_pixel3[25] == 1) begin 
					pixel3[7:0]  <= 8'd0;
				end
				else begin
					//final_image_transformation(final_image_transformation>255) = 255;
					if(temp_pixel3[18] == 1) begin
						pixel3[7:0]  <= 8'd255;
					end
					else begin 
						pixel3[7:0]  <= temp_pixel3[17:10];
					end
				end
				
				//limit the result into 0-255
				//if negtive number
				if(temp_pixel4[25] == 1) begin 
					pixel4[7:0]  <= 8'd0;
				end
				else begin
					//final_image_transformation(final_image_transformation>255) = 255;
					if(temp_pixel4[18] == 1) begin
						pixel4[7:0]  <= 8'd255;
					end
					else begin 
						pixel4[7:0]  <= temp_pixel4[17:10];
					end
				end
				
				//limit the result into 0-255
				//if negtive number
				if(temp_pixel5[25] == 1) begin 
					pixel5[7:0]  <= 8'd0;
				end
				else begin
					//final_image_transformation(final_image_transformation>255) = 255;
					if(temp_pixel5[18] == 1) begin
						pixel5[7:0]  <= 8'd255;
					end
					else begin 
						pixel5[7:0]  <= temp_pixel5[17:10];
					end
				end
				
				//limit the result into 0-255
				//if negtive number
				if(temp_pixel6[25] == 1) begin 
					pixel6[7:0]  <= 8'd0;
				end
				else begin
					//final_image_transformation(final_image_transformation>255) = 255;
					if(temp_pixel6[18] == 1) begin
						pixel6[7:0]  <= 8'd255;
					end
					else begin 
						pixel6[7:0]  <= temp_pixel6[17:10];
					end
				end
				
				//limit the result into 0-255
				//if negtive number
				if(temp_pixel7[25] == 1) begin 
					pixel7[7:0]  <= 8'd0;
				end
				else begin
					//final_image_transformation(final_image_transformation>255) = 255;
					if(temp_pixel7[18] == 1) begin
						pixel7[7:0]  <= 8'd255;
					end
					else begin 
						pixel7[7:0]  <= temp_pixel7[17:10];
					end
				end
				
				//limit the result into 0-255
				//if negtive number
				if(temp_pixel8[25] == 1) begin 
					pixel8[7:0]  <= 8'd0;
				end
				else begin
					//final_image_transformation(final_image_transformation>255) = 255;
					if(temp_pixel8[18] == 1) begin
						pixel8[7:0]  <= 8'd255;
					end
					else begin 
						pixel8[7:0]  <= temp_pixel8[17:10];
					end
				end
				
				//limit the result into 0-255
				//if negtive number
				if(temp_pixel9[25] == 1) begin 
					pixel9[7:0]  <= 8'd0;
				end
				else begin
					//final_image_transformation(final_image_transformation>255) = 255;
					if(temp_pixel9[18] == 1) begin
						pixel9[7:0]  <= 8'd255;
					end
					else begin 
						pixel9[7:0]  <= temp_pixel9[17:10];
					end
				end
				
				
				
				
				//limit the result into 0-255
				//if negtive number
				if(temp_pixel10[25] == 1) begin 
					pixel10[7:0]  <= 8'd0;
				end
				else begin
					//final_image_transformation(final_image_transformation>255) = 255;
					if(temp_pixel10[18] == 1) begin
						pixel10[7:0]  <= 8'd255;
					end
					else begin 
						pixel10[7:0]  <= temp_pixel10[17:10];
					end
				end
				
				//limit the result into 0-255
				//if negtive number
				if(temp_pixel11[25] == 1) begin 
					pixel11[7:0]  <= 8'd0;
				end
				else begin
					//final_image_transformation(final_image_transformation>255) = 255;
					if(temp_pixel11[18] == 1) begin
						pixel11[7:0]  <= 8'd255;
					end
					else begin 
						pixel11[7:0]  <= temp_pixel11[17:10];
					end
				end
				
				//limit the result into 0-255
				//if negtive number
				if(temp_pixel12[25] == 1) begin 
					pixel12[7:0]  <= 8'd0;
				end
				else begin
					//final_image_transformation(final_image_transformation>255) = 255;
					if(temp_pixel12[18] == 1) begin
						pixel12[7:0]  <= 8'd255;
					end
					else begin 
						pixel12[7:0]  <= temp_pixel12[17:10];
					end
				end
				
				//limit the result into 0-255
				//if negtive number
				if(temp_pixel13[25] == 1) begin 
					pixel13[7:0]  <= 8'd0;
				end
				else begin
					//final_image_transformation(final_image_transformation>255) = 255;
					if(temp_pixel13[18] == 1) begin
						pixel13[7:0]  <= 8'd255;
					end
					else begin 
						pixel13[7:0]  <= temp_pixel13[17:10];
					end
				end
				
				//limit the result into 0-255
				//if negtive number
				if(temp_pixel14[25] == 1) begin 
					pixel14[7:0]  <= 8'd0;
				end
				else begin
					//final_image_transformation(final_image_transformation>255) = 255;
					if(temp_pixel14[18] == 1) begin
						pixel14[7:0]  <= 8'd255;
					end
					else begin 
						pixel14[7:0]  <= temp_pixel14[17:10];
					end
				end
				
				//limit the result into 0-255
				//if negtive number
				if(temp_pixel15[25] == 1) begin 
					pixel15[7:0]  <= 8'd0;
				end
				else begin
					//final_image_transformation(final_image_transformation>255) = 255;
					if(temp_pixel15[18] == 1) begin
						pixel15[7:0]  <= 8'd255;
					end
					else begin 
						pixel15[7:0]  <= temp_pixel15[17:10];
					end
				end
				
				//limit the result into 0-255
				//if negtive number
				if(temp_pixel16[25] == 1) begin 
					pixel16[7:0]  <= 8'd0;
				end
				else begin
					//final_image_transformation(final_image_transformation>255) = 255;
					if(temp_pixel16[18] == 1) begin
						pixel16[7:0]  <= 8'd255;
					end
					else begin 
						pixel16[7:0]  <= temp_pixel16[17:10];
					end
				end
				
				//limit the result into 0-255
				//if negtive number
				if(temp_pixel17[25] == 1) begin 
					pixel17[7:0]  <= 8'd0;
				end
				else begin
					//final_image_transformation(final_image_transformation>255) = 255;
					if(temp_pixel17[18] == 1) begin
						pixel17[7:0]  <= 8'd255;
					end
					else begin 
						pixel17[7:0]  <= temp_pixel17[17:10];
					end
				end
				
				//limit the result into 0-255
				//if negtive number
				if(temp_pixel18[25] == 1) begin 
					pixel18[7:0]  <= 8'd0;
				end
				else begin
					//final_image_transformation(final_image_transformation>255) = 255;
					if(temp_pixel18[18] == 1) begin
						pixel18[7:0]  <= 8'd255;
					end
					else begin 
						pixel18[7:0]  <= temp_pixel18[17:10];
					end
				end
				
				//limit the result into 0-255
				//if negtive number
				if(temp_pixel19[25] == 1) begin 
					pixel19[7:0]  <= 8'd0;
				end
				else begin
					//final_image_transformation(final_image_transformation>255) = 255;
					if(temp_pixel19[18] == 1) begin
						pixel19[7:0]  <= 8'd255;
					end
					else begin 
						pixel19[7:0]  <= temp_pixel19[17:10];
					end
				end
				
				
				
				//limit the result into 0-255
				//if negtive number
				if(temp_pixel20[25] == 1) begin 
					pixel20[7:0]  <= 8'd0;
				end
				else begin
					//final_image_transformation(final_image_transformation>255) = 255;
					if(temp_pixel20[18] == 1) begin
						pixel20[7:0]  <= 8'd255;
					end
					else begin 
						pixel20[7:0]  <= temp_pixel20[17:10];
					end
				end
				
				//limit the result into 0-255
				//if negtive number
				if(temp_pixel21[25] == 1) begin 
					pixel21[7:0]  <= 8'd0;
				end
				else begin
					//final_image_transformation(final_image_transformation>255) = 255;
					if(temp_pixel21[18] == 1) begin
						pixel21[7:0]  <= 8'd255;
					end
					else begin 
						pixel21[7:0]  <= temp_pixel21[17:10];
					end
				end
				
				//limit the result into 0-255
				//if negtive number
				if(temp_pixel22[25] == 1) begin 
					pixel22[7:0]  <= 8'd0;
				end
				else begin
					//final_image_transformation(final_image_transformation>255) = 255;
					if(temp_pixel22[18] == 1) begin
						pixel22[7:0]  <= 8'd255;
					end
					else begin 
						pixel22[7:0]  <= temp_pixel22[17:10];
					end
				end
				
				//limit the result into 0-255
				//if negtive number
				if(temp_pixel23[25] == 1) begin 
					pixel23[7:0]  <= 8'd0;
				end
				else begin
					//final_image_transformation(final_image_transformation>255) = 255;
					if(temp_pixel23[18] == 1) begin
						pixel23[7:0]  <= 8'd255;
					end
					else begin 
						pixel23[7:0]  <= temp_pixel23[17:10];
					end
				end
				
				//limit the result into 0-255
				//if negtive number
				if(temp_pixel24[25] == 1) begin 
					pixel24[7:0]  <= 8'd0;
				end
				else begin
					//final_image_transformation(final_image_transformation>255) = 255;
					if(temp_pixel24[18] == 1) begin
						pixel24[7:0]  <= 8'd255;
					end
					else begin 
						pixel24[7:0]  <= temp_pixel24[17:10];
					end
				end
				
				//limit the result into 0-255
				//if negtive number
				if(temp_pixel25[25] == 1) begin 
					pixel25[7:0]  <= 8'd0;
				end
				else begin
					//final_image_transformation(final_image_transformation>255) = 255;
					if(temp_pixel25[18] == 1) begin
						pixel25[7:0]  <= 8'd255;
					end
					else begin 
						pixel25[7:0]  <= temp_pixel25[17:10];
					end
				end
				
				//limit the result into 0-255
				//if negtive number
				if(temp_pixel26[25] == 1) begin 
					pixel26[7:0]  <= 8'd0;
				end
				else begin
					//final_image_transformation(final_image_transformation>255) = 255;
					if(temp_pixel26[18] == 1) begin
						pixel26[7:0]  <= 8'd255;
					end
					else begin 
						pixel26[7:0]  <= temp_pixel26[17:10];
					end
				end
				
				//limit the result into 0-255
				//if negtive number
				if(temp_pixel27[25] == 1) begin 
					pixel27[7:0]  <= 8'd0;
				end
				else begin
					//final_image_transformation(final_image_transformation>255) = 255;
					if(temp_pixel27[18] == 1) begin
						pixel27[7:0]  <= 8'd255;
					end
					else begin 
						pixel27[7:0]  <= temp_pixel27[17:10];
					end
				end
				
				//limit the result into 0-255
				//if negtive number
				if(temp_pixel28[25] == 1) begin 
					pixel28[7:0]  <= 8'd0;
				end
				else begin
					//final_image_transformation(final_image_transformation>255) = 255;
					if(temp_pixel28[18] == 1) begin
						pixel28[7:0]  <= 8'd255;
					end
					else begin 
						pixel28[7:0]  <= temp_pixel28[17:10];
					end
				end
				
				//limit the result into 0-255
				//if negtive number
				if(temp_pixel29[25] == 1) begin 
					pixel29[7:0]  <= 8'd0;
				end
				else begin
					//final_image_transformation(final_image_transformation>255) = 255;
					if(temp_pixel29[18] == 1) begin
						pixel29[7:0]  <= 8'd255;
					end
					else begin 
						pixel29[7:0]  <= temp_pixel29[17:10];
					end
				end
				
				
				
				//limit the result into 0-255
				//if negtive number
				if(temp_pixel30[25] == 1) begin 
					pixel30[7:0]  <= 8'd0;
				end
				else begin
					//final_image_transformation(final_image_transformation>255) = 255;
					if(temp_pixel30[18] == 1) begin
						pixel30[7:0]  <= 8'd255;
					end
					else begin 
						pixel30[7:0]  <= temp_pixel30[17:10];
					end
				end
				
				//limit the result into 0-255
				//if negtive number
				if(temp_pixel31[25] == 1) begin 
					pixel31[7:0]  <= 8'd0;
				end
				else begin
					//final_image_transformation(final_image_transformation>255) = 255;
					if(temp_pixel31[18] == 1) begin
						pixel31[7:0]  <= 8'd255;
					end
					else begin 
						pixel31[7:0]  <= temp_pixel31[17:10];
					end
				end
				
				//limit the result into 0-255
				//if negtive number
				if(temp_pixel32[25] == 1) begin 
					pixel32[7:0]  <= 8'd0;
				end
				else begin
					//final_image_transformation(final_image_transformation>255) = 255;
					if(temp_pixel32[18] == 1) begin
						pixel32[7:0]  <= 8'd255;
					end
					else begin 
						pixel32[7:0]  <= temp_pixel32[17:10];
					end
				end
				
				//limit the result into 0-255
				//if negtive number
				if(temp_pixel33[25] == 1) begin 
					pixel33[7:0]  <= 8'd0;
				end
				else begin
					//final_image_transformation(final_image_transformation>255) = 255;
					if(temp_pixel33[18] == 1) begin
						pixel33[7:0]  <= 8'd255;
					end
					else begin 
						pixel33[7:0]  <= temp_pixel33[17:10];
					end
				end
				
				//limit the result into 0-255
				//if negtive number
				if(temp_pixel34[25] == 1) begin 
					pixel34[7:0]  <= 8'd0;
				end
				else begin
					//final_image_transformation(final_image_transformation>255) = 255;
					if(temp_pixel34[18] == 1) begin
						pixel34[7:0]  <= 8'd255;
					end
					else begin 
						pixel34[7:0]  <= temp_pixel34[17:10];
					end
				end
				
				//limit the result into 0-255
				//if negtive number
				if(temp_pixel35[25] == 1) begin 
					pixel35[7:0]  <= 8'd0;
				end
				else begin
					//final_image_transformation(final_image_transformation>255) = 255;
					if(temp_pixel35[18] == 1) begin
						pixel35[7:0]  <= 8'd255;
					end
					else begin 
						pixel35[7:0]  <= temp_pixel35[17:10];
					end
				end
				
				//limit the result into 0-255
				//if negtive number
				if(temp_pixel36[25] == 1) begin 
					pixel36[7:0]  <= 8'd0;
				end
				else begin
					//final_image_transformation(final_image_transformation>255) = 255;
					if(temp_pixel36[18] == 1) begin
						pixel36[7:0]  <= 8'd255;
					end
					else begin 
						pixel36[7:0]  <= temp_pixel36[17:10];
					end
				end
				
				//limit the result into 0-255
				//if negtive number
				if(temp_pixel37[25] == 1) begin 
					pixel37[7:0]  <= 8'd0;
				end
				else begin
					//final_image_transformation(final_image_transformation>255) = 255;
					if(temp_pixel37[18] == 1) begin
						pixel37[7:0]  <= 8'd255;
					end
					else begin 
						pixel37[7:0]  <= temp_pixel37[17:10];
					end
				end
				
				//limit the result into 0-255
				//if negtive number
				if(temp_pixel38[25] == 1) begin 
					pixel38[7:0]  <= 8'd0;
				end
				else begin
					//final_image_transformation(final_image_transformation>255) = 255;
					if(temp_pixel38[18] == 1) begin
						pixel38[7:0]  <= 8'd255;
					end
					else begin 
						pixel38[7:0]  <= temp_pixel38[17:10];
					end
				end
				
				//limit the result into 0-255
				//if negtive number
				if(temp_pixel39[25] == 1) begin 
					pixel39[7:0]  <= 8'd0;
				end
				else begin
					//final_image_transformation(final_image_transformation>255) = 255;
					if(temp_pixel39[18] == 1) begin
						pixel39[7:0]  <= 8'd255;
					end
					else begin 
						pixel39[7:0]  <= temp_pixel39[17:10];
					end
				end
				
				
				
				//limit the result into 0-255
				//if negtive number
				if(temp_pixel40[25] == 1) begin 
					pixel40[7:0]  <= 8'd0;
				end
				else begin
					//final_image_transformation(final_image_transformation>255) = 255;
					if(temp_pixel40[18] == 1) begin
						pixel40[7:0]  <= 8'd255;
					end
					else begin 
						pixel40[7:0]  <= temp_pixel40[17:10];
					end
				end
				
				//limit the result into 0-255
				//if negtive number
				if(temp_pixel41[25] == 1) begin 
					pixel41[7:0]  <= 8'd0;
				end
				else begin
					//final_image_transformation(final_image_transformation>255) = 255;
					if(temp_pixel41[18] == 1) begin
						pixel41[7:0]  <= 8'd255;
					end
					else begin 
						pixel41[7:0]  <= temp_pixel41[17:10];
					end
				end
				
				//limit the result into 0-255
				//if negtive number
				if(temp_pixel42[25] == 1) begin 
					pixel42[7:0]  <= 8'd0;
				end
				else begin
					//final_image_transformation(final_image_transformation>255) = 255;
					if(temp_pixel42[18] == 1) begin
						pixel42[7:0]  <= 8'd255;
					end
					else begin 
						pixel42[7:0]  <= temp_pixel42[17:10];
					end
				end
				
				//limit the result into 0-255
				//if negtive number
				if(temp_pixel43[25] == 1) begin 
					pixel43[7:0]  <= 8'd0;
				end
				else begin
					//final_image_transformation(final_image_transformation>255) = 255;
					if(temp_pixel43[18] == 1) begin
						pixel43[7:0]  <= 8'd255;
					end
					else begin 
						pixel43[7:0]  <= temp_pixel43[17:10];
					end
				end
				
				//limit the result into 0-255
				//if negtive number
				if(temp_pixel44[25] == 1) begin 
					pixel44[7:0]  <= 8'd0;
				end
				else begin
					//final_image_transformation(final_image_transformation>255) = 255;
					if(temp_pixel44[18] == 1) begin
						pixel44[7:0]  <= 8'd255;
					end
					else begin 
						pixel44[7:0]  <= temp_pixel44[17:10];
					end
				end
				
				//limit the result into 0-255
				//if negtive number
				if(temp_pixel45[25] == 1) begin 
					pixel45[7:0]  <= 8'd0;
				end
				else begin
					//final_image_transformation(final_image_transformation>255) = 255;
					if(temp_pixel45[18] == 1) begin
						pixel45[7:0]  <= 8'd255;
					end
					else begin 
						pixel45[7:0]  <= temp_pixel45[17:10];
					end
				end
				
				//limit the result into 0-255
				//if negtive number
				if(temp_pixel46[25] == 1) begin 
					pixel46[7:0]  <= 8'd0;
				end
				else begin
					//final_image_transformation(final_image_transformation>255) = 255;
					if(temp_pixel46[18] == 1) begin
						pixel46[7:0]  <= 8'd255;
					end
					else begin 
						pixel46[7:0]  <= temp_pixel46[17:10];
					end
				end
				
				//limit the result into 0-255
				//if negtive number
				if(temp_pixel47[25] == 1) begin 
					pixel47[7:0]  <= 8'd0;
				end
				else begin
					//final_image_transformation(final_image_transformation>255) = 255;
					if(temp_pixel47[18] == 1) begin
						pixel47[7:0]  <= 8'd255;
					end
					else begin 
						pixel47[7:0]  <= temp_pixel47[17:10];
					end
				end
				
				//limit the result into 0-255
				//if negtive number
				if(temp_pixel48[25] == 1) begin 
					pixel48[7:0]  <= 8'd0;
				end
				else begin
					//final_image_transformation(final_image_transformation>255) = 255;
					if(temp_pixel48[18] == 1) begin
						pixel48[7:0]  <= 8'd255;
					end
					else begin 
						pixel48[7:0]  <= temp_pixel48[17:10];
					end
				end
				
				//limit the result into 0-255
				//if negtive number
				if(temp_pixel49[25] == 1) begin 
					pixel49[7:0]  <= 8'd0;
				end
				else begin
					//final_image_transformation(final_image_transformation>255) = 255;
					if(temp_pixel49[18] == 1) begin
						pixel49[7:0]  <= 8'd255;
					end
					else begin 
						pixel49[7:0]  <= temp_pixel49[17:10];
					end
				end
				
				
				
				//limit the result into 0-255
				//if negtive number
				if(temp_pixel50[25] == 1) begin 
					pixel50[7:0]  <= 8'd0;
				end
				else begin
					//final_image_transformation(final_image_transformation>255) = 255;
					if(temp_pixel50[18] == 1) begin
						pixel50[7:0]  <= 8'd255;
					end
					else begin 
						pixel50[7:0]  <= temp_pixel50[17:10];
					end
				end
				
				//limit the result into 0-255
				//if negtive number
				if(temp_pixel51[25] == 1) begin 
					pixel51[7:0]  <= 8'd0;
				end
				else begin
					//final_image_transformation(final_image_transformation>255) = 255;
					if(temp_pixel51[18] == 1) begin
						pixel51[7:0]  <= 8'd255;
					end
					else begin 
						pixel51[7:0]  <= temp_pixel51[17:10];
					end
				end
				
				//limit the result into 0-255
				//if negtive number
				if(temp_pixel52[25] == 1) begin 
					pixel52[7:0]  <= 8'd0;
				end
				else begin
					//final_image_transformation(final_image_transformation>255) = 255;
					if(temp_pixel52[18] == 1) begin
						pixel52[7:0]  <= 8'd255;
					end
					else begin 
						pixel52[7:0]  <= temp_pixel52[17:10];
					end
				end
				
				//limit the result into 0-255
				//if negtive number
				if(temp_pixel53[25] == 1) begin 
					pixel53[7:0]  <= 8'd0;
				end
				else begin
					//final_image_transformation(final_image_transformation>255) = 255;
					if(temp_pixel53[18] == 1) begin
						pixel53[7:0]  <= 8'd255;
					end
					else begin 
						pixel53[7:0]  <= temp_pixel53[17:10];
					end
				end
				
				//limit the result into 0-255
				//if negtive number
				if(temp_pixel54[25] == 1) begin 
					pixel54[7:0]  <= 8'd0;
				end
				else begin
					//final_image_transformation(final_image_transformation>255) = 255;
					if(temp_pixel54[18] == 1) begin
						pixel54[7:0]  <= 8'd255;
					end
					else begin 
						pixel54[7:0]  <= temp_pixel54[17:10];
					end
				end
				
				//limit the result into 0-255
				//if negtive number
				if(temp_pixel55[25] == 1) begin 
					pixel55[7:0]  <= 8'd0;
				end
				else begin
					//final_image_transformation(final_image_transformation>255) = 255;
					if(temp_pixel55[18] == 1) begin
						pixel55[7:0]  <= 8'd255;
					end
					else begin 
						pixel55[7:0]  <= temp_pixel55[17:10];
					end
				end
				
				//limit the result into 0-255
				//if negtive number
				if(temp_pixel56[25] == 1) begin 
					pixel56[7:0]  <= 8'd0;
				end
				else begin
					//final_image_transformation(final_image_transformation>255) = 255;
					if(temp_pixel56[18] == 1) begin
						pixel56[7:0]  <= 8'd255;
					end
					else begin 
						pixel56[7:0]  <= temp_pixel56[17:10];
					end
				end
				
				//limit the result into 0-255
				//if negtive number
				if(temp_pixel57[25] == 1) begin 
					pixel57[7:0]  <= 8'd0;
				end
				else begin
					//final_image_transformation(final_image_transformation>255) = 255;
					if(temp_pixel57[18] == 1) begin
						pixel57[7:0]  <= 8'd255;
					end
					else begin 
						pixel57[7:0]  <= temp_pixel57[17:10];
					end
				end
				
				//limit the result into 0-255
				//if negtive number
				if(temp_pixel58[25] == 1) begin 
					pixel58[7:0]  <= 8'd0;
				end
				else begin
					//final_image_transformation(final_image_transformation>255) = 255;
					if(temp_pixel58[18] == 1) begin
						pixel58[7:0]  <= 8'd255;
					end
					else begin 
						pixel58[7:0]  <= temp_pixel58[17:10];
					end
				end
				
				//limit the result into 0-255
				//if negtive number
				if(temp_pixel59[25] == 1) begin 
					pixel59[7:0]  <= 8'd0;
				end
				else begin
					//final_image_transformation(final_image_transformation>255) = 255;
					if(temp_pixel59[18] == 1) begin
						pixel59[7:0]  <= 8'd255;
					end
					else begin 
						pixel59[7:0]  <= temp_pixel59[17:10];
					end
				end
				
				
				
				//limit the result into 0-255
				//if negtive number
				if(temp_pixel60[25] == 1) begin 
					pixel60[7:0]  <= 8'd0;
				end
				else begin
					//final_image_transformation(final_image_transformation>255) = 255;
					if(temp_pixel60[18] == 1) begin
						pixel60[7:0]  <= 8'd255;
					end
					else begin 
						pixel60[7:0]  <= temp_pixel60[17:10];
					end
				end
				
				//limit the result into 0-255
				//if negtive number
				if(temp_pixel61[25] == 1) begin 
					pixel61[7:0]  <= 8'd0;
				end
				else begin
					//final_image_transformation(final_image_transformation>255) = 255;
					if(temp_pixel61[18] == 1) begin
						pixel61[7:0]  <= 8'd255;
					end
					else begin 
						pixel61[7:0]  <= temp_pixel61[17:10];
					end
				end
				
				//limit the result into 0-255
				//if negtive number
				if(temp_pixel62[25] == 1) begin 
					pixel62[7:0]  <= 8'd0;
				end
				else begin
					//final_image_transformation(final_image_transformation>255) = 255;
					if(temp_pixel62[18] == 1) begin
						pixel62[7:0]  <= 8'd255;
					end
					else begin 
						pixel62[7:0]  <= temp_pixel62[17:10];
					end
				end
				
				//limit the result into 0-255
				//if negtive number
				if(temp_pixel63[25] == 1) begin 
					pixel63[7:0]  <= 8'd0;
				end
				else begin
					//final_image_transformation(final_image_transformation>255) = 255;
					if(temp_pixel63[18] == 1) begin
						pixel63[7:0]  <= 8'd255;
					end
					else begin 
						pixel63[7:0]  <= temp_pixel63[17:10];
					end
				end
				
				
				//times == 103
				finish_flag <= 1;
			end
			else begin 
			end
				
		end
end
endmodule
