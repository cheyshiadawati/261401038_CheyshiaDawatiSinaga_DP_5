program Soal4_KalkulatorAesthetic;

var
  pilih: integer;
  a, b, hasil: real;
  hasilDiv, hasilMod: integer;
  ulang: char;

begin
  repeat
    writeln('KALKULATOR SEDERHANA');
    writeln('1. Penjumlahan');
    writeln('2. Pengurangan');
    writeln('3. Perkalian');
    writeln('4. Pembagian Real');
    writeln('5. DIV & MOD');

    write('Pilih operasi: ');
    readln(pilih);

    write('Masukkan angka pertama: ');
    readln(a);

    write('Masukkan angka kedua: ');
    readln(b);

    case pilih of
      1:
        begin
          hasil := a + b;
          writeln('Hasil = ', hasil:0:2);
        end;

      2:
        begin
          hasil := a - b;
          writeln('Hasil = ', hasil:0:2);
        end;

      3:
        begin
          hasil := a * b;
          writeln('Hasil = ', hasil:0:2);
        end;

      4:
        begin
          if b <> 0 then
          begin
            hasil := a / b;
            writeln('Hasil = ', hasil:0:2);
          end
          else
            writeln('Tidak dapat membagi dengan 0.');
        end;

      5:
        begin
          hasilDiv := trunc(a) div trunc(b);
          hasilMod := trunc(a) mod trunc(b);

          writeln('Hasil DIV = ', hasilDiv);
          writeln('Hasil MOD = ', hasilMod);
        end;

      else
        writeln('Pilihan tidak tersedia.');
    end;

    writeln;
    write('Apakah ingin melakukan perhitungan lagi? (Y/T): ');
    readln(ulang);
    writeln;

  until (ulang = 'T') or (ulang = 't');

  writeln('Program selesai.');
  readln;
end.