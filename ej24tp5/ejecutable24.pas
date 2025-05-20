program ContadorTarjetasSinBlanca;
var
  color: char;
  numero, azulesPar, rojasImpar, otras: integer;
  continuar: boolean;
begin
  // Inicializar contadores
  azulesPar := 0;
  rojasImpar := 0;
  otras := 0;
  continuar := true;
  
  writeln('Ingrese las tarjetas (color [R/A] y n�mero). El lote termina con una tarjeta blanca(B)');
  
  // Ciclo while principal
  while continuar do
  begin
    // Leer color de la tarjeta
    write('Color (R=roja, A=azul): ');
    readln(color);
    color := upcase(color);
    
    // Verificar si es tarjeta blanca (fin del lote)
    if color = 'B' then
    begin
      //continuar := false;
      writeln('RESULTADOS:');
      writeln('Tarjetas azules con n�mero par: ', azulesPar);
      writeln('Tarjetas rojas con n�mero impar: ', rojasImpar);
    end
    else if (color = 'R') or (color = 'A') then
    begin
      // Leer n�mero solo si es tarjeta v�lida (no blanca)
      write('N�mero: ');
      readln(numero);
      
      // Contar seg�n los criterios
      if (color = 'A') and (numero mod 2 = 0) then
        azulesPar := azulesPar + 1
      else if (color = 'R') and (numero mod 2 <> 0) then
        rojasImpar := rojasImpar + 1
      else
        otras := otras + 1;
    end
    else
    begin
      writeln('Color no v�lido. Use R (roja) o A (azul).');
    end;
  end;
  
  // Mostrar resultados
  writeln;
  writeln('RESULTADOS:');
  writeln('Tarjetas azules con n�mero par: ', azulesPar);
  writeln('Tarjetas rojas con n�mero impar: ', rojasImpar);
end.
