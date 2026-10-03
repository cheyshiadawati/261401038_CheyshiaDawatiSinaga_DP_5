program Soal9_BerapaHari;

var
  tahun, bulan, BanyakHari: integer;
  kabisat: boolean;

begin
  writeln('PROGRAM JUMLAH HARI');

  write('Masukkan tahun: ');
  readln(tahun);

  write('Masukkan nomor bulan (1-12): ');
  readln(bulan);

  { Menentukan tahun kabisat }
  kabisat := ((tahun mod 400 = 0) or
              ((tahun mod 4 = 0) and (tahun mod 100 <> 0)));

  case bulan of
    1, 3, 5, 7, 8, 10, 12:
      BanyakHari := 31;

    4, 6, 9, 11:
      BanyakHari := 30;

    2:
      begin
        if kabisat then
          BanyakHari := 29
        else
          BanyakHari := 28;
      end;

    else
      begin
        writeln('Nomor bulan tidak valid.');
        readln;
        exit;
      end;
  end;

  writeln('Jumlah hari = ', BanyakHari);

  readln;
end.