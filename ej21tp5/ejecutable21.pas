program CartasHastaMayorRepeatUntil;
uses
  SysUtils;

const
  Palos: array[1..4] of string = ('Oro', 'Copa', 'Espada', 'Basto');
  Numeros: array[1..12] of integer = (1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12);

type
  TCarta = record
    palo: string;
    numero: integer;
  end;

var
  mazo: array[1..48] of TCarta;
  primeraCarta, cartaActual: TCarta;
  i, j, posicionActual, cartasExtraidas: integer;
  encontrada: boolean;

procedure InicializarMazo;
var
  index: integer;
begin
  index := 1;
  for i := 1 to 4 do       // Palos
    for j := 1 to 12 do    // Números
    begin
      mazo[index].palo := Palos[i];
      mazo[index].numero := Numeros[j];
      index := index + 1;
    end;
end;

procedure BarajarMazo;
var
  i, j: integer;
  temp: TCarta;
begin
  Randomize;
  for i := 48 downto 2 do
  begin
    j := Random(i) + 1;
    temp := mazo[i];
    mazo[i] := mazo[j];
    mazo[j] := temp;
  end;
end;

begin
  // Inicializar y barajar el mazo
  InicializarMazo;
  BarajarMazo;

  // Tomar la primera carta
  primeraCarta := mazo[1];
  Writeln('Primera carta: ', primeraCarta.numero, ' de ', primeraCarta.palo);
  Writeln('Buscando carta del mismo palo y número mayor...');
  Writeln;

  // Inicializar variables para la búsqueda
  posicionActual := 2;  // Empezamos desde la segunda carta
  cartasExtraidas := 0;
  encontrada := false;

  // Usar repeat until para buscar la carta
  repeat
    cartaActual := mazo[posicionActual];
    cartasExtraidas := cartasExtraidas + 1;
    
    Writeln('Carta extraída #', cartasExtraidas, ': ', 
            cartaActual.numero, ' de ', cartaActual.palo);
    
    // Verificar si cumple la condición
    if (cartaActual.palo = primeraCarta.palo) and 
       (cartaActual.numero > primeraCarta.numero) then
    begin
      encontrada := true;
    end
    else
    begin
      posicionActual := posicionActual + 1;
    end;
    
  until (encontrada) or (posicionActual > 48);

  // Mostrar resultados
  Writeln;
  if encontrada then
  begin
    Writeln('¡Carta encontrada!');
    Writeln('Se extrajeron ', cartasExtraidas, ' cartas hasta encontrar:');
    Writeln(cartaActual.numero, ' de ', cartaActual.palo);
    readln();
  end
  else
    Writeln('No se encontro una carta del mismo palo y mayor número ',
            'en las ', cartasExtraidas, ' cartas extraídas.');
            readln();

end.
