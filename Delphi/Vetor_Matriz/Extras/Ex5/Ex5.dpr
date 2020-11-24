{ 5) Verifique se um vetor V2 está contido no vetor V1, o vetor V2 sempre será
menor que V1 }
program Ex5;

uses
  System.SysUtils;

var
  v1 : array[1..10] of integer = (1, 2, 3, 4, 5, 7, 8, 9, 0, 10);
  v2 : array[1..5] of integer = (4, 5, 7, 8, 9);

  len1, len2, i, j, cont : integer;

begin
  cont := 0;

  i := 1;
  j := 1;

  len1 := Length(v1);
  len2 := Length(v2);

  while j < len1 do begin  {Percorre v1}

    while v2[i] = v1[j] do begin  { Enquanto valor v2 for igual valor v1 }
      i := i + 1;                 { incrementa indice v2 }
      j := j + 1;                 { incrementa indice v1 }

      if i = len2 then begin
        cont := cont + 1;
      end;

    end;

    i := 1;
    j := j + 1;
  end;

  if cont >= 1 then begin     { se o contador for maior ou igual a 1, indica que v2 está contido em v1 }
    writeln('V2 está contido em V1');
  end
  else begin
    writeln('V2 não está contido em V1');
  end;

  readln;

end.
