program EncuestaSistemasOperativos;
uses crt;

var
  voto, i: integer;
  contador1, contador2, contador3: integer;

begin
  // Inicializar contadores
  contador1 := 0;
  contador2 := 0;
  contador3 := 0;

  writeln('Encuesta de sistemas operativos (1, 2 o 3):');

  // Leer 1200 votos
  for i := 1 to 1200 do
  begin
    repeat
      write('Ingrese voto ', i, ' (1, 2 o 3): ');
      readln(voto);
    until (voto >= 1) and (voto <= 3); // Validar entrada

    // Contar votos
    case voto of
      1: contador1 := contador1 + 1;
      2: contador2 := contador2 + 1;
      3: contador3 := contador3 + 1;
    end;
  end;

  // Mostrar resultados
  writeln('----------------------------------');
  writeln('Votos para el Sistema 1: ', contador1);
  writeln('Votos para el Sistema 2: ', contador2);
  writeln('Votos para el Sistema 3: ', contador3);

  // Determinar el sistema más votado
  if (contador1 > contador2) and (contador1 > contador3) then
    writeln('El sistema más votado es el 1.')
  else if (contador2 > contador1) and (contador2 > contador3) then
    writeln('El sistema más votado es el 2.')
  else if (contador3 > contador1) and (contador3 > contador2) then
    writeln('El sistema más votado es el 3.')
  else
    writeln('Hubo un empate entre dos o más sistemas.');

  readln;
end.
