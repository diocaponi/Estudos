{ 7)Dado um vetor qualquer com 100 números reais, faça um módulo que informa se
    há ou não números repetidos nesse vetor.}

program Ex7;

uses
  System.SysUtils;

var

    { Vetor sem repetição }

    vet : Array [1..100] of real = (1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14,
                                    15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26,
                                    27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38,
                                    39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50,
                                    51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62,
                                    63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74,
                                    75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86,
                                    87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100);



   { Vetor com repetição }

//   vet : Array [1..100] of real = (132,   65,	 238,	190, 96,	266, 179, 72,
//                                    3,	  224, 95,	191, 24,	149, 82,	47,
//                                    189,	232, 177,	238, 58,	224, 123,	132,
//                                    284,	 47, 33,	223, 50,	120, 279,	182,
//                                    185,	216, 71,	281, 182,	250, 52,  185,
//                                    173, 147,	75,	 197,	295, 157,	243,  183,
//                                    88,	 119, 121, 146,	43,	 243,	278,  26,
//                                    289, 10,	249, 39,  130, 227,	220,  15,
//                                    143, 291,	295, 25,	241, 47,  210,  114,
//                                    193, 285,	10,	 187,	141, 253, 70,   229,
//                                    72,	 191,	75,	 114,	133, 52,	140,  122,
//                                    61,	 88,  161, 191,	 15, 81,	205,  158,
//                                    71,	 199,	182, 12);

   i, aux : integer;

   count : integer;

begin

   { Percorre vetor em busca de números repetidos e acumula em "count" se encontrar }
   for i := 1 to 100 do
   begin
      for aux := 1 to 100 do
      begin
         if( aux <> i)then
         begin
            if(vet[i] = vet[aux])then
            begin
              count := count + 1;
            end
         end;
      end;
   end;

   { Exibe resultado se encontrou ou não valores repetidos }
   if (count >= 1) then
   begin
      writeln('Existem valores iguais no vetor');
   end
   else
      writeln('Não existem valores iguais no vetor');

   ReadLn;

end.

