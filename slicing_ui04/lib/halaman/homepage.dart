import 'package:flutter/material.dart';
import 'package:slicing_ui04/komponen/halaman01/bannerpromo1.dart';
import 'package:slicing_ui04/komponen/halaman01/bannerpromo2.dart';
import 'package:slicing_ui04/komponen/halaman01/bannerpromo3.dart';
import 'package:slicing_ui04/komponen/halaman01/bannerpromobawah.dart';
import 'package:slicing_ui04/komponen/halaman01/herosection.dart';
import 'package:slicing_ui04/komponen/halaman01/menunav.dart';
import 'package:slicing_ui04/komponen/halaman01/menusection.dart';

class Homepage extends StatelessWidget {
  final String nama;
  const Homepage({super.key, required this.nama});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Menunav(nama: nama)),
      body: SingleChildScrollView(
        child: Column(
          children: [
            //beberapa sudah dibagi code nya, di pisah ya code nya, oke!
            HeroSection(),

            Menusection(),

            Bannerpromo1(),

            Bannerpromo2(),

            Bannerpromo3(),

            Bannerpromobawah(banner: "assets/banners/banner-10.png"),
            Bannerpromobawah(banner: "assets/banners/banner-11.png"),
            Bannerpromobawah(banner: "assets/banners/banner-12.png"),
          ],
        ),
      ),
    );
  }
}
