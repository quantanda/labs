program lab6_10;

uses 
	Math;
function Fact(j: LongInt): LongInt;
var 
	i: LongInt;
begin
	Fact := 1
	for i := 1 to j do
		Fact := Fact*i;
end;

const 
	eps = 1e-4;
var
	SMaj, SMin, p: Real;
	i, j: LongInt;
begin
	SMaj:=0;
	for i:=1 to 10 do
	begin
		j := 1;
		SMin := 0;
		repeat
			p := (i*i + 0.5*j) / Fact(j);
			SMin := SMin + p;
			Inc(j);
		until not (Abs(p) > eps);
		SMaj := SMaj + Cos(2*i)*SMin;
	end;
	WriteLn('Sum=', SMaj:0:4);
end.