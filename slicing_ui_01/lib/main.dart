import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:slicing_ui1/halaman/page_01.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: AnimatedSplashScreen(
        splash: Center(
          child: SizedBox(
            height: 150,
            width: 150,
            child: Lottie.asset('Riding.json'),
          ),
        ),
        duration: 3000,
        backgroundColor: const Color.fromARGB(255, 255, 183, 207),
        splashIconSize: 200,
        nextScreen: Page01(),
      ),
    );
  }
}

class GoMenuPage extends StatelessWidget {
  const GoMenuPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: const [
              GoMenuItem(
                label: "GoRide",
                image: "assets/goride.png",
                promo: "GAJIAN",
                bgColor: Color(0xFFD8FDD8),
              ),
              GoMenuItem(
                label: "GoCar",
                image: "assets/gocar.png",
                promo: "6RB!",
                bgColor: Color(0xFFD8FDD8),
              ),
              GoMenuItem(
                label: "GoFood",
                image: "assets/gofood.png",
                promo: "-50%",
                bgColor: Color(0xFFFDD8D8),
              ),
              GoMenuItem(
                label: "GoSend",
                image: "assets/gosend.png",
                promo: "5RB!",
                bgColor: Color(0xFFD8FDD8),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class GoMenuItem extends StatelessWidget {
  final String label;
  final String image;
  final String promo;
  final Color bgColor;

  const GoMenuItem({
    super.key,
    required this.label,
    required this.image,
    required this.promo,
    required this.bgColor,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          clipBehavior: Clip.none,
          children: [
            // 🔹 Background + Icon
            Container(
              width: 70,
              height: 70,
              decoration: BoxDecoration(
                color: bgColor,
                borderRadius: BorderRadius.circular(16),
              ),
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Image.asset(image, fit: BoxFit.contain),
              ),
            ),
            // 🔸 Label promo di atas kiri
            Positioned(
              top: -8,
              left: -8,
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(6),
                ),
                child: Text(
                  promo,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 10,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
        const SizedBox(height: 6),
        // 🔹 Label teks di bawah icon
        Text(
          label,
          style: const TextStyle(
            fontSize: 13,
            fontWeight: FontWeight.w500,
            color: Colors.black87,
          ),
        ),
      ],
    );
  }
}
