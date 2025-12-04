import 'package:flutter/material.dart';
import 'package:slicing_ui05/decoration/set.dart';
import 'package:slicing_ui05/komponen/appbar.dart';
import 'package:slicing_ui05/komponen/flashshale.dart';
import 'package:slicing_ui05/komponen/iklanbanner.dart';
import 'package:slicing_ui05/komponen/menuapps.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ClassName.color5,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              //appbar menu
              Appbar(),
              SizedBox(height: 50),
              //ini bagian iklan banner
              Iklanbanner(),
              SizedBox(height: 10),
              //ini bagian menu aplikasi
              Menuapps(),
              SizedBox(height: 10),
              //ini bagian flashsale
              Flashsale(),
            ],
          ),
        ),
      ),
    );
  }
}
