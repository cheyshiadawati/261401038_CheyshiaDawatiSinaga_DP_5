program Soal6_NilaiAkhirYeyy;

var
  Tugas, UTS, UAS, Kehadiran, NilaiAkhir: real;
  Indeks: char;

begin
  writeln('PENENTUAN NILAI AKHIR');

  write('Masukkan nilai tugas: ');
  readln(tugas);

  write('Masukkan nilai UTS: ');
  readln(UTS);

  write('Masukkan nilai UAS: ');
  readln(UAS);

  write('Masukkan persentase kehadiran: ');
  readln(Kehadiran);

  nilaiAkhir := (Tugas * 0.30) +
                (UTS * 0.30) +
                (UAS * 0.40);

  writeln;
  writeln('Nilai Akhir = ', NilaiAkhir:0:2);

  if (NilaiAkhir >= 85) then
    indeks := 'A'
  else if (NilaiAkhir >= 75) then
    indeks := 'B'
  else if (NilaiAkhir >= 60) then
    indeks := 'C'
  else if (NilaiAkhir >= 50) then
    indeks := 'D'
  else
    indeks := 'E';

  writeln('Indeks Huruf = ', Indeks);

  if (NilaiAkhir >= 60) and (Kehadiran >= 80) then
    writeln('Status = LULUS')
  else
    writeln('Status = TIDAK LULUS');

  readln;
end.