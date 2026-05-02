// cemmeopium
// import 'data/data.dart';
import 'package:command_runner/command_runner.dart';
import 'dart:io';
import 'package:http/http.dart' as http;

void main(List<String> arguments) async {
  // main is now async and awaits the runner
  var runner = CommandRunner(); // Create an instance of your new CommandRunner
  await runner.run(arguments); // Call its run method, awaiting its Future<void>
}

Future<String> getWikipediaArticle(String articleTitle) async {
  final url = Uri.https(
    'en.wikipedia.org',
    '/api/rest_v1/page/summary/$articleTitle',
  );
  final response = await http.get(url); // Make the HTTP request

  if (response.statusCode == 200) {
    return response.body; // Return the response body if successful
  }

  // Return an error message if the request failed
  return 'Error: Failed to fetch article "$articleTitle". Status code: ${response.statusCode}';
}

void searchWikipedia(List<String>? arguments) async {
  // Added 'async'
  final String articleTitle;

  // If the user didn't pass in arguments, request an article title.
  if (arguments == null || arguments.isEmpty) {
    print('Please provide an article title.');
    final inputFromStdin = stdin.readLineSync();
    if (inputFromStdin == null || inputFromStdin.isEmpty) {
      print('No article title provided. Exiting.\nNothing to do, goodbye!');
      return;
    }
    articleTitle = inputFromStdin;
    // You'll add error handling for null input here in a moment
  } else {
    // Otherwise, join the arguments into the CLI into a single string
    articleTitle = arguments.join(' ');
  }

  print('Looking up articles about "$articleTitle". Please wait.');
  // Call the API and await the result
  var articleContent = await getWikipediaArticle(articleTitle);
  print(articleContent); // Print the full article response (raw JSON for now)
}

// Jika sudah berhasil memahami bagaimana cara kerja CLI ini,
// cobalah untuk membuat CLI yang dapat menampilkan daftar proyek opensource yang sedang trending di GitHub,
// lalu buatlah perintah untuk menampilkan detail dari proyek tersebut,
// seperti jumlah bintang, jumlah fork, dan bahasa pemrograman yang digunakan.

// void main(List<String> arguments) {
//   if (arguments.isEmpty || arguments.first == 'help') {
//     printUsage();
//   } else if (arguments.first == 'version') {
//     print('Dartpedia CLI version $version');
//   } else if (arguments.first == 'wikipedia') {
//     final inputArgs = arguments.length > 1 ? arguments.sublist(1) : null;
//     searchWikipedia(inputArgs);
//   } else {
//     printUsage();
//     printNothing(arguments);
//   }
// }
