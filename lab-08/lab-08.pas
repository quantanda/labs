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

function F_Ver1(sw: String; N: Integer): Real;
var
	i, j: Integer;
	Sum, P, Tmp: Real;
begin
	Sum := 0;
	for i:=1 to N do
	begin
		P := 1;
		for j:=1 to i do
		begin
			Tmp := 0;
			case sw of
			'X': Tmp := i / A[j];
			'Y': Tmp := i / (C[j] + 1);
			'Z': Tmp := i / (E[j] + 2);
			end;
			P := P * Tmp;
		end;
		Sum := Sum + P;
	end;
	F_Ver1 := Sum;
end;

function F_Ver2(Arr: array of Real; N: Integer; X: Real): Real;
var
	i, j: Integer;
	Sum, P: Real;
begin
	Sum := 0;
	for i:=1 to N do
	begin
		P := 1;
		for j:=0 to i-1 do 
			P := P * (i / (Arr[j] + X));
		Sum := Sum + P;
	end;
	F_Ver2 := Sum;
end;

var
	X, Y, Z: Real;
begin
	WriteLn('First ver: ');
	X := F_Ver1('X', Na);
	Y := F_Ver1('Y', Nc);
	Z := F_Ver1('Z', Ne);
	WriteLn('X: ', X:0:4, ' Y: ', Y:0:4, ' Z: ', Z:0:4);

	WriteLn('Second ver: ');
	X := F_Ver2(A, Na, 0);
	Y := F_Ver2(C, Nc, 1);
	Z := F_Ver2(E, Ne, 2);
	WriteLn('X: ', X:0:4, ' Y: ', Y:0:4, ' Z: ', Z:0:4);
end.