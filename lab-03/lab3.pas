program lab3_v10;

uses math;
var
	i: integer;
	Q: real;
begin
	Q := 0.0;
	for i:= 1 to 20 do 
	begin
		Q := Q + (sqrt(1/i) + i) / sqrt(3*i-1);
	end;
	writeln(Q:8:6);
end.