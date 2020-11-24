program ex4;

uses
  System.SysUtils;

var
  vet : array[1..5] of integer = (4, 2, 6, 5, 7);

  i, pospar, par, posimpar, impar : integer;
begin

  par   := 1;
  impar := 1;

  for i := 1 to 5 do begin

    if ( i mod 2) = 0 then begin
      par := i;
      pospar := i;
    end
    else begin
      posimpar := i;
      impar := i;
    end;

  end;

   writeln('par{',pospar,'}: ', par);
   writeln('ímpar{',posimpar,'}: ', impar);

   readln;

end.
