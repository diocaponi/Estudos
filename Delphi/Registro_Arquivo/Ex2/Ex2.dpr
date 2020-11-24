{ 2) Dado um n�mero de m�quina, busque o nome da pessoa; }

program Ex2;

uses
  System.SysUtils;

var
  arq : TextFile;

  linha, aux : string;

  user, numpc, so : string;

  lenAux, lenUser, lenSO : integer;

  i, x, firstPointer, lastPointer : integer;

  vet : array[1..30] of record
  numPc : string;
  user  : string;
  so    : string;
  end;

  achou : boolean;

begin
  { Atribui arquivo para vari�vel }
  AssignFile(arq, 'C:\Estudos\Delphi\Registro_Arquivo\Ex1\dados.txt');

  { Modo leitura de arquivo }
  Reset(arq);

  x := 1;

  { Enquanto n�o chegar no final do arquivo }
  while not Eof(arq) do begin
    Readln(arq, linha);

    aux := linha;
    lenAux := Length(aux);

    if lenAux > 25 then begin { Ignorando header. Se o tamanho da linha for maior que 25, ignora linha. 25 � o tamanho maior de linha com usu�rio.}
      x := x + 1;
    end
    else begin
      firstPointer := Pos(';', aux ); { Primeiro ';'}
      numpc := Copy(aux, 1, firstPointer - 1 ); { N�mero do pc consiste da primeira posi��o at� o primeiro ';' }
      vet[x].numPc := numpc;

      i := firstPointer;

      { Capturando �ltimo ';'}
      while i > 0 do begin
        lastPointer := i;
        i := Pos (';', aux, i + 1);
      end;

      so := Copy(aux, lastPointer + 1, lenAux); { SO consiste da posi��o do �ltimo ';' at� o final da linha }
      vet[x].so := so;

      lenSO := Length(so);

      user := Copy(aux, firstPointer, lastPointer - 2 ); { Usu�rio consiste nas posi��es entre o primeiro ';' e o �ltimo ';' }
      user := StringReplace(user, ';', '', [rfReplaceAll]);
      vet[x].user := user;
    end;

    x := x + 1;
  end;

  { Fechando arquivo }
  CloseFile(arq);

  write('Digite o n�mero da m�quina: ');
  read(numPc);

  numPc := UpperCase(numPc);

  achou := false;

  { Percorre vetor }
  for x := 1 to 30 do begin

    if vet[x].numPc = numPc then begin { Caso encontre n�mero da m�quina, exibe informa��es }

      writeln('Usu�rio: ', vet[x].user);

      achou := true;

    end

  end;

  { Caso n�mero da maquina n�o exista }
  if not achou then begin
    writeln('N�mero da m�quina n�o encontrado.');
  end;

  readln;
  readln;

end.
