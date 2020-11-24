{ 4)Utilizando dois vetores, faça um algoritmo que coloque em ordem crescente os
    10 números digitados pelo usuário e imprima o resultado no segundo vetor. }

program Ex4;

uses
  System.SysUtils;

var
  vet, vet2 : array[1..10] of integer;
  aux, aux3, i, j, l  : integer;
  aux2 : boolean;

Begin
   aux := 0;

   for i := 1 to  10 do
   begin
      writeln('Preencha o vetor de 10 posições: ');
      read(vet[i]);
   end;

   j:= 1;
   for i := 1 to 10 do
   begin
      aux2 := True;
      for l := 1 to j do
         if vet2[l] = vet[i] then aux2 := False;
      if aux2 = true then
      begin
         vet2[j] := vet[i];
         j:= j + 1;
      end;
   end;

   for i := 10 downto 2 do
   begin
      for j := 1 to i - 1 do
      begin
         if vet2[j] > vet2[j + 1] then
         begin
            aux := vet2[j];
            vet2[j] := vet2[j + 1];
            vet2[j + 1] := aux;
         end;
      end;
   end;

   for i := 1 to 10 do
   begin
      writeln( vet[i] );
   end;

   writeln('');

   for i := 1 to 10 do
   begin
      writeln( vet2[i] );
   end;

   writeln('Preencha o vetor de 10 posições: ');

   ReadLn;

end.


