program CalculoCompra;
uses
  SysUtils;

var
  precio: real;
  total: real;
  cantidad: integer;

begin
  // Inicialización de variables
  total := 0;
  cantidad := 0;
  
  writeln('Ingrese los precios de los productos (escriba 0 para terminar):');
  
  // Ciclo repeat until para leer precios hasta ingresar 0
  repeat
    write('Precio del producto #', cantidad + 1, ': ');
    readln(precio);
    
    // Validar que el precio no sea negativo
    while precio < 0 do
    begin
      writeln('El precio no puede ser negativo. Intente nuevamente.');
      write('Precio del producto #', cantidad + 1, ': ');
      readln(precio);
    end;
    
    // Si el precio es positivo, sumar al total
    if precio > 0 then
    begin
      total := total + precio;
      cantidad := cantidad + 1;
    end;
    
  until precio = 0;  // Condición de salida
  
  // Mostrar resultados
  writeln;
  writeln('RESUMEN DE COMPRA');
  writeln('-----------------');
  writeln('Cantidad de artículos: ', cantidad);
  writeln('Monto total a pagar: $', total:0:2);
  
  readln; // Para que no se cierre la ventana inmediatamente
end.
