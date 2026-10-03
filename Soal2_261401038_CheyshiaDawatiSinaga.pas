program Soal2_MauLogin;

var
  password, secretpassword : string;
  tes : integer;

begin
  secretpassword := 'cheyshia22imut';
  tes := 0;

  repeat
    tes := tes + 1;

    write('Masukkan password: ');
    readln(password);

    if password = secretpassword then
    begin
      writeln('Login Berhasil! Selamat Datang');
      break;
    end
    else
      writeln('Password salah!');

  until tes = 3;

  if password <> secretpassword then
    writeln('Akses Ditolak! Akun Terkunci.');

  readln;
end.