import 'package:flutter/material.dart';

class BorderWidget extends StatelessWidget {
  const BorderWidget({super.key});

  @override Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Coba coding"),
      ),
      body: Container(
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.black,
            width: 1,
          ),
        ),
        child: const Text("Baris 1, Kolom 1"),
      ),
    );
  }
}
