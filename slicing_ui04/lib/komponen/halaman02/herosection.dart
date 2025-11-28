import 'package:flutter/material.dart';

class Herosection2 extends StatelessWidget {
  const Herosection2({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.only(left: 20, top: 20, right: 20, bottom: 10),
      // decoration: const BoxDecoration(color: Colors.blue),
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 240, 240, 240),
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(color: Colors.grey, blurRadius: 3, offset: Offset(1, 2)),
          ],
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 15),

            //ini Row bagian atas ya
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Menuhs(text: "15 Voucers", text1: "pakai yuk!"),
                  SizedBox(height: 40, child: VerticalDivider()),
                  Menuhs(text: "Voucer Plus", text1: "langganan"),
                ],
              ),
            ),

            const SizedBox(height: 15),
            const Divider(height: 15),

            //ini row bagian bawah ya
            Padding(
              padding: EdgeInsets.all(5),
              child: SizedBox(
                height: 40,
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50),
                    ),
                    hintText: "Masukkan kode voucer",
                    hintStyle: TextStyle(color: Colors.grey),
                    prefixIcon: Icon(Icons.discount_rounded, size: 18),
                    suffixIcon: Icon(Icons.arrow_forward_ios),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Menuhs extends StatelessWidget {
  final String text;
  final String text1;
  const Menuhs({super.key, required this.text, required this.text1});

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 5,
      children: [
        Container(
          padding: EdgeInsets.all(8),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.blue.withOpacity(0.4),
          ),
          child: Icon(Icons.discount_rounded, size: 16),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              text,
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
            ),
            Text(text1, style: TextStyle(fontSize: 10)),
          ],
        ),
      ],
    );
  }
}
