program Soal8_AkhirnyaCair;

var
  golongan: char;
  JamKerja, JamLembur: integer;
  GajiPokok, lembur, bonus, TotalGaji: real;

begin
  writeln('PROGRAM GAJI KARYAWAN');

  write('Masukkan golongan (A/B/C): ');
  readln(golongan);

  write('Masukkan total jam kerja: ');
  readln(JamKerja);

  case golongan of
    'A', 'a':
      GajiPokok := 1500000;

    'B', 'b':
      GajiPokok := 2000000;

    'C', 'c':
      GajiPokok := 2500000;

    else
      begin
        writeln('Golongan tidak valid.');
        readln;
        exit;
      end;
  end;

  if JamKerja > 40 then
    JamLembur := JamKerja - 40
  else
    JamLembur := 0;

  lembur := JamLembur * 20000;

  bonus := 0;

  if ((golongan = 'C') or (golongan = 'c')) and (JamKerja > 50) then
    bonus := 100000;

  TotalGaji := GajiPokok + lembur + bonus;

  writeln;
  writeln('Gaji Pokok : Rp', GajiPokok:0:2);
  writeln('Lembur     : Rp', lembur:0:2);
  writeln('Bonus      : Rp', bonus:0:2);
  writeln('Total Gaji : Rp', TotalGaji:0:2);

  readln;
end.