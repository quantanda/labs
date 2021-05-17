program lab12_v10;

uses Crt;

type 
	TList = record
		data: Integer;
		prev, next: ListPtr;
	end;
	ListPtr = ^TList;
 
procedure ViewHelp;
begin
	WriteLn('Help:');
	WriteLn('"l" - просмотр влево');
	WriteLn('"r" - просмотр вправо');
	WriteLn('"i" - вставить элемент');
	WriteLn('"d" - удалить элемент');
	WriteLn('"w" - записать список в файл');
	WriteLn('"h" - справка');
	WriteLn('"e" - выход из программы');
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
		Write(tmp^.data, ' ');
		if tmp = List then write('| ');
		tmp := tmp^.next;
	end;
	WriteLn;
end;
 
procedure ListInsert(var List: ListPtr); 
var
	node: ListPtr;
	x: integer;
begin
	Write('Введите значение: ');
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
    WriteLn('Запись в файл осуществлена.');
  end;
 
var List:ListPtr;
input:char;

begin
WriteLn('Для начала вам нужно создать список.');
  WriteLn('Для этого нажмите букву "c".');
  if ReadKey <> 'c' then exit
  else
  WriteLn('Происходит создание списка.');
  CreateList(List);
  ViewHelp;
  repeat
    ViewList(List);
    input:=ReadKey;
    case input of
      'e': WriteLn('Завершение программы.');
      'l': go_left(List);
      'r': go_right(List);
      'd': ListDelete(List);
      'i': ListInsert(List);
      'w': write_to_file(List);
      'h': ViewHelp
        else
      WriteLn('Неверный ввод. "h" - справка.');
      end;
  until input='e';
end.
