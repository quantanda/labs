program lab5_v10;

uses math;

const
	e=1;
var 
	x, i: real;
begin
	i:=0.05;
	x:=0.1;
	writeln('-------------------------------');
	writeln('|--X--|--ln(1/x)--|--lg(1/x)--|');
	repeat
		writeln('|', x:5:2, '|', ln(1/x):9:5, '  |', log10(1/x):9:5, '  |');
		x:=x+i;
	until not (x - e < 1e-2);
	writeln('-------------------------------');
end.