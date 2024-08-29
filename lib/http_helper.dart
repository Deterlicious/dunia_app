import 'dart:convert';
import 'package:http/http.dart' as http;
import 'Country.dart';

Future<List<Country>> fetchCountries() async {
  final response = await http.get(Uri.parse('https://restcountries.com/v3.1/all'));

  if (response.statusCode == 200) {
    List<dynamic> countriesJson = json.decode(response.body);
    return countriesJson.map((json) => Country.fromJson(json)).toList();
  } else {
    throw Exception('Failed to load countries');
  }
}