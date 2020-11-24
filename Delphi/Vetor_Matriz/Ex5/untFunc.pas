unit untFunc;

interface
  function FindInt(const ANumero: Integer; const AVetor: array of Integer): Integer;


implementation

{ Percorre vetor indicado (AVetor) buscando o numero indicado (ANumero) }
function FindInt(const ANumero: Integer; const AVetor: array of Integer): Integer;
var
    i: Integer;
begin
   Result := -1;
   for i := Low(AVetor) to High(AVetor) do
     if (ANumero = AVetor[i]) then
     begin
        Result := i;
        ReadLn;
        break;
     end;

end;

end.
