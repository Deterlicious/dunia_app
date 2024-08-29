import 'package:flutter/material.dart';
import 'country_list_screen.dart'; // Pastikan path-nya sesuai dengan lokasi file

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Countries App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:
          const CountriesListScreen(), // Layar utama yang menampilkan daftar negara
    );
  }
}
