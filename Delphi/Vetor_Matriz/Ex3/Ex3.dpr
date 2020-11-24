{ 3)Faça um algoritmo que coloque em ordem crescente os 10 números digitados pelo usuário dentro de um vetor e imprima o resultado. }
program Ex3;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils;


var
vet     : array[1..10] of integer;
aux,i,j : integer;

Begin
  aux :=  0;

  for i := 1 to 10 do
  begin
    writeln('Preencha o vetor de 10 posições : ');
    read(vet[i]);
  end;

  for i := 10 downto 2 do
   begin
      for j := 1 to i - 1 do
      begin
        if vet[j] > vet[j + 1] then
         begin
           aux := vet[j];
           vet[j] := vet[ j + 1];
           vet[j + 1] := aux;
        end;
      end;
  end;

ReadLn;

writeln('');

writeln('Vetor');

for i := 1 to 10 do
begin
      writeln(vet[i]);
end;

writeln('');

writeln('Pressione ENTER para finalizar ');

ReadLn;

end.
