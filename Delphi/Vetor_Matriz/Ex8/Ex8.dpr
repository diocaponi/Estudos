{ 8)Ler um vetor W de 10 elementos, depois ler um valor V. Contar e escrever
    quantas vezes o valor V ocorre no vetor W. Caso o valor V não ocorra nenhuma
    vez no vetor W, escrever uma mensagem informando isto.}

    program Ex8;

uses
  System.SysUtils;

var
   w  : array [1..10] of integer;
   v, j, i : integer;

   countv: integer;

begin

   w[1 ] := 1  ;
   w[2 ] := 2  ;
   w[3 ] := 3  ;
   w[4 ] := 4  ;
   w[5 ] := 5  ;
   w[6 ] := 6  ;
   w[7 ] := 7  ;
   w[8 ] := 8  ;
   w[9 ] := 10 ;
   w[10] := 10 ;

   v := 10;

   { Percorre vetor procurando pelo valor }
   for i := 1 to 10 do
   begin

      countv := 0;

      for j := 1 to 10 do
      begin

         if( w[v] = w[j] ) then
           countv := countv + 1;
      end;

   end;

   { Caso encontre ou não, exibe resultado }
   if (countv >= 1) then
   begin
      writeln ('O número ', v,' aparece ', countv, ' vez(es).');
   end
   else
   begin
      writeln('O número ', v, ' não aparece nenhuma vez.');
   end;

   Readln;

end.
