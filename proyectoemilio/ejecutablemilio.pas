program ejercicioquenoesdelaguia;
var ingresos, becas, edad, promedio, i, cont1, cont2, cont3: integer;
var x, y: boolean;
becas= 0;
begin
for:=i to 10000 do
writeln('Cuales son los ingresos de tu flia?');
readln(ingresos);
writeln('cual es su edad?');
readln(edad);
writeln('Cuál es su promedio?');
readln(promedio);
writeln('Vive en concepción del uruguay?(si/no)');
readln(x);
if (x:=si)= true;
else x:= false;
writeln('estudia sistemas?(si/no)');
readln(y);
if (ingresos<=600000) AND (edad < 40) AND (x:= true ) then
begin
writeln('beca no disponible');
else
writeln('')
end
end.
