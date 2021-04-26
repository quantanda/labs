program lab02_v10;

{ ур-е круга: (x-4)^2 + (y-4)^2 = 3^2 }
{ ур-е ромба abs(x-4)/1 + abs(x-4)/3 = 1 }

{ точка будет входить, если }
{ (x-4)^2+(y-4)^2 <= 3^2 		}
{ и                         }
{ abs(x-4)/1 + abs(x-4)/3 <= 1 }

uses math;

function IsPointInCircle (x, y, xc, yc, r: real) : Boolean;
begin
	IsPointInCircle := ((x - xc) * (x - xc) + (y - yc) * (y - yc) <= r*r);
end;

{ x, y -- коорд. проверяемой точки }
{ xc, yc -- коорд. центра ромба }
{ dxd2, dyd2 -- длины полудиагоналей ромба }
function IsPointInRhomb (x, y, xc, yc, dxd2, dyd2: real) : Boolean;
begin
	IsPointInRhomb := (abs(x - xc)/dxd2 + abs(y - yc)/dyd2 <= 1);
end;

var
	x, y: real;
begin
	write('Enter X coordinate: '); readln(x);
	write('Enter Y coordinate: '); readln(y);	
	
	if (IsPointInCircle(x, y, 4, 4, 3) and not IsPointInRhomb(x, y, 4, 4, 1, 3))
	then
		writeln('Yeah, the point is located inside the shape!')
	else
		writeln('nope!');
	
end.