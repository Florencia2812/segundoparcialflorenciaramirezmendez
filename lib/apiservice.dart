import 'dart:convert';
import 'package:segundoparcialflorenciaramirezmendez/lucky.dart';
import 'package:http/http.dart' as http;

class ApiService {
  Future<Lucky> fetchAlbum() async {
    final response =
        await http.get('https://allugofrases.herokuapp.com/frases/random');

    if (response.statusCode == 200) {
      // If the server did return a 200 OK response,
      // then parse the JSON.
      return Lucky.fromJson(jsonDecode(response.body));
    } else {
      // If the server did not return a 200 OK response,
      // then throw an exception.
      throw Exception('Failed to load album');
    }
  }
}
