{6)Dado dois vetores V1 e V2, o usu�rio ir� inserir 10 valores em V1, ap�s isso
   o algoritmo dever� colocar os mesmos valores em V2 na ordem inversa.-Revisado}

program Ex6;

var
  vet, vet2 : array[1..10] of integer;
  i,n : integer;

Begin


   { Alimenta primeiro vetor com numeros informados pelo usu�rio }
   for i := 1 to 10 do
   begin
       writeln('Preencha o vetor de 10 posi��es: ');
       read(vet[i]);
    end;

   { Inverte segundo vetor }
   n := Length(vet); { fun��o Length para retornar o tamanho do vetor }

   for i := 1 to Length(vet) do  {Percorre o tamnho do vetor}
   begin
     vet2[i] := vet[n]; {Vetor 2 na posi��o 1 recebe o valor de vetor um na posi��o final}
     n:= n-1;
   end;

   { Exibe conte�do o primeiro vetor }
   writeln('Vetor 1');
   for i := 1 to 10 do begin
     writeln( vet[i] );
   end;

   writeln('');
   ReadLn;

   { Exibe conte�do do segundo vetor }
   writeln('Vetor 2');
   for i := 1 to 10 do begin
     writeln( vet2[i] );
   end;

   ReadLn;

end.
