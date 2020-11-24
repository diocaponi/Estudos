{ 4) Fazer um programa para ler uma frase e contar quantas palavras existem na frase. }

program Ex4;

uses
  System.SysUtils;

var
  len, i, cont : integer;
  emptysp, frase : string;

begin
  frase := 'Fazer um programa para ler uma frase e contar quantas palavras existem na frase.';
  len := Length(frase);
  emptysp := ' ';

  { Percorre frase }
  while i <= len do begin

    { Percorre espaço vazio}
    while((i <= len) and (Copy(frase, i, 1) = emptysp)) do begin
      i := i + 1;
    end;

    { Incrementa contador(palavras)}
    if i <= len then begin
      cont := cont + 1;
    end;

    { Percorre letras }
    while((i <= len) and (Copy(frase, i, 1) <> emptysp)) do begin
      i := i + 1;
    end;

  end;

  writeln('A frase tem ', cont, ' palavras.');
  readln;

end.
