import 'package:flutter/material.dart';
import 'package:slicing_ui05/decoration/set.dart';
import 'package:slicing_ui05/komponen/appbar.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ClassName.color3,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              //appbar menu
              Appbar(),
            ],
          ),
        ),
      ),
    );
  }
}
