program lab6;

uses math;

function fact(j: Longint): Longint;
var
	It: integer;
begin
	for It := 0 to j do
	begin
		if (It=0) or (It=1) 
		then
			fact:=1
		else
			fact:=fact*It;
	end;
end;

const 
	esp = 1e-4;
var
	SumMaj, SumMin, p: real;
	i, j: integer;
begin
	SumMaj:=0.0;
	for i:=1 to 10 do
	begin
		j:=1;
		SumMin:=0.0;
		writeln('i=', i);
		repeat
			
			p := (i*i + 0.5*j)/fact(j);
			SumMin := SumMin + p;
			writeln('	j=', j);
			j:=j+1;
		until not (abs(p) > esp);
		SumMaj := SumMaj + cos(2*i)*SumMin;
	end;
	writeln('BigFuckingSum=', SumMaj:0:4);
end.