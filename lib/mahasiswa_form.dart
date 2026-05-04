import 'package:flutter/material.dart';
import './mahasiswa.detail.dart';

class MahasiswaForm extends StatefulWidget {
  const MahasiswaForm({super.key});

  @override
  State<MahasiswaForm> createState() => _MahasiswaFormState();
}

class _MahasiswaFormState extends State<MahasiswaForm> {
  final _formKey = GlobalKey<FormState>();

  final _nimCtrl = TextEditingController();
  final _namaCtrl = TextEditingController();
  final _alamatCtrl = TextEditingController();

  @override
  void dispose() {
    _nimCtrl.dispose();
    _namaCtrl.dispose();
    _alamatCtrl.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Tambah Mahasiswa")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              _nimField(),
              const SizedBox(height: 10),
              _namaField(),
              const SizedBox(height: 10),
              _alamatField(),
              const SizedBox(height: 20),
              _tombolSimpan(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _nimField() {
    return TextFormField(
      controller: _nimCtrl,
      decoration: const InputDecoration(labelText: "NIM"),
    );
  }

  Widget _namaField() {
    return TextFormField(
      controller: _namaCtrl,
      decoration: const InputDecoration(labelText: "Nama"),
    );
  }

  Widget _alamatField() {
    return TextFormField(
      controller: _alamatCtrl,
      decoration: const InputDecoration(labelText: "Alamat"),
    );
  }

  Widget _tombolSimpan() {
    return ElevatedButton(
      onPressed: () {
        if (_formKey.currentState!.validate()) {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => MahasiswaDetail(
                nim: _nimCtrl.text,
                nama: _namaCtrl.text,
                alamat: _alamatCtrl.text,
              ),
            ),
          );
        }
      },
      child: const Text("Simpan"),
    );
  }
}
