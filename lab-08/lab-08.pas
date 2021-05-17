program lab8_10;

uses 
	Math;

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
	Sum, Product, Tmp: Real;
begin
	Sum := 0;
	for i:=1 to N do
	begin
		Product := 1;
		for j:=1 to i do
		begin
			Tmp := 0;
			case sw of
			'X': Tmp := i / A[j];
			'Y': Tmp := i / (C[j] + 1);
			'Z': Tmp := i / (E[j] + 2);
			end;
			Product := Product * Tmp;
		end;
		Sum := Sum + Product;
	end;
	F := Sum;
end;

begin
	X := F('X', Na);
	Y := F('Y', Nc);
	Z := F('Z', Ne);

	WriteLn('X: ', X:0:6);
	WriteLn('Y: ', Y:0:6);
	WriteLn('Z: ', Z:0:6);
end.