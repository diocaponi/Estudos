{ Elabore um programa que l� os dados do arquivo dados.txt ignorando a primeira
  linha (header) e armazene em um vetor de registros com tr�s campos (n�mero, nome
  e sistema operacional). Com os dados na estrutura, fa�a as seguintes pesquisas:

  1) Dado um nome de usu�rio, busque o n�mero da m�quina e sistema operacional; }

program Ex1;

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
  { Alterar para diret�rio que for utilizar }
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

  write('Digite o nome do usu�rio: ');
  read(user);

  user := UpperCase(user);

  achou := false;

  { Percorre vetor }
  for x := 1 to 30 do begin

    if vet[x].user = user then begin { Caso encontre usu�rio, exibe informa��es }

      writeln('N�mero do m�quina: ', vet[x].numPc);

      writeln('Sistema operacional: ', vet[x].so);

      achou := true;

    end

  end;

  { Caso usuario n�o exista }
  if not achou then begin
    writeln('Usu�rio n�o encontrado.');
  end;

  readln;
  readln;

  end.
