{ 7) Fazer um programa que determina se uma palavra/frase é Palíndrome (palavra
     que pode ser lida da esquerda para direita e vice-versa).
Ex.:
1 Asa
2 Socorram-me, subi no ônibus em Marrocos
}

program Ex7;

uses
  System.SysUtils;

var
  expressao : string;
  i, m, expLen : integer;
  palind : boolean;

begin
  expressao := 'Socorram-me, subi no ônibus em Marrocos';

  palind := true;

  { Tratamento para retirar caracteres especiais e assento }
  expressao := LowerCase(expressao);
  expressao := StringReplace(expressao, '-', '', [rfReplaceAll]);
  expressao := StringReplace(expressao, ',', '', [rfReplaceAll]);
  expressao := StringReplace(expressao, ' ', '', [rfReplaceAll]);
  expressao := StringReplace(expressao, 'ô', 'o', [rfReplaceAll]);

  expLen := Length(expressao);

  i := 1;

  { Percorre frase/palavra }
  while palind and (i <= expLen div 2) do begin
    palind := (expressao[i] = expressao[expLen - i + 1]); { Inverte palavra/frase para verificar se é palindrome }
    i := i + 1;
  end;

  if palind then begin
    writeln('A frase/palavra é palíndrome.');
  end
  else begin
    writeln('A frase/palavra não é palíndrome.');
  end;

  readln;
  readln;

end.
