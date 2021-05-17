program lab1_10;
uses
	Math;
const 
	y: Real = 1.33;
var 
	b, a, q: Real;
begin
	b := 0.8 * Power(y, 3);
	a := Sqrt(Sqr(b) + Sqr(y));
	q := Log10(a*b*y) + Power(10, -(a*b*y));
	WriteLn(q:0:6);
end.