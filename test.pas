program NilaiAkhir;

uses
  crt,
  SysUtils;

var
  nama: string;
  hadir, tugas, kuis, uts, uas: real; 
  na: real;
  predikat: string;

begin
  clrscr;
  writeln('Masukkan nama: ');
  readln(nama);

  writeln('Masukkan nilai kehadiran (0-100): ');
  readln(hadir);
  hadir := hadir * 15 / 100; 

  writeln('Masukkan nilai tugas (0-100): ');
  readln(tugas);
  tugas := tugas * 15 / 100; 

  writeln('Masukkan nilai kuis (0-100): ');
  readln(kuis);
  kuis := kuis * 10 / 100;

  writeln('Masukkan nilai UTS (0-100): ');
  readln(uts);
  uts := uts * 20 / 100;

  writeln('Masukkan nilai UAS (0-100): ');
  readln(uas);
  uas := uas * 40 / 100;

  na := hadir + tugas + kuis + uts + uas;

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
    
  writeln;
  writeln('======================================');
  writeln('Nama Mahasiswa: ', nama);
  writeln('Presentasi Kehadiran: ', hadir:0:2); 
  writeln('Presentasi Tugas: ', tugas:0:2);
  writeln('Presentasi Kuis: ', kuis:0:2);
  writeln('Presentasi UAS: ', uas:0:2);
  writeln('Presentasi UTS: ', uts:0:2);
  writeln('Nilai Akhir: ', na:0:2);
  writeln('Predikat: ', predikat);
  writeln('======================================');

  readln;
end.
