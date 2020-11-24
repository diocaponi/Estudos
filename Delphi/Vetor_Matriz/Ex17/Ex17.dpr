{17) Dado um vetor de 20 números reais e uma matriz 20X20 de números reais, informe
     quais linhas e colunas são iguais ao vetor, esteja ele na ordem dada ou em ordem
     inversa. Assuma que obrigatoriamente há uma linha igual ao vetor na matriz.}

program Ex17;

uses
  System.SysUtils, Classes;

var                                          {2}                            {10}
  mat: array[1..20,1..20] of Real =   (( 20, 64, 46, 81, 68,  0, 17, 60, 81, 80, 29, 72, 74,  5, 98, 18, 57, 10, 21,  3),
                                        (93,  1,  9, 90, 17, 15, 25, 53, 44,  1,  5,  2, 99, 63, 10, 69, 73, 58,  6,  4),
                                        (25,  1,  3,  9, 96, 56, 26, 69, 66,  1, 31, 97, 46, 43, 13, 46, 92, 24, 49, 88),
                                        (69,  1, 58, 38, 28, 21, 66, 32, 68, 67, 96, 98, 90, 24, 53, 51, 71,  1, 33,  2),
                                        (22, 24, 13, 65, 79, 15, 37, 50, 41, 31,  2, 43, 13, 84, 91,  8, 74, 16, 63, 54),
                                        (58, 17, 46, 54, 63, 25, 45, 40, 37, 56, 80, 53,  5, 94, 50, 94, 91, 96, 72, 48),
                                        (4 , 20, 18, 26, 40, 48, 58,  6, 39, 46, 39, 51, 57, 27, 90, 84, 42, 52, 64, 54),
                                        (66, 46, 22, 45, 79, 29, 90, 18, 98, 81, 98, 85, 56, 52, 96, 17, 63, 31, 14,  9),
                                        (9 , 68, 67, 58, 10, 33, 95, 76,  4, 53, 38, 35, 88, 23, 30, 50, 75, 83, 75, 65),
                                   {10} (80,  1,  1, 67, 31, 56, 46, 81, 53,  2,  1, 68, 46, 20, 17, 24,  1,  1,  1, 64),
                                        (65,  2, 88, 37, 29, 65, 19, 18, 31,  1, 64, 85, 33, 76, 22, 77, 80, 87, 79, 59),
                                        (65, 53, 60, 13, 40, 56, 29, 98, 37, 68, 22, 72, 68, 36, 32, 50, 18, 48, 31, 95),
                                        (57, 81, 14, 25, 88, 37, 19, 58, 98, 46, 65, 18, 28, 83, 44, 15, 81, 83, 22, 33),
                                        (77, 46, 69, 94, 19, 53, 98, 10, 26, 20, 39, 63, 90, 43, 74, 69, 85, 26, 29, 45),
                                        (19, 56, 21, 98, 95, 64, 73, 64,  9, 17, 12, 66, 37, 74, 36, 57, 14, 26, 73, 14),
                                        (47, 31, 21, 60, 18, 95,  7, 57, 37, 24,  9,  8, 36, 94, 87, 73, 67, 75, 34, 62),
                                        (33, 67, 60, 79, 52, 71, 38,  2, 45,  1, 15, 55,  8,  7,  7, 14, 50, 23, 63, 15),
                                   {18} (64,  1,  1,  1, 24, 17, 20, 46, 68,  1,  2, 53, 81, 46, 56, 31, 67,  1,  1, 80),
                                        (18,  1, 32, 12, 80, 78, 70, 45, 19,  1, 16, 80, 38,  2, 85, 45, 99, 67, 13, 30),
                                        (90, 80, 78, 77, 35, 19, 75, 71,  7, 64, 39, 33, 73, 85, 60, 71, 42, 49, 49, 26));

  vet : Array [1..20] of real = (80, 1, 1, 67, 31, 56, 46, 81, 53,  2, 1, 68, 46, 20, 17, 24, 1,  1,  1, 64);


  j, k, l : integer;
  cont : integer;

  lenvet : integer;
  lenmat : integer;


begin

  lenmat := Length(mat);
  lenvet := Length(vet);

  j := 1;
  k := 1;


  Writeln('');

  { Verificando linhas iguais }
  while j < lenmat do begin

    k := 1;

    while k <= lenmat do begin

      if (mat[j, k] <> vet[k]) then begin
        break;
      end;

      if (k = lenmat) then begin
        Writeln('Linha igual: ', j);
      end;

      k := k + 1;

    end;

    k := 1;

    { Verificando ordem inversa }
    while k <= lenmat do begin

      if (mat[j, k] <> vet[1 + lenmat - k]) then begin
        break;
      end;

      if (k = lenmat) then begin
        Writeln('Linha igual: ', j);
      end;

      k := k + 1;
    end;

    j := j + 1;
  end;

  Writeln('');

  j := 1;
  k := 1;

  { Verificando colunas iguais }
  while k < lenmat do begin

    j := 1;

    while k <= lenmat do begin

      if (mat[j, k] <> vet[j]) then begin
        break;
      end;

      if (j = lenmat) then begin
        Writeln('Coluna igual: ', k);
      end;

      j := j + 1;

    end;

    j := 1;

    { Verificando ordem inversa }
    while k <= lenmat do begin

      if (mat[j, k] <> vet[1 + lenmat - j]) then begin
        break;
      end;

      if (j = lenmat) then begin
        Writeln('Coluna igual: ', k);
      end;

      j := j + 1;

    end;

    k := k + 1;
  end;

  Readln;

end.
