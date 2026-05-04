import 'package:flutter/material.dart';
// import './halaman_pertama.dart';
import './mahasiswa_form.dart';
// import './parsing.dart';
// import './Widget/card_widget.dart';
// import './border.dart';
// import './coloumn_widget.dart';
// import './hello_world.dart';
// import './contoh.stateless.dart';
// import './contoh.stateful.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Latihan Code',
      home: 
      // Parsing(),
      // HalamanPertama(),
      MahasiswaForm(),
      // ContohStateless(),
      // ContohStateful(),
    );
  }
}
