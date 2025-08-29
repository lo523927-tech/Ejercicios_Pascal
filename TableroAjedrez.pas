program TableroAjedrez;
const
  N = 8;  { tamaño del tablero }
var
  i, j: integer;
begin
  for i := 1 to N do
  begin
    for j := 1 to N do
    begin
      if ((i + j) mod 2 = 0) then
        write('¦¦')   { casilla negra }
      else
        write('  ');  { casilla blanca }
    end;
    writeln;
  end;

  readln;
end.
