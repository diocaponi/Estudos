{2) Fazer um programa para concatenar duas strings. A segunda palavra deve ser concatenada na primeira.}
program Ex2;

uses
  System.SysUtils;

var
  str1, str2, str3 : string;

begin
  str1 := 'Primeira String, ';
  str2 := 'Segunda String.';

  str3 := Concat(str1, str2);

  writeln(str3);

  readln;

end.
