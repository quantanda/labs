program lab7_10;

uses
	Math;
const
	n = 14;
type
	TArr = array[1..n] of Char;

procedure FillArray(var SrcArr: TArr);
var
	i: Integer;
begin
	Randomize;
	WriteLn('Origin array:');
	for i:=1 to n do 
	begin
		SrcArr[i] := Chr(65 + Random(26));
		Write(SrcArr[i]);
	end;
	WriteLn;
end;

procedure PrintSortedArray(SrcArr: TArr);
var
	i: Integer;
begin
	WriteLn('Sorted array:');
	for i:=1 to n do 
		Write(SrcArr[i]);
	WriteLn;
end;

var
	fMin, tmp: Char; 
	i, j, nMin: Integer;
	Arr: TArr;
begin
	FillArray(Arr);
	// собственно сортировка
	for i:=1 to n do
	begin
		// ищем меньший элемент
		fMin := Arr[i];
		nMin := -1;
		for j:=i to n do
			if Arr[j] > fMin then
			begin
				fMin := Arr[j];
				nMin := j; 
			end;
		// если меньший элемент найден
		if nMin <> -1 then 
		begin
			tmp := Arr[i];
			Arr[i] := fMin;
			Arr[nMin] := tmp;
		end;
	end;
	// вывод отсортированного массива
	PrintSortedArray(Arr);
end.