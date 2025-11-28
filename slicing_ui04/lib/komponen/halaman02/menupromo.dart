import 'package:flutter/material.dart';

class Menupromo extends StatelessWidget {
  const Menupromo({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
      child: Wrap(
        // direction: Axis.vertical,
        spacing: 10,
        runSpacing: 10,
        children: [
          Mplist(text: "11.11"),
          Mplist(text: "gajian"),
          Mplist(text: "riding"),
          Mplist(text: "food"),
          Mplist(text: "travel"),
          Mplist(text: "vacation"),
          Mplist(text: "hotel"),
          Mplist(text: "drinks"),
        ],
      ),
    );
  }
}

class Mplist extends StatelessWidget {
  final String text;
  const Mplist({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      // width:
      //     MediaQuery.of(context).size.width /
      //     4.5, // <== kasih lebar proporsional
      width: 70,
      padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 5),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black54),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Center(
        child: Text(
          text,
          style: const TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
        ),
      ),
    );
  }
}
