program lab7;

uses math;

const
	n = 14;
type
	arr_t = array[1..n] of real;
var
	fmin, tmp: real;
	i, j, nmin: integer;
	arr: arr_t;
begin
	randomize;
	writeln('Origin array:');// write(chr(9));
	for i:=1 to n do 
	begin
		arr[i] := random*100;
		write(arr[i]:0:2, ' ');
	end;
	writeln;

	for i:=1 to n do
	begin
		fmin := arr[i];
		nmin := -1;
		for j:=i to n do
			if arr[j] < fmin then
			begin
				fmin := arr[j];
				nmin := j; 
			end;

		if nmin <> -1 then 
		begin
			tmp := arr[i];
			arr[i] := fmin;
			arr[nmin] := tmp;
		end;
	end;

	writeln('Sorted array:');// write(chr(9));
	for i:=1 to n do 
		write(arr[i]:0:2, ' ');
	writeln;
end.