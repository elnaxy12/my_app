import 'package:flutter/material.dart';
import './Widget/card_widget.dart';

class Parsing extends StatelessWidget {
  const Parsing({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Parsing')),
      body: Column(
        children: [
          CardWidget(judul: "Universitas Bina Sarana Informatika", icon: Icons.account_balance),
          CardWidget(judul: "Pengenalan Flutter", icon: Icons.add_location),
          CardWidget(judul: "Mobile Programming", icon: Icons.android)
        ],
      ),
    );
  }
}
