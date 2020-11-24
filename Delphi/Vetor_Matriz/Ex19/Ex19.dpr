{19)Uma matriz 6X6 l�gica representa as posi��es minadas de um jogo. Quando uma
posi��o possui valor VERDADEIRO significa que h� uma mina ali. Escreva um programa
que informa se � poss�vel percorrer o tabuleiro de um lado ao outro em linha reta
(atravessando uma linha inteira ou coluna inteira) sem passar por uma mina sequer.}

program Ex19;

uses
  System.SysUtils;

var
//  mat : array[1..6, 1..6] of boolean;

//  mat  : array [1..6,1..6] of boolean =  ((false, false, false, false, false, false),
//                                          (false, true,  false, false, false, false),
//                                          (false, false, false, false, false, false),
//                                          (true,  false, true,  false, true,  false),
//                                          (false, false, false, false, false, false),
//                                          (false, true,  false, false, false, false));

  mat  : array [1..6,1..6] of boolean =  ((true, false, true, true, true, true),
                                          (true, false, true, true, true, true),
                                          (true, false, true, true, true, true),
                                          (true, false, true, true, true, true),
                                          (true, false, true, true, true, true),
                                          (true, false, true, true, true, true));

  i, j, l, c, cont: integer;
  livre : boolean;

begin
   { Percorre matriz preenchendo todas posi��es com FALSE }
//   for i := 1 to 6 do
//   begin
//      for j := 1 to 6 do
//      begin
//         mat[i, j] := false;
//      end;
//   end;
//
//   writeln('Informe a posi��o (linha e coluna) da mina: ');
//   write('Linha: ');
//   readln(l);
//   write('Coluna: ');
//   readln(c);
//
//   mat[l, c] := true;  { Muda para TRUE posi��o indicada pelo usu�rio }

   writeln('');

   livre := false;

   { Percorre linhas a procura de TRUE }
   for i := 1 to 6 do begin

     cont := 0;

     for j := 1 to 6 do begin

        if mat[i, j] then begin  { Se posi��o for TRUE, incrementa contador }
          cont := cont + 1;
        end;

     end;

     if cont = 0 then begin { Contador zerado indica que n�o h� mina }
       writeln('Caminho da linha: ', i);
       livre := true;       { existe caminho livre }
     end;

   end;

   if livre = false then begin
       writeln('N�o existe caminho de linha livre.');
   end;

   writeln('');

   livre := false;

   { Percorre colunas a procura de TRUE }
   for j := 1 to 6 do begin

     cont := 0;

     for i := 1 to 6 do begin

       if mat[i, j] then begin { Se posi��o for TRUE, incrementa contador }
         cont := cont + 1;
       end;

     end;

     if cont = 0 then begin  { Contador zerado indica que n�o h� mina }
       writeln('Caminho da coluna: ', j);
       livre := true;  { existe caminho livre }
     end;

   end;

   if livre = false then begin
       writeln('N�o existe caminho de coluna livre.');
   end;

   readln;

end.
