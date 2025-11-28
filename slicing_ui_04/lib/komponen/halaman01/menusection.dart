import 'package:flutter/material.dart';

class Menusection extends StatelessWidget {
  const Menusection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 20),
      child: Column(
        children: [
          //row yang pertama ya
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Smenu(
                icon: Icon(Icons.share, size: 28, color: Colors.grey),
                text: "Transfer",
              ),
              Smenu(
                icon: Icon(Icons.home, size: 28, color: Colors.grey),
                text: "Transfer",
              ),
              Smenu(
                icon: Icon(Icons.home, size: 28, color: Colors.grey),
                text: "Transfer",
              ),
              Smenu(
                icon: Icon(Icons.home, size: 28, color: Colors.grey),
                text: "Transfer",
              ),
            ],
          ),
          SizedBox(height: 20),
          //ini row yang kedua
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Smenu(
                icon: Icon(Icons.home, size: 28, color: Colors.grey),
                text: "Transfer",
              ),
              Smenu(
                icon: Icon(Icons.home, size: 28, color: Colors.grey),
                text: "Transfer",
              ),
              Smenu(
                icon: Icon(Icons.home, size: 28, color: Colors.grey),
                text: "Transfer",
              ),
              Smenu(
                icon: Icon(Icons.home, size: 28, color: Colors.grey),
                text: "Transfer",
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class Smenu extends StatelessWidget {
  final Widget icon;
  final String text;
  const Smenu({super.key, required this.icon, required this.text});

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 10,
      children: [
        Container(
          height: 50,
          width: 50,
          decoration: BoxDecoration(
            color: Colors.blue.withOpacity(0.3),
            shape: BoxShape.circle,
          ),
          child: icon,
        ),
        Text(text, style: TextStyle(fontSize: 12)),
      ],
    );
  }
}
