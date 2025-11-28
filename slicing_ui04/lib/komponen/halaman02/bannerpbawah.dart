import 'package:flutter/material.dart';

class Bannerpbawah extends StatelessWidget {
  final String banner;
  const Bannerpbawah({super.key, required this.banner});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15, right: 15, bottom: 20),
      child: Container(
        height: 170,
        width: double.infinity,
        decoration: BoxDecoration(
          // color: Colors.amberAccent,
          borderRadius: BorderRadius.circular(25),
          image: DecorationImage(image: AssetImage(banner), fit: BoxFit.cover),
          boxShadow: [
            BoxShadow(color: Colors.grey, blurRadius: 3, offset: Offset(1, 2)),
          ],
        ),
      ),
    );
  }
}
