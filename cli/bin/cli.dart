import 'data/data.dart';
import 'package:http/http.dart' as http;

void main(List<String> arguments) {
  if (arguments.isEmpty || arguments.first == 'help') {
    printUsage();

    Future<String> getWikipediaArticle(String articleTitle) async {
      final url = Uri.https(
        'en.wikipedia.org', // Wikipedia API domain
        '/api/rest_v1/page/summary/$articleTitle', // API path for article summary
      );
      // ...
    }
  } else if (arguments.first == 'version') {
    print('Dartpedia CLI version $version');
  } else if (arguments.first == 'search') {
    final inputArgs = arguments.length > 1 ? arguments.sublist(1) : null;
    searchWikipedia(inputArgs);
  } else {
    printNothing(arguments);
  }
}

//
//
//
//
//
//
//
//
//
// Jika sudah berhasil memahami bagaimana cara kerja CLI ini,
// cobalah untuk membuat CLI yang dapat menampilkan daftar proyek opensource yang sedang trending di GitHub,
// lalu buatlah perintah untuk menampilkan detail dari proyek tersebut,
// seperti jumlah bintang, jumlah fork, dan bahasa pemrograman yang digunakan.
