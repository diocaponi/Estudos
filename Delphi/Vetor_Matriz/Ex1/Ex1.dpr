{ 1)Desenvolva um algoritmo que ap�s o usu�rio digitar 3 valores, c�lcule a soma,
m�dia aritm�tica, indique o maior e o menor n�mero entre os tr�s elementos,
imprimindo os resultados (aceitar somente n�meros positivos).}

program Ex1;


uses
  System.SysUtils,
  untOp in 'untOp.pas';

var
    num1, num2, num3 : double;

begin

   { Solicita a inser��o do numero at� que seja positivo }
   repeat

    Write ('Digite o primeiro n�mero: ');
    ReadLn ( num1 );

   until num1 > 0;


   repeat

     Write ('Digite o segundo n�mero: ');
     ReadLn ( num2 );

   until num2 > 0;

   repeat

     Write ('Digite o terceiro n�mero: ');
     ReadLn ( num3 );

   until num3 > 0;


   WriteLn ('');

   WriteLn ('A soma �: '         + FloatToStr( num1 + num2 + num3 ) ) ;

   WriteLn ('A m�dia �: '        + FloatToStr( (num1 + num2 + num3) / 3 ) );

   WriteLn ('O maior n�mero �: ' + FloatToStr( maior(num1, num2, num3) ) );

   WriteLn ('O menor n�mero �: ' + FloatToStr( menor(num1, num2, num3) ) );

   WriteLn ('');

   WriteLn ('Pressione ENTER para sair');

   ReadLn;


end.
