import 'dart:io';

const version = '0.0.1';

void searchWikipedia(List<String>? arguments) {
  final String articleTitle;

  // If the user didn't pass in arguments, request an article title.
  if (arguments == null || arguments.isEmpty) {
    print('Please provide an article title.');
    // Await input and provide a default empty string if the input is null.
    articleTitle = stdin.readLineSync() ?? '';
  } else {
    // Otherwise, join the arguments into the CLI into a single string
    articleTitle = arguments.join(' ');
  }

  print('Looking up articles about "$articleTitle". Please wait.');
  print('Here ya go!');
  print('(Pretend this is an article about "$articleTitle")');
}

void printUsage() =>
    print('The following commands are valid: "help", "searc<ARTICLE-TITLE>" ');

void printNothing(List<String> arguments) => print(
  'You arguments are $arguments \n\nArguments not found, please use "help"'
  ' command to see the usage of this CLI\n\nThanks for using Dartpedia CLI',
);

void pemisah() => print('\n' * 3);
