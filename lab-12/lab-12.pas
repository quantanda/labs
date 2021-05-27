program lab12_v10;

uses Crt;

type 
	TList = record
		data: Real;
		prev, next: ^TList;
	end;
	ListPtr = ^TList;
 
procedure ViewHelp;
begin
	WriteLn('Help:');
	WriteLn('"l" - Step left');
	WriteLn('"r" - Step right');
	WriteLn('"i" - Insert');
	WriteLn('"d" - Delete');
	WriteLn('"w" - Write to file');
	WriteLn('"h" - Help');
	WriteLn('"e" - Exit from that Hell');
end;
 
procedure CreateList(var List: ListPtr);
begin
    New(List);
    Write('Enter the first value: ');
    ReadLn(List^.data);
 end;
 
procedure TraverseFirst(var List: ListPtr);
begin
	while List^.prev <> nil do List := List^.prev;
end;
 
procedure ViewList(List: ListPtr);
var 
	tmp: ListPtr;
begin
	tmp := List;
	TraverseFirst(tmp);
	while tmp <> nil do
	begin
		Write(tmp^.data:0:4, ' ');
		if tmp = List then write('| ');
		tmp := tmp^.next;
	end;
	WriteLn;
end;
 
procedure ListInsert(var List: ListPtr); 
var
	node: ListPtr;
	x: Real;
begin
	Write('Enter the value: ');
	ReadLn(x);
	New(node);
	node^.next := List^.next;
	node^.prev := List;
	node^.data := x;
	if List^.next <> nil then 
		List^.next^.prev := node;
	List^.next := node;
	List := node;
end;
 
procedure ListDelete(var List: ListPtr); 
var
	tmp: ListPtr;
begin
	if (List^.prev = nil) and (List^.next=nil) then
	begin
		Dispose(List);
		WriteLn('List is empty.');
		CreateList(List);	
    end
    else 
	begin
		if List^.prev = nil then
		begin
			List := List^.next;
			Dispose(List^.prev);
			List^.prev := nil;
		end
		else if List^.next = nil then 
		begin
			List:=List^.prev;
			Dispose(List^.next);
			List^.next:=nil;
		end else begin
			tmp := List;
			List^.next^.prev := List^.prev;
			List^.prev^.next := List^.next;
			List := List^.prev;
			Dispose(tmp);
		end;
	end;
end;
 
procedure StepRight(var List: ListPtr);
begin
	if List^.next = nil then 
		WriteLn('End of list.')
	else 
		List := List^.next;
end;
 
procedure StepLeft(var List: ListPtr);
begin
	if List^.prev = nil then 
		WriteLn('Begin of list.')
    else
		List:=List^.prev; 
end;
 
procedure write_to_file(List:ListPtr);
  var f: text;
      tmp:ListPtr;
  begin
    tmp:=List;
    TraverseFirst(tmp);
    assign(f, 'file.txt');
    rewrite(f);
    while tmp<>nil do begin
      WriteLn(f, tmp^.data);
      tmp:=tmp^.next;
    end;
    close(f);
    WriteLn('File has been writen.');
  end;
 
var List:ListPtr;
input:char;

begin
{ 
	WriteLn('Plz, just create this fucking linked list:))))))))))))))');
  	WriteLn('Press #c.');
  	if ReadKey <> 'c' then 
  		Exit;
 }
  	CreateList(List);
  	ViewHelp;
	repeat
		ViewList(List);
		input := ReadKey;
		ClrScr;
		case input of
		'e': WriteLn('We finally leave this hell.');
      	'l': StepLeft(List);
      	'r': StepRight(List);
      	'd': ListDelete(List);
      	'i': ListInsert(List);
      	'w': write_to_file(List);
      	'h': ViewHelp
        else
      		WriteLn('No such command! Type "h" for help.');
      	end;
	until input='e';
end.
