import 'package:flutter/material.dart';

class Menuapp extends StatelessWidget {
  final String logo;
  final String title;
  const Menuapp({super.key, required this.logo, required this.title});

  @override
  Widget build(BuildContext context) {
    // return Container(
    //   height: 60,
    //   width: 60,
    //   decoration: BoxDecoration(
    //     color: Colors.pinkAccent,
    //     borderRadius: BorderRadius.circular(10),
    //   ),
    // );
    return Column(
      spacing: 5,
      children: [
        Stack(
          clipBehavior: Clip.none,
          children: [
            Container(
              height: 60,
              width: 60,
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 193, 253, 195),
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            Positioned(
              bottom: -8,
              right: -8,
              child: SizedBox(
                width: 50,
                height: 50,
                child: Image.asset(logo, fit: BoxFit.cover),
              ),
            ),
          ],
        ),
        Text(title, style: TextStyle(fontSize: 15)),
      ],
    );
  }
}
