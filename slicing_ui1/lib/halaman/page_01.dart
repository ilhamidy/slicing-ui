import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:slicing_ui1/komponen/komponen_ui_1.dart';
import 'package:slicing_ui1/komponen/menuapp.dart';
import 'package:slicing_ui1/komponen/saldoapp.dart';

class Page01 extends StatelessWidget {
  const Page01({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 330,
              width: double.infinity,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: AlignmentDirectional.topCenter,
                  end: AlignmentDirectional.bottomCenter,
                  colors: [
                    Colors.pinkAccent,
                    const Color.fromARGB(255, 250, 152, 185),
                    Colors.white,
                  ],
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(height: 25),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    spacing: 10,
                    children: [
                      SizedBox(
                        width: 350,
                        child: TextField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(50),
                            ),
                            filled: true,
                            fillColor: const Color.fromARGB(255, 230, 229, 229),
                            hintText: 'Mau makan apa hari ini?',
                            hintStyle: GoogleFonts.poppins(color: Colors.grey),
                          ),
                        ),
                      ),
                      CircleAvatar(
                        foregroundImage: AssetImage("assets/fast food.png"),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Menu favorit anda",
                              style: GoogleFonts.poppins(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              "Sendiri atau barengan",
                              style: GoogleFonts.poppins(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 140,
                          width: 140,
                          child: Image.asset('assets/fast food.png'),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        KomponenUi1(
                          logo: 'assets/burger.png',
                          text: 'Promo trus',
                        ),
                        KomponenUi1(logo: 'assets/store.png', text: 'Restoran'),
                        KomponenUi1(
                          logo: 'assets/orange-juice.png',
                          text: 'Minuman',
                        ),
                        KomponenUi1(
                          logo: 'assets/vegetables.png',
                          text: 'Buah & Sayur',
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 35),
            Saldoapp(),
          ],
        ),
      ),
    );
  }
}
