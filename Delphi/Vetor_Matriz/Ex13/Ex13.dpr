{ 13) Ler um vetor de 10 elementos inteiros. Ap�s isto, imprimir na tela os 10 valores
      lidos e o usu�rio poder� escolher um destes valores para ser exclu�do do vetor.
      Ler o valor escolhido e elimin�-lo do vetor. No momento da exclus�o todos os
      valores posteriores ao valor escolhido dever�o ser reorganizados (movidos uma
      posi��o para esquerda) a fim de que o vetor resultante n�o fique com um espa�o
      em branco. Imprimir o novo vetor.

      Exemplo:

      V1

      1	2	3	4	5	6
      Selecionado valor 3 para ser exclu�do

      V2

      1	2	4	5	6	3
      Dica : Ao imprimir omita a �ltima posi��o do vetor }


program Ex13;

uses
  System.SysUtils;

var
  vet  : array[1..10] of integer;

  i, j, num : integer;

begin
   vet[ 1 ] :=  1;
   vet[ 2 ] :=  2;
   vet[ 3 ] :=  3;
   vet[ 4 ] :=  4;
   vet[ 5 ] :=  5;
   vet[ 6 ] :=  6;
   vet[ 7 ] :=  7;
   vet[ 8 ] :=  8;
   vet[ 9 ] :=  9;
   vet[10 ] := 10;

   { Exibe conte�do do vetor vet }
   writeln('Vetor: ');
   for i := 1 to 10 do
      writeln( vet[i] );

   { L� valor a ser exclu�do }
   writeln('');
   writeln('Digite o valor que deseja excluir: ');
   read( num );

   i := 1;

   { Percorre vetor a procura do valor informado }
   while ( i <= 10 ) AND (num <> vet[i]) do
         i := i + 1;

   if i <= 10 then
   begin
     { Percorre o vetor reposinando-o com base no valor informado }
     for j := i to 10 do
       vet[j] := vet[j + 1];

     writeln('Vetor sem o valor exclu�do: ');

     { Exibe o vetor sem o valor exclu�do }
     for i := 1 to 9 do
      writeln(vet[i]);

   end
   else { Caso valor n�o exista no vetor, exibe mensagem para o usu�rio }
   begin
   writeln('');
   writeln('N�mero ',num, ' n�o existe no vetor.');
   end;

   ReadLn;

   writeln('');

   ReadLn;

end.
