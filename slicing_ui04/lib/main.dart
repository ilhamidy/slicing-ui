import 'package:flutter/material.dart';
// import 'package:slicing_ui04/latihan/latihan01.dart';
// import 'package:slicing_ui04/halaman/homepage.dart';
// import 'package:slicing_ui04/halaman/profil.dart';
// import 'package:slicing_ui04/halaman/promo.dart';
// import 'package:slicing_ui04/login.dart';
// import 'global_nav.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(height: 300, width: 300, color: Colors.amberAccent),
      ),
    );
  }
}
