program lab5;

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
		write('| ', x:0:2);
		write('|  ', ln(1/x):0:5, '  ');
		write('|  ', log10(1/x):0:5, '  ');
		writeln('|');
		x:=x+i;
	until not (x - e < 1e-2);
	writeln('-------------------------------');
end.