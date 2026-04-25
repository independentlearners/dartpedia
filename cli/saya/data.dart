import 'dart:io';

class Data {
  String id;
  String name;
  String description;

  Data(this.id, this.name, this.description) {
    print('Input ID:');
    id = stdin.readLineSync() ?? '';
    print('Input Name:');
    name = stdin.readLineSync() ?? '';
    print('Input Description:');
    description = stdin.readLineSync() ?? '';
    print('-' * 20 + '\n');
  }
}

void data() {
  final date = Data('', '', '');
  print(
    'Data received: Id :${date.id},\n'
    'Name :${date.name},\n'
    'Description :${date.description}',
  );
}
