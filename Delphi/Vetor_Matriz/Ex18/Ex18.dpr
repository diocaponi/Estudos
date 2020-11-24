{ 18)Uma matriz de caracteres 3X3 foi utilizada para armazenar uma partida de jogo
da velha. Os caracteres �O� �X� foram utilizados para armazenarem a jogada de cada
participante. Informe na tela se o vencedor foi o jogador �O�, o jogador �X� ou se
o resultado foi empate.IMPORTANTE: n�o ser�o informadas partidas com dois vencedores,
apenas partidas v�lidas e todas as 9 casas estar�o preenchidas com �O� ou �X�. }

program Ex18;

uses
  System.SysUtils;


var
  mat : array[1..3, 1..3] of string;

  i, j, cont : integer;

  l, op : integer;

  vencedor : boolean;
  vez : integer;
  par : integer;

  x : string;

{ Monta matriz 3x3 }
procedure montarMatriz;
begin
  i := 1;
  j := 1;

  for i := 1 to 3 do begin

    for j := 1 to 3 do begin
      cont := cont + 1;
      mat[i, j] := InttoStr(cont);
    end;

  end;

end;

{ Exibe na tela estrutura da matriz }
procedure printMatriz;
begin
  i := 1;
  j := 1;

  writeln('----------------');
  writeln(' Jogo da velha');
  writeln('+----+----+----+');

  { Percorre matriz 3x3 delegando as posi��es correspondentes }
  for i := 1 to 3 do begin

    for j := 1 to 3 do begin
      write('| ');
      write(mat[i, j]: 3); { ':3' indica qtde de espa�os no console. }
    end;

    writeln('|');
    writeln('+----+----+----+');

  end;

end;

{ Verifica se houve vencedor }
function verVencedor : boolean;
var
  venceu : boolean;

  begin
  venceu := false;

  { horizontal }
  for i  := 1 to 3 do begin
    if ((mat[i, 1] = mat[i, 2]) and (mat[i, 2] = mat[i, 3])) then begin
      venceu := true;
    end;
  end;

  { vertical }
  for i := 1 to 3 do begin
    if ((mat[1, i] = mat[2, i]) and (mat[2, i] = mat[3, i])) then begin
      venceu := true;
    end;
  end;

  { diagonal 1 }
  if ((mat[1, 1] = mat[2, 2]) and (mat[2, 2] = mat[3, 3])) then begin
      venceu := true;
  end;

  { diagonal 2 }
  if ((mat[1, 3] = mat[2, 2]) and (mat[2, 2] = mat[3, 1])) then begin
      venceu := true;
  end;

  result := venceu;

end;

{ Verifica qual jogar ir� jogar }
{ L�gica: Se a vez for par, jogador X joga, se for �mpar, jogador O joga. }
procedure verVez;
begin
  vencedor := verVencedor;
  vez := vez + 1;

    if vencedor = false then begin

      if par mod 2 <> 0 then begin { Var "par" n�o � necessariamente par, � usada somente para verifica��o. }
        x := 'O';
      end
      else begin
        x := 'X';
      end;

      par := par + 1;

    end;

end;

{ Controla qual jogador ir� jogar, insere as jogadas na matriz; }
procedure jogar;

begin
  x := 'X';
  vencedor := false;
  vez := 0;
  par := 1;

  repeat
    writeln('Digite uma posi��o (n�mero) para ', x, ': ');
    readln(op);


    if (op > 0) and (op < 10) then  begin { Verifica se n�mero digitado est� entre 1 e 9 }
     //-----------------------------------------------------------------
      { Primeira Linha 1 - 3 }
      if (op > 0) and (op < 4) then begin
        l := 1;
        if (mat[l, op] = 'X') or (mat[l, op] = 'O') then begin { Se a posi��o j� foi preenchida, exibe mensagem. }
          writeln('>> Essa posi��o j� est� preenchida! Escolha outra. <<');
        end
        else begin
          mat[l, op] := x;
          vencedor := verVencedor; { A cada jogada � necess�rio verificar se houve um vencedor. }
          verVez; { Passa a vez ap�s jogada. }
        end;

    end

    else begin
     //-----------------------------------------------------------------
      { Segunda linha 4 - 6 }
      if (op > 3) and (op < 7) then begin
       l := 2;

       if (mat[l, op - 3] = 'X') or (mat[l, op - 3] = 'O') then begin
         writeln('>> Essa posi��o j� est� preenchida! Escolha outra. <<')
       end

       else begin
         mat[l, op - 3] := x;
         vencedor := verVencedor;
         verVez;
       end

      end

     //-----------------------------------------------------------------
      { Terceira linha 7 - 9 }
      else begin
        l := 3;

        if (mat[l, op - 6] = 'X') or (mat[l, op - 6] = 'O') then begin
          writeln('>> Essa posi��o j� est� preenchida! Escolha outra. <<')
        end

        else begin
           mat[l, op - 6] := x;
           vencedor := verVencedor;
           verVez;
        end;

      end

    end;

    end
    else begin
      writeln('>> Op��o inv�lida, digite uma posi��o (n�mero) valida! <<');
    end;

    printMatriz;

  until (vencedor = true) or (vez = 9); { Repete at� existir um vencedor ou o n�mero de jogadas for 9. }

  if (vencedor = true) then begin
    writeln('O jogador ', x, ' venceu !!! Parab�ns!')
  end
  else begin
    writeln('DEU VELHA!');
  end;


  ReadLn;

end;

begin
  cont := 0;

  montarMatriz;

  printMatriz;

  jogar;

  Readln;

end.
