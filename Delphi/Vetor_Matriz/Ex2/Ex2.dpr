{ 2)Faça um algoritmo que insere 10 valores digitados pelo usuário em um vetor e imprima a média aritmética desses valores. }

program Ex2;

{$APPTYPE CONSOLE}

{$R *.res}
 uses
  System.SysUtils;

type
  vetorNum = array[1..10] of double;

var
  vEntrada : string;

  numero : vetorNum;

  media : double;

  i     : integer;

begin

   i := 1; media  := 0;

   repeat

     write ('Digite um numero: ');
     read(numero[i]);
     media := media + numero[i];
     i := succ(i);

   until i > 10;

   writeln( 'Média: ', media/10);

   ReadLn;

   writeln ('');

   WriteLn ('Pressione ENTER para sair');

   writeln ('');

   ReadLn;


end.
