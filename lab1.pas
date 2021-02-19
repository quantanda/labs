program lab1;

uses math;

const 
	y=1.33;
var 
	b, a, q, tmp: real;
begin
	b := 0.8 * power(y, 3);
	a := sqrt(power(b, 2) + power(y, 2));
	tmp := a*b*y;
	q := log10(tmp) + power(10, -tmp);
end.