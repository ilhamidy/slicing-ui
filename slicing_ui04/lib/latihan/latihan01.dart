import 'package:flutter/material.dart';

class Latihan01 extends StatelessWidget {
  const Latihan01({super.key});

  @override
  Widget build(BuildContext context) {
    // double width = MediaQuery.of(context).size.width;
    // double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
        height: 300,
        // width: double.infinity,
        width: 300,
        color: Colors.amberAccent,
        child: Text("data"),
      ),
    );
  }
}
