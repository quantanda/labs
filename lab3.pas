program lab3;

uses math;
var
	l: integer;
	Q: real;
begin
	Q := 0.0;
	for l:= 1 to 20 do 
	begin
		Q := Q + (sqrt(1/l) + l)/sqrt(3*l-1);
	end;
	writeln(Q:8:6);
end.