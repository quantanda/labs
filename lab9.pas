program lab9_v10;

uses math;

type
	vec = array[1..4] of real;
	mat = array[1..4, 1..4] of real;
const 
//	C: vec = (-1.0,  6.0, -1.8, 6.7); { fucking division by zero C[1] }
	C: vec = (-1.1,  6.0, -1.8, 6.7);
	D: vec = ( 0.7, -1.1,  5.1, 6.0);
	E: vec = (-0.09, 10.0, 2.2, 4.5);
var
	X, Y, Z: mat;

procedure F(N: string; P, Q: vec; var O: mat);
var 
	i, j: integer;
begin
	writeln('mat ', N);
	for i:=1 to 4 do
	begin
		for j:=1 to 4 do
		begin
			O[i][j] := (P[i]/Q[i]) + 4*((Q[i] + 1) / (P[i] + 1));
			write(O[i][j]:0:2, ' ');
		end;
		writeln;
	end;
	writeln;
end;

begin
	F('X', C, D, X);
	F('Y', C, E, Y);
	F('Z', D, E, Z);
end.