// Verilog Design Project Code 
module tempDisplayProject (
  input [4:0] g, //g is the binary number from 0 to 30
  output reg [6:0] display0, //display 0 shows the display for the first decimal
  output reg [6:0] display1 //display 1 shows the display for the second decimal
);

assign x0 = (display0 == 7'b1000000);
assign x1 = (display0 == 7'b1111001);
assign x2 = (display0 == 7'b0100100);
assign x3 = (display0 == 7'b0110000);
assign x4 = (display0 == 7'b0011001);
assign x5 = (display0 == 7'b0010010);
assign x6 = (display0 == 7'b0000010);
assign x7 = (display0 == 7'b0000111);
assign x8 = (display0 == 7'b1000000);
assign x9 = (display0 == 7'b1101111);

assign y0 = (display1 == 7'b1000000);
assign y1 = (display1 == 7'b1111001);
assign y2 = (display1 == 7'b0100100);
assign y3 = (display1 == 7'b0110000);
assign y4 = (display1 == 7'b0011001);
assign y5 = (display1 == 7'b0010010);
assign y6 = (display1 == 7'b0000010);
assign y7 = (display1 == 7'b0000111);
assign y8 = (display1 == 7'b1000000);
assign y9 = (display1 == 7'b1101111);

always @ (g) begin
    if (g == 5'b00000) begin // 0
        display1 = 7'b1000000;
        display0 = 7'b1000000; 
    end
	 
	 else if (g == 5'b00001) begin // 1 
	 display1 = 7'b1111111;
	 display0 = 7'b1111001;	
			
    end
	 
	 else if (g == 5'b00010) begin // 2 
	 display1 = 7'b1111111;
	 display0 = 7'b0100100;
    end
	 
	 else if (g == 5'b00011) begin // 3 
	 display1 = 7'b1111111;
	 display0 = 7'b0110000;
    end
	 
	 else if (g == 5'b00100) begin // 4
	 display1 = 7'b1111111;
	 display0 = 7'b0011001;
    end
	 
	 else if (g == 5'b00101) begin // 5
	 display1 = 7'b1111111;
	 display0 = 7'b0010010;
    end
	 
	 else if (g == 5'b00110) begin // 6
	 display1 = 7'b1111111;
	 display0 = 7'b0000010;
    end
	 
	else if (g == 5'b00111) begin // 7
	display1 = 7'b1111111;
	display0 = 7'b0000111;
    end
	 
	else if (g == 5'b01000) begin // 8
	display1 = 7'b1111111; 
	display0 = 7'b1000000;
    end
	 
	 else if (g == 5'b01001) begin // 9 
	 display1 = 7'b1111111;
	 display0 = 7'b1101111;
    end
	 
	 else if (g == 5'b01010) begin // 10 
	 display1 = 7'b1111001;
	 display0 = 7'b1000000;
    end
	 
	 else if (g == 5'b01011) begin // 11 
	 display1 = 7'b1111001;
	 display0 = 7'b1111001;
    end
	 
	else if (g == 5'b01100) begin // 12
	display1 = 7'b1111001; 
	display0 = 7'b0100100;
    end
	 
	else if (g == 5'b01101) begin // 13
	display1 = 7'b1111001; 
	display0 = 7'b0110000;
    end
	 
	 else if (g == 5'b01110) begin // 14
	 display1 = 7'b1111001;
	 display0 = 7'b0011001;
	 
    end
	 
	 else if (g == 5'b01111) begin // 15
	 display1 = 7'b1111001;
	 display0 = 7'b0010010;
    end
	 
	else if (g == 5'b10000) begin // 16
	display1 = 7'b1111001; 
	display0 = 7'b0000010;
    end
	 
	else if (g == 5'b10001) begin // 17
	display1 = 7'b1111001;
        display0 = 7'b0000111;	
    end
	 
	else if (g == 5'b10010) begin // 18
	display1 = 7'b1111001; 
	display0 = 7'b1000000;
    end
	 
	else if (g == 5'b10011) begin // 19
	display1 = 7'b1111001;
        display0 = 7'b1101111;	
    end
	 
	 else if (g == 5'b10100) begin // 20 
	 display1 = 7'b0100100;
	 display0 = 7'b1000000;
    end
	 
	 else if (g == 5'b10101) begin // 21 
	 display1 = 7'b0100100;
	 display0 = 7'b1111001;
	 
    end
	 
	 else if (g == 5'b10110) begin // 22 
	 display1 = 7'b0100100;
	 display0 = 7'b0100100;
    end
	 
	 else if (g == 5'b10111) begin // 23
	 display1 = 7'b0100100;	
	 display0 = 7'b0110000;
    end
	 
	 else if (g == 5'b11000) begin // 24
	 display1 = 7'b0100100; 
	 display0 = 7'b0011001;
    end
	 
	 else if (g == 5'b11001) begin // 25
	 display1 = 7'b0100100;
	 display0 = 7'b0010010;
 
    end
	 
	 else if (g == 5'b11010) begin // 26
	 display1 = 7'b0100100; 
	 display0 = 7'b0000010;
    end
	 
	 else if (g == 5'b11011) begin // 27
	 display1 = 7'b0100100; 
	 display0 = 7'b0000111;
    end
	 
	 else if (g == 5'b11100) begin // 28
	 display1 = 7'b0100100; 
	 display0 = 7'b1000000;
    end
	 
	 else if (g == 5'b11101) begin // 29
	 display1 = 7'b0100100; 
	 display0 = 7'b1101111;
    end
	 
	 else if (g == 5'b11110) begin // 30
	 display1 = 7'b0110000; 
	 display0 = 7'b1000000;
    end
	 
	 else if (g == 5'b11111) begin // 31
	 display1 = 7'b0110000; 
	 display0 = 7'b1111001;
    end
end
