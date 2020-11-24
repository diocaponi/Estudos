{ 2) Dado um número de máquina, busque o nome da pessoa; }

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
  { Atribui arquivo para variável }
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

  write('Digite o número da máquina: ');
  read(numPc);

  numPc := UpperCase(numPc);

  achou := false;

  { Percorre vetor }
  for x := 1 to 30 do begin

    if vet[x].numPc = numPc then begin { Caso encontre número da máquina, exibe informações }

      writeln('Usuário: ', vet[x].user);

      achou := true;

    end

  end;

  { Caso número da maquina não exista }
  if not achou then begin
    writeln('Número da máquina não encontrado.');
  end;

  readln;
  readln;

end.
