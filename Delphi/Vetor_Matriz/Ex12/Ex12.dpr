{12) Ler um vetor X de 10 elementos inteiros. Calcular a média aritmética e copiar
     para um vetor A os valores de X que estão acima da média calculada e para um
     vetor B os valores que estão abaixo da média. Imprimir a média calculada e os
     vetores A e B. Obs.: Não deixar espaços vagos entre os elementos de A nem de B.}

program Ex12;

uses
  System.SysUtils;

var
  x  : array[1..10] of integer = ( 1, 2, 3, 4, 5, 6, 7, 8, 9, 10 );
  a  : array[1..10] of integer;
  b  : array[1..10] of integer;

  i : integer;
  xi : integer;
  yi : integer;

  media : double;


begin

   { Calcula a media }
   for i := 1 to 10 do
   begin
      media := media + x[i];
   end;

   media := media/10;

   { Percorre vetor x e alimenta vetores A e B }
   for i := 1 to 10 do
   begin
      if x[i] > media then
         a[i] := x[i]
      else
        b[i] := x[i]
   end;

   writeln('Média: ', media);
   writeln('');

   { Exibe conteúdo do vetor x }
   writeln('Vetor x');
   for i := 1 to 10 do
   begin
      writeln( x[i] );
   end;

   writeln('');

   { Exibe conteúdo do vetor a }
   writeln('Vetor a');
   for i := 1 to 10 do
   begin
      if a[i] = 0  then
        continue
      else
         writeln( a[i] );
   end;

   writeln('');

   { Exibe conteúdo do vetor b }
   writeln('Vetor b');
   for i := 1 to 10 do
   begin
      if b[i] = 0  then
        continue
      else
        writeln( b[i] );
   end;

   Readln;

end.
