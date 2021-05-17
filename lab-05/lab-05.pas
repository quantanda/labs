program lab5_10;

uses 
	Math;
const
	EndVal: Real = 1;
	Step: Real = 0.05;
	Cap: String = '+-----+-----------+-----------+';
var 
	X, F1, F2: Real;
begin
	X := 0.1;
	WriteLn(Cap);
	WriteLn('|  X  |  ln(1/X)  |  lg(1/X)  |');
	WriteLn(Cap);
	while (X <= EndVal) do { 'cause 'X <> EndVal' is a bad idea }
	begin
		F1 := Ln(1/X);
		F2 := Log10(1/X);
		WriteLn('|', X:5:2, '|', F1:9:5, '|':3, F2:9:5, '|':3);
		X := X + Step;
	end;
	WriteLn(Cap);
end.