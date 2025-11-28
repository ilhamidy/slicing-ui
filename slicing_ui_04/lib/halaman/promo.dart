import 'package:flutter/material.dart';
import 'package:slicing_ui04/komponen/halaman02/banner1.dart';
import 'package:slicing_ui04/komponen/halaman02/banner2.dart';
import 'package:slicing_ui04/komponen/halaman02/banner3.dart';
import 'package:slicing_ui04/komponen/halaman02/banner4.dart';
import 'package:slicing_ui04/komponen/halaman02/bannerinfo.dart';
import 'package:slicing_ui04/komponen/halaman02/bannerpbawah.dart';
import 'package:slicing_ui04/komponen/halaman02/herosection.dart';
import 'package:slicing_ui04/komponen/halaman02/menupromo.dart';

class Promo extends StatelessWidget {
  const Promo({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Herosection2(),

          SizedBox(height: 20),

          Bannerinfo2(),

          Menupromo(),

          Banner1(),

          Banner2(),

          Banner3(),

          Banner4(),

          SizedBox(height: 20),
          Bannerpbawah(banner: "assets/banners/banner-10.png"),
          Bannerpbawah(banner: "assets/banners/banner-11.png"),
          Bannerpbawah(banner: "assets/banners/banner-12.png"),
        ],
      ),
    );
  }
}
