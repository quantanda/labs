program lab10_10;

uses
	Math, Crt;
const 
	Base = 26;
var 
	Numerals: String = '0123456789ABCDEFGHIJKLMNOP';
	Input: String;
	i, j, N: Integer;
	Num: Extended = 0;
begin
	Write('Enter the number in a ', Base, 'th number system: ');
	ReadLn(Input);
	N := Length(Input);
	for i := 1 to N do
	begin
		j := Pos(UpCase(Input[i]), Numerals);
		if j = 0 then
		begin
			WriteLn('Error!');
			Exit;
		end;
		Num := Num + (j-1)*Power(Base, N - i);
	end;
	WriteLn('The number in a 10th system: ', Num:0:0);
end.