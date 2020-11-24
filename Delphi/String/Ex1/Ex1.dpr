{1) Fazer um programa para contar quantos espa�os em branco existem em uma frase.}
program Ex1;

uses
  System.SysUtils;

var
  frase : string = 'Fazer um programa para contar quantos espa�os em branco existem em uma frase.';
  len, cont, i : integer;
  emptysp : string;

begin
  len := Length(frase);
  cont := 0;
  emptysp := ' ';

  for i := 1 to len do begin
    if Copy(frase, i, 1) = emptysp then { caso exista espa�o em branco exista }
      cont := cont + 1;                 { incrementa contador }
  end;

  if cont = 0 then begin
    writeln('N�o existem espa�os em branco na frase.');
  end
  else begin
    writeln('Existem ', cont, ' espa�os em branco na frase.');
  end;

  readln;

end.
