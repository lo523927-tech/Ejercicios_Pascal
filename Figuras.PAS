program VolcanYMosaico;
const
  Niveles = 6; { para el volcán }
  N = 8;       { para el mosaico }
var
  op, i, j, ancho: integer;

procedure Volcan;
begin
  ancho := 2;
  for i := 1 to Niveles do
  begin
    for j := 1 to ancho do
      write('*');
    writeln;
    ancho := ancho * 2;
  end;
end;

procedure Mosaico;
begin
  for i := 1 to N do
  begin
    for j := 1 to N do
    begin
      if ((i + j) mod 2 = 0) then
        write('##')   { negro }
      else
        write('  ');  { blanco }
    end;
    writeln;
  end;
end;

begin
  writeln('--- MENU ---');
  writeln('1) Volcan');
  writeln('2) Mosaico');
  write('Elige opcion (1 o 2): ');
  readln(op);
  writeln;

  case op of
    1: Volcan;
    2: Mosaico;
  else
    writeln('Opcion no valida.');
  end;

  writeln;
  writeln('Presiona Enter para salir...');
  readln;
end.
