{14) Dado um vetor de 10 números e outro com 5 números, informe se um vetor está
     contido dentro do outro. Assuma que obrigatoriamente V1 está contido em V2.}

program Ex14;

uses
  System.SysUtils;

var
  v1  : array[1..5] of integer   = ( 1, 2, 3, 4, 5 );
  v2  : array[1..10]  of integer = ( 1, 2, 3, 4, 5, 1, 2, 3, 4, 5 ); {( 1, 2, 3, 4, 5, 6, 7, 8, 9, 10 );}

  i, j : integer;
  cont, cont2 : integer;
  len1, len2  : integer;

  igualv1 : integer;
  igualv2 : integer;

begin
  len1 := Length(v1);
  len2 := Length(v2);

  i := 1;
  j := 1;

  cont := 0;

  {Percorre vetores verificando se um está contido no outro }
  while j < len2 do begin
    while v1[i] = v2[j] do begin
      i := i + 1;
      j := j + 1;

      if i = len1 then begin
        cont := cont + 1;
      end;
    end;

    i := 1;
    j := j + 1;

  end;

  { Se o numero de elementos que v1 tem em comum com v2 for maior ou igual ao tamanho dele, está contido }
  if cont >= 1 then begin
    writeln('V1 está contido em v2')
  end else begin
    writeln('V1 não está contido em v2');
  end;

  Readln;

end.
