program lab4;

uses math;

function fact(j: integer): longint;
var
	i, f: longint;
begin
	for i := 0 to j do
	begin
		if (i=0) or (i=1) 
		then
			f:=1
		else
			f:=f*i;
	end;
	fact:=f;
end;

const 
	esp = 1e-5;
	x = 2.15;
var
	Q, p, t1, t2: real;
	j: integer;
begin
	j:=1;
	Q:=0.0;
	repeat
		writeln('n=', j);
		t1:=ln(j*x);
		writeln('t1=', t1:8:8);
		t2:=fact(j);
		writeln('t2=', t2:8:8);
		p := t1 / t2;

		Q:=Q+p;
		j:=j+1;
		writeln(p:8:8);
	until not (abs(p) > esp);
	writeln(Q:8:5);
end.