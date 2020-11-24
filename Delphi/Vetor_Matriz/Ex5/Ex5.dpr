{ 5)Utilizando o exercício anterior, implemente após digitado um certo valor pelo
   usuário, o algoritmo imprimirá qual a posição que o número digitado se encontra no segundo vetor.}

program Ex5;

uses
  System.SysUtils,
  untFunc in 'untFunc.pas';

var
  vet, vet2 : array[1..10] of integer;
  aux, aux3, i, j, l  : integer;
  aux2 : boolean;

  index, find : integer;
  getfind : integer;

Begin
   aux := 0;

   { Alimenta primeiro vetor com numeros informados pelo usuário }
   for i := 1 to  10 do
   begin
       writeln('Preencha o vetor de 10 posições: ');
       read(vet[i]);
    end;

   { Copia conteúdo do primeiro vetor para o segundo }
   j := 1;
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

   { Organiza o segundo vetor em ordem crescente }
   for i := 10 downto 0 do
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

   { Exibe conteúdo o primeiro vetor }
   writeln('Vetor 1');
   for i := 1 to 10 do
   begin
      writeln( vet[i] );
   end;

   writeln('');

   { Exibe conteúdo do segundo vetor }
   writeln('Vetor 2');
   for i := 1 to 10 do
   begin
      writeln( vet2[i] );
   end;

   ReadLn;

   { Solicita numero para ser buscado no vetor }
   writeln('Qual número deseja buscar? ');
   read(find);

   getfind := FindInt(find, vet2);

   writeln('');

   if getfind > -1 then
   begin
      writeln('O número se encontra na posição: ' + IntToStr( getfind) );
   end
   else
   begin
      writeln('');
      writeln('O número não se encontra no vetor.');
      ReadLn;
   end;

   writeln('');

   ReadLn;

end.
