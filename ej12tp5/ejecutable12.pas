program ContarCalificaciones;
uses crt;

var
  codigo, i: integer;
  contador1, contador2, contador3: integer;

begin
  // Inicializar contadores
  contador1 := 0;
  contador2 := 0;
  contador3 := 0;

  writeln('Ingrese el c�digo de comportamiento (1, 2 o 3) para 1000 alumnos:');

  // Leer los 1000 c�digos
  for i := 1 to 1000 do
  begin
    repeat
      write('Alumno ', i, ': ');
      readln(codigo);
    until (codigo >= 1) and (codigo <= 3); // Validar entrada

    // Contar seg�n el c�digo
    case codigo of
      1: contador1 := contador1 + 1;
      2: contador2 := contador2 + 1;
      3: contador3 := contador3 + 1;
    end;
  end;

  // Mostrar resultados
  writeln('----------------------------------');
  writeln('Alumnos con calificaci�n 1: ', contador1);
  writeln('Alumnos con calificaci�n 2: ', contador2);
  writeln('Alumnos con calificaci�n 3: ', contador3);
  readln; // Esperar [Enter] para cerrar
end.
