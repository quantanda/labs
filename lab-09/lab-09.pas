program lab9_10;

uses 
	Math;

type
	Vec = array[1..4] of Real;
	Mat = array[1..4, 1..4] of Real;
const 
//	C: Vec = (-1.0,  6.0, -1.8, 6.7); { ORIGIN - division by zero C[1] }
	C: Vec = (-1.1,  6.0, -1.8, 6.7); { replaced }
	D: Vec = ( 0.7, -1.1,  5.1, 6.0);
	E: Vec = (-0.09, 10.0, 2.2, 4.5);
var
	X, Y, Z: Mat;

procedure F(N: String; P, Q: Vec; var O: Mat);
var 
	i, j: Integer;
begin
	WriteLn('Mat ', N);
	for i:=1 to 4 do
	begin
		for j:=1 to 4 do
		begin
			O[i][j] := (P[i]/Q[i]) + 4*((Q[i] + 1) / (P[i] + 1));
			Write(O[i][j]:0:2, ' ');
		end;
		WriteLn;
	end;
	WriteLn;
end;

begin
	F('X', C, D, X);
	F('Y', C, E, Y);
	F('Z', D, E, Z);
end.