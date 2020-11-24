{ 5) Fazer um programa para ler uma frase e uma palavra. O programa deve verificar
     se a palavra existe na frase e quantas vezes se repete nela.}

program Ex5;

uses
  System.SysUtils;

var
  cont, lenfrase, lenpala, lenstrrep, i: integer;
  palavra, frase : string;

begin
  i := 0;

  frase := 'Fazer um programa para ler uma frase e uma palavra. O programa deve verificar se a palavra existe na frase e quantas vezes se repete nela.';

  lenfrase := Length(frase);

  writeln('Frase: ', frase);

  writeln('');

  write('Digite qual palavra da frase deseja contar: ');
  read(palavra);

  lenpala  := Length(palavra);

  { Calcula o tamanho da frase após a 'palavra' for substituída por '' }
  lenstrrep := Length( StringReplace(frase, palavra, '', [rfReplaceAll, rfIgnoreCase] ) ); {rfIgnoreCase para considerar case sensitive }

  { O contador consiste do 'lenstrrep' subtraído do tamanho da frase, dividido pelo tamanho da palavra. }
  cont := (lenfrase - lenstrrep) div lenpala ;

  writeln('');

  if cont > 0 then begin
    writeln('A palavra "', palavra,'" aparece ', cont,' vez(es) na frase.');
  end
  else begin
    writeln('Não existe "', palavra,'" na frase.');
  end;

  readln;
  readln;

end.
