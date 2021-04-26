program lab10_v10;

var
	fp: TextFile;
begin
	AssignFile(fp, 'text.txt');
	ReWrite(fp);
	WriteLn(fp, 'Как-то утром на рассвете');
	WriteLn(fp, 'Поезд рельсы потеряет');
	WriteLn(fp, 'Вспыхнет зарево в колодце');
	WriteLn(fp, 'Хрустнет веточка в овраге');
	WriteLn(fp, 'Порвутся штаны от широкой походки');
	WriteLn(fp, 'Не понадобятся больше припасённые харчи...');
	CloseFile(fp);
end.