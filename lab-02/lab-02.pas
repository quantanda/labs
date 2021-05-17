program lab02_10;

{ ур-е круга: (x-4)^2 + (y-4)^2 = 3^2 }
{ ур-е ромба abs(x-4)/1 + abs(x-4)/3 = 1 }

{ точка будет входить, если }
{ (x-4)^2+(y-4)^2 <= 3^2 		}
{ и                         }
{ abs(x-4)/1 + abs(x-4)/3 <= 1 }

uses
	Math;

function IsPointInCircle (x, y, xc, yc, r: Real) : Boolean;
begin
	IsPointInCircle := ((x - xc) * (x - xc) + (y - yc) * (y - yc) <= r*r);
end;

{ x, y -- коорд. проверяемой точки }
{ xc, yc -- коорд. центра ромба }
{ dxd2, dyd2 -- длины полудиагоналей ромба }
function IsPointInRhomb (x, y, xc, yc, dxd2, dyd2: Real) : Boolean;
begin
	IsPointInRhomb := (Abs(x - xc)/dxd2 + Abs(y - yc)/dyd2 <= 1);
end;

begin
	WriteLn('+-----+-----+-----+-----+-----+-----+-----+-----+-----+');
	WriteLn('|--x--|--4--|--3--|--6--|-5.5-|-2.1-|-4.5-|--4--|-6.2-|');
	WriteLn('+-----+-----+-----+-----+-----+-----+-----+-----+-----+');
	WriteLn('|--y--|--4--|--6--|-1.5-|-2.5-|-5.1-|-5.1-|--7--|-2.9-|');
	WriteLn('+-----+-----+-----+-----+-----+-----+-----+-----+-----+');
	WriteLn('|-Res-|--n--|--y--|--n--|--y--|--y--|--n--|--n--|--y--|');
	WriteLn('+-----+-----+-----+-----+-----+-----+-----+-----+-----+');
end.

{ 
var
	x, y: Real;
begin
	Write('Enter X coord: '); ReadLn(x);
	Write('Enter Y coord: '); ReadLn(y);	
	
	if (IsPointInCircle(x, y, 4, 4, 3) and not IsPointInRhomb(x, y, 4, 4, 1, 3))
	then
		WriteLn('yes!')
	else
		WriteLn('nope!');
	
end.
 }