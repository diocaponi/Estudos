{ 1)Desenvolva um algoritmo que após o usuário digitar 3 valores, cálcule a soma,
média aritmética, indique o maior e o menor número entre os três elementos,
imprimindo os resultados (aceitar somente números positivos).}

program Ex1;


uses
  System.SysUtils,
  untOp in 'untOp.pas';

var
    num1, num2, num3 : double;

begin

   { Solicita a inserção do numero até que seja positivo }
   repeat

    Write ('Digite o primeiro número: ');
    ReadLn ( num1 );

   until num1 > 0;


   repeat

     Write ('Digite o segundo número: ');
     ReadLn ( num2 );

   until num2 > 0;

   repeat

     Write ('Digite o terceiro número: ');
     ReadLn ( num3 );

   until num3 > 0;


   WriteLn ('');

   WriteLn ('A soma é: '         + FloatToStr( num1 + num2 + num3 ) ) ;

   WriteLn ('A média é: '        + FloatToStr( (num1 + num2 + num3) / 3 ) );

   WriteLn ('O maior número é: ' + FloatToStr( maior(num1, num2, num3) ) );

   WriteLn ('O menor número é: ' + FloatToStr( menor(num1, num2, num3) ) );

   WriteLn ('');

   WriteLn ('Pressione ENTER para sair');

   ReadLn;


end.
