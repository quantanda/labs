program lab10_v10;

{$MODE Delphi}
{$APPTYPE console}

type
	TStringArray = array of String;

	TextLine = record
		Arr: array of String
	end;
	TTextLineArray = array of TextLine;

function StrExplode(const S: String; const Delim: Char): TStringArray;
var
	i, k, Count, Len: Integer;
begin
	if S = '' then begin
		StrExplode:=nil;
		Exit;
	end;
	Count:=0;
	Len := Length(S);
	for i:=1 to Len do begin
		if S[i] = Delim then Inc(Count);
	end;
	SetLength(Result, Count + 1);
	Count := 0;
	k := 0;
	for i := 1 to Len do
	begin
		if S[i] = Delim then begin
			Result[Count] := Copy(S, k, i - k);
			Inc(Count);
			k := i + 1;
		end; 
	end;
	Result[Count] := Copy(S, k, Len - k + 1);
end;


procedure ReadAndSplit(var fpIn: TextFile; var Arr: TTextLineArray);
var
	tmpStr: String;
	tmpTxtLine: TextLine;
	Count: Integer;
begin
	Count := 0;
	while not Eof(fpIn) do
	begin
		ReadLn(fpIn, tmpStr);
		tmpTxtLine.Arr := StrExplode(tmpStr, ' ');
		Inc(Count);
		SetLength(Arr, Count);
		Arr[Count] := tmpTxtLine;
	end;
end;


var
	fp: TextFile;
	aTxtLines: TTextLineArray;
	i, j, Len: Integer;
begin
	AssignFile(fp, 'text.txt');
	Reset(fp);

	ReadAndSplit(fp, aTxtLines);
	for i:=0 to Length(aTxtLines) do
	begin
		for j:=0 to Length(aTxtLines[i].Arr) do
		begin
			WriteLn(aTxtLines[i].Arr[j]);
		end;
	end;	

	CloseFile(fp);
end.