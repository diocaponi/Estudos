{ 20)Implemente o exercício anterior, mas agora informando se na linha ou coluna,
     possui uma mina de toda a matriz. }

program Ex20;

uses
  System.SysUtils;

var
//  mat : array[1..6, 1..6] of boolean;

//  mat  : array [1..6,1..6] of boolean =  ((false, false, false, false, false, false),
//                                          (false, true,  false, false, false, false),
//                                          (false, false, false, false, false, false),
//                                          (true,  false, true,  false, true,  false),
//                                          (false, false, false, false, false, false),
//                                          (false, true,  false, false, false, false));

  mat : array [1..6,1..6] of boolean = ((false, false, true,  true, false, false),
                                        (false, false, false, false, false, false),
                                        (false, false, false, false, false, false),
                                        (false, false, false, false, false, false),
                                        (false, false, false, false, false, false),
                                        (false, true, false, false, false, false));

  aux, i, j, l, c, contl, contc : integer;

procedure verColuna;
begin
  for c := 1 to 6 do begin
    contc := 0;

    if mat[i, c] then begin { Se posição for TRUE, incrementa contador }
      contc := contc + 1;
    end;

    if contc = 1 then begin  { Contador igual a 1 indica que há mina }
    writeln('coluna: ', c);
    end;

  end;

end;


begin
  writeln('');
  writeln('Mina em:');
  
  for i := 1 to 6 do begin

    contl := 0;

    for j := 1 to 6 do begin

      if mat[i, j] then begin  { Se posição for TRUE, incrementa contador }
        contl := contl + 1;
      end;

    end;

    if contl >= 1 then begin { Contador igual a 1 indica que há mina }
       writeln('');
      writeln('linha: ', i );
    end;

    verColuna;

  end;


  readln;

end.

