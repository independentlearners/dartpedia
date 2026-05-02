import '../saya/clear.dart';

// import 'dart:core';
import 'dart:io';
// import 'dart:ffi';

void main() {
  while (true) {
    print('Input command');
    var command = stdin.readLineSync();
    clear();

    switch (command) {
      case 'CLOSED':
        print('Executing CLOSED command');
      case 'PENDING':
        print('Executing PEDDING command');
      case 'APPROVED':
        print('Executing APPROVED command');
      case 'DENIED':
        print('Executing DENIED command');
      case 'OPEN':
        print('Executing OPEN command');
      default:
        print('Executing DEFAULT command');
    }

    print('Proggram exited');
    // return;
  }
}

















































// abstract class Opsi {
//   String get nama;
//   String? get bantuan;
//   Object? get nilaiDefault;
// }
//
// void executeClosed() {}



// final reg = RegExp(r'^\s+|\s+$');
//   print(reg.hasMatch('   Hello, Dart!   ')); // true

// final trimmed = '\tDart is fun\n'.trim();
// print(trimmed); // 'Dart is fun'

  // final time = Duration(hours: 1, minutes: 32, seconds: 57);
  // final hours = time.inHours;
  // final minutes = time.inMinutes % 60;
  // final seconds = time.inSeconds % 60;
  // final timeString = '$hours:$minutes:$seconds';
  // print(timeString); // 1:32:57

// final userInput = '   Hello, Dart!   '.trim();
// print(userInput); // 'Hello, Dart!'

//   const fastestMarathon = Duration(hours: 2, minutes: 0, seconds: 35);
//   print(fastestMarathon.inDays); // 0
//   print(fastestMarathon.inHours); // 2
//   print(fastestMarathon.inMinutes); // 120
//   print(fastestMarathon.inSeconds); // 7235
//   print(fastestMarathon.inMilliseconds); // 7235000

// Abi abi = Abi.current();
//   print('Current ABI: $abi');
//
//   linux() {
//     if (abi == Abi.linuxX64) {
//       print('Running on Linux x64');
//     } else if (abi == Abi.linuxArm64) {
//       print('Running on Linux ARM64');
//     } else {
//       print('Running on an unsupported Linux architecture');
//     }
//   }
//
//   linux();

/// const prhrase = 'run option flag';
// final whitflag = prhrase.replaceAll(' ', '  --');
// print(whitflag); // 'run  --option  --flag'
