{ 2)Faça a inversão da linha e coluna de uma matriz 3X3 utilizando uma outra
matriz, o exemplo ficaria. }
program Ex2;

uses
  System.SysUtils;

var
  { Matriz proposta }
  mat : array [1..3, 1..3] of integer = ((7, 8, 9),
                                         (6, 4, 5),
                                         (2, 6, 1));
  { Matriz inversa }
  matinv : array [1..3, 1..3] of integer;


  i, j : integer;

begin

  { Percorre matriz invertendo linhas/colunas }
  for i := 1 to 3 do begin

    for j := 1 to 3 do begin

       matinv[j, i] := mat[i, j]; { Invertendo matriz[linha, coluna] para matrizinversa[coluna, linha]}

    end;

  end;

  readln;
end.
