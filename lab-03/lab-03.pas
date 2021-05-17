program lab3_10;

uses
	Math;
var
	i: Integer;
	Q: Real;
begin
	Q := 0;
	for i:= 1 to 20 do 
		Q := Q + (Sqrt(1/i) + i) / Sqrt(3*i-1);
	WriteLn('Sum = ', Q:0:4);
end.