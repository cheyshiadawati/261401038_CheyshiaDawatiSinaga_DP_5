program Soal1_NgitungBelanja;

var
  N, i: integer;
  harga, total, diskon, totalBayar: real;

begin
  writeln('PROGRAM TOTAL BELANJA');
  
  write('Masukkan jumlah barang: ');
  readln(N);

  total := 0;

  for i := 1 to N do
  begin
    write('Masukkan harga barang ke-', i, ': Rp');
    readln(harga);

    total := total + harga;
  end;

  { Menentukan diskon }
  if total < 100000 then
    diskon := 0
  else if total < 500000 then
    diskon := 0.10 * total
  else
    diskon := 0.20 * total;

  { Menghitung total bayar }
  totalBayar := total - diskon;

  writeln;
  writeln('RINCIAN BELANJA');
  writeln('Total Sebelum Diskon : Rp', total:0:2);
  writeln('Besar Diskon         : Rp', diskon:0:2);
  writeln('Total Bayar Akhir    : Rp', totalBayar:0:2);

  readln;
end.