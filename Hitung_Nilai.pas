program NilaiAkhir;

uses
  crt,
  SysUtils;

var
  nama: string;
  hadir, tugas, kuis, uts, uas: integer;
  na: real;
  predikat: string;

begin
  clrscr;
  writeln('Masukkan nama: ');
  readln(nama);

  writeln('Masukkan nilai kehadiran: ');
  readln(hadir);

  writeln('Masukkan nilai tugas: ');
  readln(tugas);

  writeln('Masukkan nilai kuis: ');
  readln(kuis);

  writeln('Masukkan nilai UTS: ');
  readln(uts);

  writeln('Masukkan nilai UAS: ');
  readln(uas);

  na := hadir * 15 / 100 + tugas * 15 / 100 + kuis * 10 / 100 + uts * 20 / 100 + uas * 40 / 100;

  if na > 90 then
    predikat := 'Amat Baik'
  else if (na >= 75) and (na <= 89) then
    predikat := 'Baik'
  else if (na >= 63) and (na <= 74) then
    predikat := 'Cukup'
  else if (na >= 51) and (na <= 62) then
    predikat := 'Perlu Belajar'
  else
    predikat := 'Mengulang';

  writeln('Nama: ', nama);
  writeln('Nilai Akhir: ', na:0:2); // Menampilkan nilai akhir dengan dua angka di belakang koma
  writeln('Predikat: ', predikat);
  readln;
end.

