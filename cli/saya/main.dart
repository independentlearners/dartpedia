// import 'dart:io';
import 'data.dart';
import 'clear.dart';

const version = '1.0.0';

void main(List<String> arguments) {
  data();

  if (arguments.isEmpty || arguments.first == 'help') {
    printUsage();
  } else if (arguments.first == 'version') {
    clear();
    print('Dartpedia CLI version $version');
  } else if (arguments.first == 'search') {
    final inputArgs = arguments.length > 1 ? arguments.sublist(1) : null;
    searcWikipedia(inputArgs);
  } else {
    printNothing(arguments);
  }
}

void searcWikipedia(List<String>? arguments) {
  clear();
  print('searchWikipedia received arguments: $arguments');
}

void printUsage() {
  clear();
  print('The following commands are valid: "help", "searc<ARTICLE-TITLE>" ');
  Data data = Data('', '', '');
  print(
    'Data received: Id :${data.id},\n'
    'Name :${data.name},\n'
    'Description :${data.description}',
  );
}

void printNothing(List<String> arguments) {
  clear();
  print(
    'You arguments are $arguments \n\nArguments not found, please use "help"'
    ' command to see the usage of this CLI\n\nThanks for using Dartpedia CLI',
  );
}
