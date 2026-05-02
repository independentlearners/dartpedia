import 'dart:io';

enum Gender { lelaki, perempuan, trans }

class Human {
  final String name;
  final int age;
  final Gender gender;

  const Human({required this.name, required this.age, required this.gender});
}

void clearScreen() => stdout.write('\x1B[2J\x1B[H');
// Escape sequence ANSI/VT100 untuk membersihkan layar dan
// memindahkan kursor ke posisi paling atas.

String readRequiredLine(String prompt) {
  while (true) {
    stdout.write(prompt);
    final input = stdin.readLineSync();

    if (input != null && input.trim().isNotEmpty) {
      return input.trim();
    }

    stdout.writeln('Input tidak boleh kosong.');
  }
}

int readAge(String prompt) {
  while (true) {
    stdout.write(prompt);
    final input = stdin.readLineSync();
    final age = int.tryParse((input ?? '').trim());

    if (age != null && age >= 0) {
      return age;
    }

    stdout.writeln('Umur harus angka valid dan tidak boleh negatif.');
  }
}

Gender readGender() {
  while (true) {
    stdout.writeln('Pilih jenis kelamin:');
    stdout.writeln('0. Lelaki');
    stdout.writeln('1. Perempuan');
    stdout.writeln('2. Trans');
    stdout.write('Masukkan index: ');

    final input = stdin.readLineSync();
    final index = int.tryParse((input ?? '').trim());

    switch (index) {
      case 0:
        return Gender.lelaki;
      case 1:
        return Gender.perempuan;
      case 2:
        return Gender.trans;
      default:
        stdout.writeln('Pilihan tidak valid. Masukkan 0, 1, atau 2.');
    }
  }
}

String genderLabel(Gender gender) {
  switch (gender) {
    case Gender.lelaki:
      return 'Lelaki';
    case Gender.perempuan:
      return 'Perempuan';
    case Gender.trans:
      return 'Trans';
  }
}

void main() {
  stdout.writeln('=== INPUT DATA MANUSIA ===');

  final name = readRequiredLine('Masukkan nama: ');
  clearScreen();

  final age = readAge('Masukkan umur: ');
  clearScreen();

  final gender = readGender();
  clearScreen();

  final human = Human(name: name, age: age, gender: gender);

  stdout.writeln('=== HASIL DATA ===');
  stdout.writeln('Nama         : ${human.name}');
  stdout.writeln('Umur         : ${human.age}');
  stdout.writeln('Jenis kelamin : ${genderLabel(human.gender)}');
}
