program lab10_v10;

uses
	Math, Crt;
const 
	Base = 26;
var 
	Numerals: String = '0123456789ABCDEFGHIJKLMNOP';
	Input: String;
	I, J, N: Integer;
	Num: Extended = 0;
begin
	Write('Enter a number in a ', Base, 'th number system: ');
	ReadLn(Input);
	N := Length(Input);
	for I := 1 to N do
	begin
		J := Pos(UpCase(Input[I]), Numerals);
		if J = 0 then
		begin
			WriteLn('Error!');
			Exit;
		end;
		Num := Num + (J-1)*Power(Base, N - I);
	end;
	WriteLn('The number in a 10th system: ', Num:0:0);
end.