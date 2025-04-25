program SerieArmonica;
uses crt;

var
  n, i: integer;
  suma: real;

begin
  // Solicitar el valor de n
  repeat
    write('Ingrese el valor de n (debe ser mayor que 0): ');
    readln(n);
  until n > 0; // Validar que n sea positivo

  suma := 0; // Inicializar la suma en 0

  // Calcular la serie armónica
  for i := 1 to n do
  begin
    suma := suma + 1 / i;
    // Opcional: Mostrar cada término (descomentar si se desea ver el progreso)
     writeln('Paso ', i, ': Suma parcial = ', suma:0:4);
  end;

  // Mostrar el resultado final
  writeln('----------------------------------');
  writeln('La suma de la serie H(', n, ') es: ', suma:0:4);
  readln; // Esperar [Enter] para cerrar
end.
