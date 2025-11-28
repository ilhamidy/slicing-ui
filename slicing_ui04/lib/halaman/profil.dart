import 'package:flutter/material.dart';
import 'package:slicing_ui04/komponen/halaman03/menuprofile.dart';
import 'package:slicing_ui04/komponen/halaman03/profileheader.dart';

class Profil extends StatelessWidget {
  final String nama;
  const Profil({super.key, required this.nama});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Profileheader(nama: nama),

          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            child: Text(
              "Account",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
          ),

          Menuprofile(),
        ],
      ),
    );
  }
}
