program lab4;

uses math;

const 
	esp = 1e-5;
	x = 2.15;
var
	Q, p, f: real;
	i, j: integer;
begin
	j:=1;
	Q:=0.0;
	repeat
		// calculate factorial
		for i := 0 to j do
		begin
			if (i=0) or (i=1) 
			then
				f:=1
			else
				f:=f*i;
		end;
		p := ln(j*x) / f;
		
		Q:=Q+p;
		j:=j+1;
	until not (abs(p) > esp);
	writeln(Q:8:5);
end.