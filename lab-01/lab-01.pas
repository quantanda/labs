program lab1_v10;

uses math;

const 
	y: real = 1.33;
var 
	b, a, q, tmp: real;
begin
	b := 0.8 * power(y, 3);
	a := sqrt(power(b, 2) + power(y, 2));
	tmp := a*b*y;
	q := log10(tmp) + power(10, -tmp);
	WriteLn(q:0:6);
end.