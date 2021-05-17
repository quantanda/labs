program lab4_10;

uses
	Math;
const 
	eps: Real = 1e-5;
	x: Real = 2.15;
var
	Q, p, f: Real;
	i, j: Integer;
begin
	j := 1;
	Q := 0;
	repeat
		f := 1;
		for i := 2 to j do
			f := f*i;
		p := Ln(j*x) / f;
		Q := Q + p;
		Inc(j);
	until not (Abs(p) > eps);
	WriteLn('Sum = ', Q:0:5);
end.