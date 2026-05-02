const version = '0.0.1';

void printUsage() =>
    print('The following commands are valid: "help", "searc<ARTICLE-TITLE>" ');

void printNothing(List<String> arguments) => print(
  'You arguments are $arguments \n\nArguments not found, please use "help"'
  ' command to see the usage of this CLI\n\nThanks for using Dartpedia CLI',
);

void pemisah() => print('\n' * 3);
