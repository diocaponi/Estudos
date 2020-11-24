{ 16) Desenvolva um algoritmo que após o usuário digitar 9 valores em uma matriz 3X3,
      cálcule a soma, média aritmética, indique o maior e o menor número entre os nove
      elementos, imprimindo os resultados (aceitar somente números positivos).}

program Ex16;

uses
  System.SysUtils;

var
  mat : array[1..3, 1..3] of integer;

  i, j : integer;

  media : double;
  soma, maior, menor : integer;

begin

   { Ler valores informados pelo usuario e alimentar matriz }
   for i := 1 to 3 do
   begin

      for j := 1 to 3 do
      begin
        repeat
          writeln ('Informe um valor para a matriz: ');
          read( mat[i, j] );
        until mat[i, j] > 0;
      end;

   end;

   { Percorrendo matriz verificando maior\menor e somando valores }
   maior := mat[1, 1];
   menor := mat[1, 1];
   soma := 0;
   for i := 1 to 3 do
   begin

       for j := 1 to 3 do
       begin
          if ( mat[i, j] < menor ) then
             menor := mat[i, j];
             if menor = 0 then
                menor := mat[i, j];

          if mat[i, j] > maior then
             maior := mat[i, j];

          soma := soma + mat[i, j]
       end;

   end;

  
   { Calcula a media aritmetica }
   media := soma / 9;

   readln;

   { Exibe resultados }
   writeln('Menor valor: ', menor);
   writeln('Maior valor: ', maior);
   writeln('Soma: ', soma);
   writeln('Media: ', floatToStr(media));


   readln;

end.
