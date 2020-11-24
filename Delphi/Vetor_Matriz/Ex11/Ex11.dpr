{ 11) Ler dois vetores, X e Y de 5 elementos cada um (ocupando as posições de
      1 a 5 em cada vetor). Intercalar os elementos desses dois vetores formando
      assim um novo vetor R de 10 elementos, onde nas posições ímpares de R estejam
      os elementos de X e nas posições pares os elementos de Y. Escrever o vetor R,
      após sua completa geração. }

program Ex11;

uses
  System.SysUtils;

var

  x  : array[1..5] of integer = ( 2, 4, 6, 8, 10 );
  y  : array[1..5] of integer = ( 1, 3, 5, 7, 9  );

  r  : array[1..10] of integer;

  i, j, ii  : integer;
  xi, yi : integer;

  modr : integer;


begin
   xi := 1;
   yi := 1;

  { Exibe conteúdo o primeiro vetor }
   writeln('Vetor X');
   for i := 1 to 5 do begin
     writeln( x[i] );
   end;

   writeln('');

   { Exibe conteúdo do segundo vetor }
   writeln('Vetor Y');
   for i := 1 to 5 do begin
     writeln( y[i] );
   end;

   writeln('');
   writeln('Vetor R');

   { Monta o vetor R }
   for i := 1 to 10 do
   begin
      if (i mod 2) = 0  then  // função mod para verificar resto de divisao.
      begin
        r[i] := y[yi];    // par
        yi := yi + 1;
      end
      else
      begin
        r[i] :=  x[xi];  // impar
        xi := xi + 1;
      end;

      writeln( r[i] );

   end;

   ReadLn;

end.
