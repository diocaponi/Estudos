{ 9)Utilizando o exerc�cio anterior implemente tamb�m em que posi��es (�ndices) do vetor W o valor V aparece. }

program Ex9;

uses
  System.SysUtils,
  untFunc in 'untFunc.pas';

var
   w  : array [1..10] of integer = (10, 20, 30, 40, 50, 60, 70, 80, 90, 100 ) ;
   v, j, i : integer;

   countv: integer;

   result : TRetFindInt;

begin
   { Valor a ser buscado no array }
   v := 3;

   { Percorre vetor procurando pelo valor }
   for i := 1 to 10 do
   begin

      countv := 0;

      for j := 1 to 10 do
      begin
         if( v = w[j] ) then
         begin
            countv := countv + 1;
            writeln('N�mero se encontra na posi��o:', j);
         end;
      end;

     { Caso encontre ou n�o, exibe resultado }
     if (countv >= 1) then
     begin
        result := FindInt(v, w);
        writeln ('O n�mero ', v,' aparece ', countv, ' vez(es).');
     end
     else
     begin
        writeln('O n�mero ', v, ' n�o existe no vetor.');
     end;

     ReadLn;
     break;
   end;

end.
