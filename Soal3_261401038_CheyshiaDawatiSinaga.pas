program Soal3_DeretAngka;

var
  N, milih, i: integer;

begin
  writeln('PROGRAM DERET ANGKA');

  write('Masukkan nilai N: ');
  readln(N);

  writeln('1. Ganjil');
  writeln('2. Genap');
  write('Pilih kategori: ');
  readln(milih);

  i := 1;

  while i <= N do
  begin
    if (milih = 1) and (i mod 2 = 0) then
    begin
      i := i + 1;
      continue;
    end;

    if (milih = 2) and (i mod 2 <> 0) then
    begin
      i := i + 1;
      continue;
    end;

    if i mod 5 = 0 then
    begin
      i := i + 1;
      continue;
    end;

    write(i, ' ');

    i := i + 1;
  end;

  readln;
end.