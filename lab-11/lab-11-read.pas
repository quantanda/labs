program lab11_v3;

// i'm not sure, but i guess this only exists in FreePascal
uses
	Character;



procedure CalculateNecessaryThings(S: String; var NumWords, NumSpaces, NumPunctuation: Integer);
var
	N, I: Integer;
begin
	N := Length(S);
	if N = 0 then Exit;

	// calculate in two passes =]

	// calculate punctuation and spaces count
	for I:=1 to N do
	begin
		if IsWhiteSpace(S[I]) then Inc(NumSpaces);
		if IsPunctuation(S[I]) then Inc(NumPunctuation);
	end;

	// calculate word count
	I := 1;
 	repeat
 		{ skip non-letter and letter characters }
 		{ ... and when some black magix :] }
 		while (I < N) and not IsLetter(S[I]) do Inc(I);
 		while (I < N) and IsLetter(S[I]) do Inc(I);
 		Inc(NumWords)
 	until I >= N;
end;	

var
	fp: TextFile;
	S: String;
begin
	Assign(fp, 'text-in.txt');
	Reset(fp);

	while not Eof(fp) do
	begin
		ReadLn(fp, S);
		CalculateNecessaryThings(S, NumWords, NumSpaces, NumPunctuation);
	end;
	Close(fp);

	Assign(fp, 'text-out.txt');
	ReWrite(fp);
	Write(fp, 'Words number=', NumWords, ', ');
	Write(fp, 'Spaces number=', NumSpaces, ', ');
	Write(fp, 'Punctuation marks number=', NumPunctuation);
	Close(fp);
end.