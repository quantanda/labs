program lab8_v10;

uses math;

const 
	Na = 5; 
	Nc = 4; 
	Ne = 3; 

	A: array[1..Na] of Real = (0.12, 0.8, 0.2, 0.38, 0.11);
	C: array[1..Nc] of Real = (0.85, 1.4, 1.12, 3.24);
	E: array[1..Ne] of Real = (2.2, 3.1, 1.8);
var 
	X, Y, Z: Real;

function F(sw: String; N: Integer): Real;
var
	i, j: Integer;
	sum, product, tmp: Real;
begin
	sum:=0;
	for i:=1 to N do
	begin
		product:=1;
		for j:=1 to i do
		begin
			tmp:=0;
			case sw of
			'X': tmp := i / A[j];
			'Y': tmp := i / (C[j] + 1);
			'Z': tmp := i / (E[j] + 2);
			end;
			product := product * tmp;
		end;
		sum := sum + product;
	end;
	F:=sum;
end;

begin


	X := F('X', Na);
	Y := F('Y', Nc);
	Z := F('Z', Ne);

	writeln('X: ', X:0:6);
	writeln('Y: ', Y:0:6);
	writeln('Z: ', Z:0:6);
end.