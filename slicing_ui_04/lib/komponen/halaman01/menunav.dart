import 'package:flutter/material.dart';

class Menunav extends StatelessWidget {
  final String nama;
  const Menunav({super.key, required this.nama});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 40,
          width: 40,
          decoration: BoxDecoration(
            color: Colors.blueGrey,
            shape: BoxShape.circle,
            image: DecorationImage(
              image: AssetImage("assets/burger.png"),
              // fit: BoxFit.fill,
              scale: 20,
            ),
          ),
        ),
        SizedBox(width: 3),
        Text(nama),
        Spacer(),
        //ini tu menu yang kanan!!!
        Row(
          spacing: 20,
          children: [
            Container(
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                color: Colors.blue.withOpacity(0.3),
                shape: BoxShape.circle,
              ),
              child: Icon(Icons.shopping_bag, color: Colors.grey, size: 20),
            ),
            Container(
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                color: Colors.blue.withOpacity(0.3),
                shape: BoxShape.circle,
              ),
              child: Icon(
                Icons.notification_important,
                color: Colors.grey,
                size: 20,
              ),
            ),
            Container(
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                color: Colors.blue.withOpacity(0.3),
                shape: BoxShape.circle,
              ),
              child: Icon(Icons.settings, color: Colors.grey, size: 20),
            ),
          ],
        ),
      ],
    );
  }
}
