program Soal5_NilaiMahasiswaImut;

var
  M, N, i, j: integer;
  nilai, total, rata_rata: real;
  Lulus, TidakLulus: integer;

begin
  writeln('REKAPITULASI NILAI MAHASISWA');

  write('Masukkan jumlah mahasiswa: ');
  readln(M);

  write('Masukkan jumlah tugas: ');
  readln(N);

  Lulus := 0;
  TidakLulus := 0;

  for i := 1 to M do
  begin
    total := 0;

    writeln;
    writeln('Mahasiswa ke-', i);

    for j := 1 to N do
    begin
      write('Nilai tugas ke-', j, ': ');
      readln(nilai);

      total := total + nilai;
    end;

    rata_rata := total / N;

    writeln('Rata-rata = ', rata_rata:0:2);

    if rata_rata >= 65 then
    begin
      writeln('Status = LULUS');
      Lulus := Lulus + 1;
    end
    else
    begin
      writeln('Status = TIDAK LULUS');
      TidakLulus := TidakLulus + 1;
    end;
  end;

  writeln;
  writeln('HASIL AKHIR');
  writeln('Total LULUS       : ', Lulus);
  writeln('Total TIDAK LULUS : ', TidakLulus);

  readln;
end.