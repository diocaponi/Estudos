 { 3)Crie uma nova estrutura com dois campos (sistema operacional e quantidade)
     para somar a quantidade de m�quinas por sistema operacional e depois percorra
     essa estrutura e imprima o resultado; }

program Ex3;

uses
  System.SysUtils, System.StrUtils;

var
  arq : TextFile;

  linha, aux : string;

  so : string;

  qtd : integer;

  cLinuxC, cLinuxD, cWinSt, cWinXp, cWinVi : integer;

  lenAux, lenUser, lenSO : integer;

  i, x, firstPointer, lastPointer : integer;

  vet : array[1..19] of record
  numPc : string;
  user  : string;
  so    : string;
  end;

  vet2 : array of record
  so   : string;
  qtd  : integer;
  end;

begin

  { Atribui arquivo para vari�vel }
  AssignFile(arq, 'C:\Estudos\Delphi\Registro_Arquivo\Ex1\dados.txt');

  { Modo leitura de arquivo }
  Reset(arq);

  cLinuxC := 0;
  cLinuxD := 0;
  cWinSt  := 0;
  cWinXp  := 0;
  cWinVi  := 0;

  x := 0;

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

      i := firstPointer;

      { Capturando �ltimo ';'}
      while i > 0 do begin
        lastPointer := i;
        i := Pos (';', aux, i + 1);
      end;

      so := Copy(aux, lastPointer + 1, lenAux); { SO consiste da posi��o do �ltimo ';' at� o final da linha }
      vet[x].so := so;

    end;

    x := x + 1;

  end;

  { Fechando arquivo }
  CloseFile(arq);

  SetLength(vet2, 5); { Determinando tamanho do vetor2, j� que ter�o posi��es fixas. }

  for x := 1 to 19 do begin

      { Fun��o AnsiIndexStr da unit StrUtils }
      { Como SOs s�o pre-estabelecidos, � poss�vel alocar uma posi��o para cada. }
      case AnsiIndexStr(UpperCase(vet[x].so),['LINUX CENTOS','LINUX DEBIAN','WINDOWS 7','WINDOWS XP','WINDOWS VISTA'])of
         0 : vet2[0].so := vet[x].so ;
         1 : vet2[1].so := vet[x].so ;
         2 : vet2[2].so := vet[x].so ;
         3 : vet2[3].so := vet[x].so ;
         4 : vet2[4].so := vet[x].so ;
      end;

      { Contadores de SO e aloca��o de qtd }

      if vet[x].so = 'LINUX CENTOS' then begin
        cLinuxC := cLinuxC + 1;
        vet2[0].qtd := cLinuxC;
      end;

      if vet[x].so = 'LINUX DEBIAN' then begin
        cLinuxD := cLinuxD + 1;
        vet2[1].qtd := cLinuxD;
      end;

      if vet[x].so = 'WINDOWS 7' then begin
        cWinSt := cWinSt + 1;
        vet2[2].qtd := cWinSt;
      end;

      if vet[x].so = 'WINDOWS XP' then begin
        cWinXp := cWinXp + 1;
        vet2[3].qtd := cWinXp;
      end;

      if vet[x].so = 'WINDOWS VISTA' then begin
        cWinVi := cWinVi + 1;
        vet2[4].qtd := cWinVi;
      end;

  end;

  { Percorre vetor exibindo SO e Qtd }
  for x := 0 to 4 do begin
    writeln('');
    writeln('SO: ', vet2[x].so);
    writeln('Qtd: ',vet2[x].qtd);
  end;

  readln;
  readln;

end.
