program lab2;

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

function IsPointInRhomb (x, y, xc, yc, dxd2, dyd2: real) : Boolean;
begin
	IsPointInRhomb := (abs(x - xc)/dxd2 + abs(y - yc)/dyd2 <= 1);
end;

var
	x, y: real;
begin
	write('enter x coordinate: '); readln(x);
	write('enter y coordinate: '); readln(y);	
	
	writeln('IsPointInCircle? ', IsPointInCircle(x, y, 4, 4, 3));
	writeln('IsPointInRhomb? ', IsPointInRhomb(x, y, 4, 4, 1, 3));
	
	if (IsPointInCircle(x, y, 4, 4, 3) and not IsPointInRhomb(x, y, 4, 4, 1, 3))
	then
		writeln('yeah!.. the point is located inside the shape!');
	else
		writeln('nope!');
	
end.