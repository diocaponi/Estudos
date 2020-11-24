unit untOp;



interface

  function maior( AValor1, AValor2, AValor3 : double ) : double;

  function menor( AValor1, AValor2, AValor3 : double ) : double;


implementation

uses System.SysUtils;


function maior( AValor1, AValor2, AValor3 : double) : double;
begin

   if ( AValor1 > AValor2) and (AValor1 > AValor3) then
         Result := AValor1

   else if ( AValor2 > AValor1 ) and (AValor2 > AValor3)  then
          Result := AValor2

   else if ( AValor3 > AValor1 ) and (AValor3 > AValor2) then
          Result := AValor3;
end;

function menor( AValor1, AValor2, AValor3 : double ) : double;
begin

   if ( AValor1 < AValor2) and (AValor1 < AValor3) then
     Result := AValor1

   else if ( AValor2 < AValor1 ) and (AValor2 < AValor3)  then
          Result := AValor2

   else if ( AValor3 < AValor1 ) and (AValor3 < AValor2) then
          Result := AValor3;
end;

end.
