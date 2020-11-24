{ Elabore um programa que lê os dados do arquivo dados.txt ignorando a primeira
  linha (header) e armazene em um vetor de registros com três campos (número, nome
  e sistema operacional). Com os dados na estrutura, faça as seguintes pesquisas:

  1) Dado um nome de usuário, busque o número da máquina e sistema operacional; }

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
  { Atribui arquivo para variável }
  { Alterar para diretório que for utilizar }
  AssignFile(arq, 'C:\Estudos\Delphi\Registro_Arquivo\Ex1\dados.txt');

  { Modo leitura de arquivo }
  Reset(arq);

  x := 1;

  { Enquanto não chegar no final do arquivo }
  while not Eof(arq) do begin
    Readln(arq, linha);

    aux := linha;
    lenAux := Length(aux);

    if lenAux > 25 then begin { Ignorando header. Se o tamanho da linha for maior que 25, ignora linha. 25 é o tamanho maior de linha com usuário.}
      x := x + 1;
    end
    else begin
      firstPointer := Pos(';', aux ); { Primeiro ';'}
      numpc := Copy(aux, 1, firstPointer - 1 ); { Número do pc consiste da primeira posição até o primeiro ';' }
      vet[x].numPc := numpc;

      i := firstPointer;

      { Capturando último ';'}
      while i > 0 do begin
        lastPointer := i;
        i := Pos (';', aux, i + 1);
      end;

      so := Copy(aux, lastPointer + 1, lenAux); { SO consiste da posição do último ';' até o final da linha }
      vet[x].so := so;

      lenSO := Length(so);

      user := Copy(aux, firstPointer, lastPointer - 2 ); { Usuário consiste nas posições entre o primeiro ';' e o último ';' }
      user := StringReplace(user, ';', '', [rfReplaceAll]);
      vet[x].user := user;
    end;

    x := x + 1;
  end;

  { Fechando arquivo }
  CloseFile(arq);

  write('Digite o nome do usuário: ');
  read(user);

  user := UpperCase(user);

  achou := false;

  { Percorre vetor }
  for x := 1 to 30 do begin

    if vet[x].user = user then begin { Caso encontre usuário, exibe informações }

      writeln('Número do máquina: ', vet[x].numPc);

      writeln('Sistema operacional: ', vet[x].so);

      achou := true;

    end

  end;

  { Caso usuario não exista }
  if not achou then begin
    writeln('Usuário não encontrado.');
  end;

  readln;
  readln;

  end.
