{ 1)Dada uma matriz 3X3, encontre o menor elemento e o maior elemento,
utilizando o mesmo loop. }

program Ex1;

uses
  System.SysUtils;

var
  mat : array [1..3, 1..3] of integer = ((-1, 2, 3),
                                         (4, 5, 6),
                                         (7, 8, 9));

  i, j, maior, menor : integer;

begin
  maior := 1;
  menor := 1;


  { Percorre matriz }
  for i := 1 to 3 do begin

    for j := 1 to 3 do begin

      if mat[i, j] > maior then begin { compara posição com o maior número até então }
         maior := mat[i, j];          { caso for maior, assume a var maior }
      end;

      if mat[i, j] < menor then begin { compara posição com o menor número até então }
         menor := mat[i, j];          { caso for menor, assume a var menor }
      end;

    end;

  end;

  writeln('Maior valor é: ', maior);
  writeln('Menor valor é: ', menor);

  Readln;

end.
