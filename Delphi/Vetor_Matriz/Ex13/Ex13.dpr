{ 13) Ler um vetor de 10 elementos inteiros. Após isto, imprimir na tela os 10 valores
      lidos e o usuário poderá escolher um destes valores para ser excluído do vetor.
      Ler o valor escolhido e eliminá-lo do vetor. No momento da exclusão todos os
      valores posteriores ao valor escolhido deverão ser reorganizados (movidos uma
      posição para esquerda) a fim de que o vetor resultante não fique com um espaço
      em branco. Imprimir o novo vetor.

      Exemplo:

      V1

      1	2	3	4	5	6
      Selecionado valor 3 para ser excluído

      V2

      1	2	4	5	6	3
      Dica : Ao imprimir omita a última posição do vetor }


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

   { Exibe conteúdo do vetor vet }
   writeln('Vetor: ');
   for i := 1 to 10 do
      writeln( vet[i] );

   { Lê valor a ser excluído }
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

     writeln('Vetor sem o valor excluído: ');

     { Exibe o vetor sem o valor excluído }
     for i := 1 to 9 do
      writeln(vet[i]);

   end
   else { Caso valor não exista no vetor, exibe mensagem para o usuário }
   begin
   writeln('');
   writeln('Número ',num, ' não existe no vetor.');
   end;

   ReadLn;

   writeln('');

   ReadLn;

end.
