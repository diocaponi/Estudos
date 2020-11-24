unit untFunc;


interface

type
  TRetFindInt = record
  pos : integer;
end;

  function FindInt(const ANumero: Integer; const AVetor: array of Integer): TRetFindInt;

var
  vetfind : array[1..10] of integer;

implementation

{ Percorre vetor indicado (AVetor) buscando o numero indicado (ANumero) }
function FindInt(const ANumero: Integer; const AVetor: array of Integer): TRetFindInt;
var
    i, j, countpos: Integer;

begin
   countpos := 0;
   for i := 1 to High(AVetor) do
     if (ANumero = AVetor[i]) then
     begin
        Result.pos := i;
        countpos := countpos + 1;

        if countpos >= 1 then
        begin
           vetfind[i] := Result.pos ;
        end;

     end;
end;


end.
