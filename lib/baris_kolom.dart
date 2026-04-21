import 'package:flutter/material.dart';

class RowWidget extends StatelessWidget {
  const RowWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Baris dan Kolom"),
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly, // jarak antar baris
          children: [
            Row(
              mainAxisAlignment:
                  MainAxisAlignment.spaceAround, // jarak antar kolom/
              children: const [
                Text("Baris 1, Kolom 1"),
                Text("Baris 1, Kolom 2"),
                Text("Baris 1, Kolom 3"),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: const [
                Text("Baris 2, Kolom 1"),
                Text("Baris 2, Kolom 2"),
                Text("Baris 2, Kolom 3"),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: const [
                Text("Baris 3, Kolom 1"),
                Text("Baris 3, Kolom 2"),
                Text("Baris 3, Kolom 3"),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
