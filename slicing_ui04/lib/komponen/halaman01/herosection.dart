import 'package:flutter/material.dart';

class HeroSection extends StatelessWidget {
  const HeroSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(20),
      decoration: const BoxDecoration(color: Colors.blue),
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(25),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 15),

            //ini Row bagian atas ya
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                Menu1(icon: "assets/burger.png", text: "Makanan"),
                Menu1(icon: "assets/orange-juice.png", text: "Minuman"),
                Menu1(icon: "assets/fast food.png", text: "Fast Food"),
                Menu1(icon: "assets/store.png", text: "Restoran"),
                Menu1(icon: "assets/vegetables.png", text: "Buah & Sayur"),
              ],
            ),

            const SizedBox(height: 15),
            const Divider(height: 10),

            //ini row bagian bawah ya
            Padding(
              padding: EdgeInsets.all(5),
              child: Row(
                children: [
                  Row(
                    children: [
                      Image.asset("assets/logo/wallet.png", scale: 18),
                      const SizedBox(width: 10),
                      const Text(
                        "Rp. 5 Milyard",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  const Spacer(),
                  const Text(
                    "0 Coins",
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// ini menu bagian atas Hero Section lo ya
class Menu1 extends StatelessWidget {
  final String icon;
  final String text;
  const Menu1({super.key, required this.icon, required this.text});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(icon, scale: 15),
        const SizedBox(height: 5),
        Text(
          text,
          style: const TextStyle(fontSize: 12),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
