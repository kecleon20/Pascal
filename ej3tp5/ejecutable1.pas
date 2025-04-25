program EncontrarMaximo;
uses crt;

var
  valor, maximo: real;
  i, posicionMaximo: integer;

begin
  writeln('Ingrese 475 valores:');

  // Leer el primer valor fuera del bucle para inicializar el m�ximo
  write('Valor 1: ');
  readln(maximo);
  posicionMaximo := 1;

  // Ciclo para los 474 valores restantes
  for i := 2 to 475 do
  begin
    write('Valor ', i, ': ');
    readln(valor);

    // Si encontramos un nuevo m�ximo, lo guardamos con su posici�n
    if valor > maximo then
    begin
      maximo := valor;
      posicionMaximo := i;
    end;
  end;

  // Mostrar resultados
  writeln('----------------------------------');
  writeln('El valor m�ximo es: ', maximo:0:2);
  writeln('Fue ingresado en la posici�n: ', posicionMaximo);
  readln; // Espera [Enter] para cerrar
end.
