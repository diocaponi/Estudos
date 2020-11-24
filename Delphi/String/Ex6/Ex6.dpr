{6) Fazer um programa que receba um nome e o altere para o padrão Americano.
    Ex.: Maria do Carmo Oliveira - Padrão Americano: Oliveira, Maria do Carmo.}

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

  i := Pos(' ', nomeCompleto); { Posição do primeiro espaço }

  { Captura 'fim' como sendo o último espaço antes do último nome }
  while i > 0 do begin
    fim := i;
    i := Pos (' ', nomeCompleto, i + 1);
  end;

  nome := copy(nomeCompleto, 1, fim); { 'nome' seria tudo antes do 'fim', então se copia a primeira posição até o 'fim' }

  ultimoNome := copy(nomeCompleto, fim, lenNomeComp); { 'ultimoNome' seria o último sobrenome, então se copia do 'fim' até o final do nome}

  writeln('Resultado: ', ultimoNome, ', ', nome);

  readln;

end.
