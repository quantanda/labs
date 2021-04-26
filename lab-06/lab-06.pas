program lab6_v10;

uses math;

function fact(j: Longint): Longint;
var
	It: Longint;
begin
	for It := 1 to j do
	begin
		if It=1 then
			fact:=1
		else
			fact:=fact*It;
	end;
end;

const 
	eps = 1e-4;
var
	SumMaj, SumMin, p: Real;
	i, j: Longint;
begin
	SumMaj:=0;
	for i:=1 to 10 do
	begin
		j:=1;
		SumMin:=0;
		repeat
			p := (i*i + 0.5*j)/fact(j);
			SumMin := SumMin + p;
			j:=j+1;
		until not (abs(p) > eps);
		SumMaj := SumMaj + cos(2*i)*SumMin;
	end;
	writeln('Sum=', SumMaj:0:4);
end.