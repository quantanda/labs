program lab4_v10;

uses math;

const 
	esp = 1e-5;
	x = 2.15;
var
	Q, p, f: Real;
	i, j: Integer;
begin
	j := 1;
	Q := 0;
	repeat
		// calculate factorial
		for i := 1 to j do
		begin
			if i = 1 then
				f := 1
			else
				f := f*i;
		end;
		p := ln(j*x) / f;
		
		Q := Q + p;
		Inc(j);
	until not (abs(p) > esp);
	writeln(Q:0:4);
end.