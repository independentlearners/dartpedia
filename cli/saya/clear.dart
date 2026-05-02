library saya.clear;

import 'dart:io';
// Clear the console screen

void clear() => print('\x1B[2J\x1B[0;0H');

void clearScreen() => stdout.write('\x1B[2J\x1B[0;0H');

void clearConsole() {
  var proses = Process.run('clear', [], runInShell: true);
  proses.then((result) {
    print(result.stdout);
  });
}

void clearTerminal() {
  var proses = Process.run('cls', [], runInShell: true);
  proses.then((result) {
    print(result.stdout);
  });
}
