import 'package:flutter/material.dart';
import 'package:slicing_ui_03/komponen/kartukai.dart';
// import 'package:lucide_icons_flutter/lucide_icons.dart';
// import 'package:lucide_icons_flutter/test_icons.dart';
import 'package:slicing_ui_03/komponen/menuatas.dart';
import 'package:slicing_ui_03/komponen/mnkereta.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              clipBehavior: Clip.none,
              children: [
                Container(
                  height: 200,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.black,
                    image: DecorationImage(
                      image: AssetImage("assets/aminasi-stasiun.jpg"),
                      fit: BoxFit.cover,
                      opacity: 0.5,
                    ),
                  ),
                  child: Menuatas(),
                ),
                Kartukai(),
              ],
            ),
            SizedBox(height: 80),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  spacing: 15,
                  children: [
                    Mnkereta(
                      icon: Icon(Icons.train_outlined, size: 35),
                      text: "Lokal",
                    ),
                    Mnkereta(
                      icon: Icon(Icons.train_outlined, size: 35),
                      text: "Lokal",
                    ),
                    Mnkereta(
                      icon: Icon(Icons.train_outlined, size: 35),
                      text: "Lokal",
                    ),
                    Mnkereta(
                      icon: Icon(Icons.train_outlined, size: 35),
                      text: "Lokal",
                    ),
                    Mnkereta(
                      icon: Icon(Icons.train_outlined, size: 35),
                      text: "Lokal",
                    ),
                    Mnkereta(
                      icon: Icon(Icons.train_outlined, size: 35),
                      text: "Lokal",
                    ),
                    Mnkereta(
                      icon: Icon(Icons.train_outlined, size: 35),
                      text: "Lokal",
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
