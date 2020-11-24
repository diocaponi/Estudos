{ 5)Utilizando o exerc�cio anterior, implemente ap�s digitado um certo valor pelo
   usu�rio, o algoritmo imprimir� qual a posi��o que o n�mero digitado se encontra no segundo vetor.}

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

   { Alimenta primeiro vetor com numeros informados pelo usu�rio }
   for i := 1 to  10 do
   begin
       writeln('Preencha o vetor de 10 posi��es: ');
       read(vet[i]);
    end;

   { Copia conte�do do primeiro vetor para o segundo }
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

   { Exibe conte�do o primeiro vetor }
   writeln('Vetor 1');
   for i := 1 to 10 do
   begin
      writeln( vet[i] );
   end;

   writeln('');

   { Exibe conte�do do segundo vetor }
   writeln('Vetor 2');
   for i := 1 to 10 do
   begin
      writeln( vet2[i] );
   end;

   ReadLn;

   { Solicita numero para ser buscado no vetor }
   writeln('Qual n�mero deseja buscar? ');
   read(find);

   getfind := FindInt(find, vet2);

   writeln('');

   if getfind > -1 then
   begin
      writeln('O n�mero se encontra na posi��o: ' + IntToStr( getfind) );
   end
   else
   begin
      writeln('');
      writeln('O n�mero n�o se encontra no vetor.');
      ReadLn;
   end;

   writeln('');

   ReadLn;

end.
