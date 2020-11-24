{6) Fazer um programa que receba um nome e o altere para o padr�o Americano.
    Ex.: Maria do Carmo Oliveira - Padr�o Americano: Oliveira, Maria do Carmo.}

program Ex6;

uses
  System.SysUtils;

var
  nomeCompleto, nome, ultimoNome : string;

  lenNomeComp, i, fim : integer;

begin
  nomeCompleto := 'Maria do Carmo Oliveira';

  nomeCompleto := Trim(nomeCompleto);

  lenNomeComp := Length(nomeCompleto);

  i := Pos(' ', nomeCompleto); { Posi��o do primeiro espa�o }

  { Captura 'fim' como sendo o �ltimo espa�o antes do �ltimo nome }
  while i > 0 do begin
    fim := i;
    i := Pos (' ', nomeCompleto, i + 1);
  end;

  nome := copy(nomeCompleto, 1, fim); { 'nome' seria tudo antes do 'fim', ent�o se copia a primeira posi��o at� o 'fim' }

  ultimoNome := copy(nomeCompleto, fim, lenNomeComp); { 'ultimoNome' seria o �ltimo sobrenome, ent�o se copia do 'fim' at� o final do nome}

  writeln('Resultado: ', ultimoNome, ', ', nome);

  readln;

end.
