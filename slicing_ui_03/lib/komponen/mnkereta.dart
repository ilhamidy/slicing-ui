import 'package:flutter/material.dart';

class Mnkereta extends StatelessWidget {
  final String text;
  final Widget icon;
  const Mnkereta({super.key, required this.icon, required this.text});

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 10,
      children: [
        Container(
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.purpleAccent,
          ),
          child: icon,
        ),
        Text(text, style: TextStyle(fontSize: 15)),
      ],
    );
  }
}
