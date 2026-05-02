import 'dart:io';

class Human {
  final String name;
  final int age;
  final String gender;

  const Human({required this.name, required this.age, required this.gender});
}

void clearScreen() => stdout.write('\x1B[2J\x1B[H');

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

    stdout.writeln(
      'Umur harus berupa angka yang valid dan tidak boleh negatif.',
    );
  }
}

String readGender() {
  const genders = ['Lelaki', 'Perempuan', 'Trans'];

  while (true) {
    stdout.writeln('Pilih jenis kelamin:');
    for (int i = 0; i < genders.length; i++) {
      stdout.writeln('$i. ${genders[i]}');
    }

    stdout.write('Masukkan index: ');
    final input = stdin.readLineSync();
    final index = int.tryParse((input ?? '').trim());

    if (index != null && index >= 0 && index < genders.length) {
      return genders[index];
    }

    stdout.writeln('Pilihan tidak valid. Masukkan index yang tersedia.');
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
  stdout.writeln('Nama          : ${human.name}');
  stdout.writeln('Umur          : ${human.age}');
  stdout.writeln('Jenis kelamin : ${human.gender}');
}
