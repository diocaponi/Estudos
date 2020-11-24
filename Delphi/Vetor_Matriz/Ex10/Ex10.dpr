{ 10) Ler um vetor U de 10 elementos. A seguir trocar o primeiro elemento com o
     �ltimo, o segundo com pen�ltimo etc. at� o quinto com o sexto e escrever o
     vetor U assim modificado. }

program Ex10;

uses
  System.SysUtils;

var
  vet  : array[1..10] of integer = ( 1, 2, 3, 4, 5, 6, 7, 8, 9, 10 );
  aux, i : integer;

  n : integer;

begin
   n := Length(vet);

   { Exibe conte�do do vetor }
   writeln('Vetor 1');
   for i := 1 to n do
   begin
      writeln( vet[i] );
   end;

   { Reposiciona vetor }
   for i := 0 to (n div 2) do
   begin
      aux := vet[i];
      vet[i] := vet[n - i];
      vet[n - i] := aux;
   end;

   writeln('');

   { Exibe conte�do do vetor }
   writeln('Vetor 1 resposicionado');
   for i := 1 to n do
   begin
      writeln( vet[i - 1 ] );
   end;

   writeln('');

   ReadLn;

end.
