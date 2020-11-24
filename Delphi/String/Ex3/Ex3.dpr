{ 3) Fazer um programa para ler uma frase e ver quantas vezes uma determinada letra
    informada pelo usuário aparece na frase. }
program Ex3;

uses
  System.SysUtils;

var
  len, i, cont : integer;
  frase, letra : string;

begin
  frase := 'A arara azul';
  letra := '';
  len := Length(frase);

  writeln('Digite a letra: ');
  read(letra);

  { Percorre frase }
  for i := 1 to len do begin

    if Copy(uppercase(frase), i, 1) = Uppercase(letra) then begin{ caso letra exista e/ou seja maiúscula }
      cont := cont + 1;                                          { incrementa contador }
    end;

  end;

  if cont = 0 then begin
    writeln('Letra não encontrada');
  end
  else begin
    writeln('A letra "', letra, '" aparece ', cont, ' vezes');
  end;

  readln;
  readln;

end.
