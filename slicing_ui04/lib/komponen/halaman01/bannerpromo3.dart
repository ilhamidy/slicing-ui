import 'package:flutter/material.dart';

class Bannerpromo3 extends StatelessWidget {
  const Bannerpromo3({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 20, top: 10, bottom: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Jangan Lewatkan!",
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          Text(
            "Belanja hemat, dapat cashback lagi",
            style: TextStyle(fontSize: 14),
          ),
          SizedBox(height: 10),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Padding(
              padding: const EdgeInsets.all(2),
              child: Row(
                // mainAxisAlignment: MainAxisAlignment.start,
                spacing: 20,
                children: [
                  // BannerInfo(banner: "assets/banners/banner-1.png"),
                  // BannerInfo(banner: "assets/banners/banner-2.png"),
                  // BannerInfo(banner: "assets/banners/banner-3.png"),
                  BannerInfo(banner: "assets/logo/afam.png", text: "35% off"),
                  BannerInfo(banner: "assets/logo/alfam.png", text: "40% off"),
                  BannerInfo(banner: "assets/logo/indom.png", text: "27% off"),
                  BannerInfo(banner: "assets/logo/afam.png", text: "50% off"),
                  BannerInfo(banner: "assets/logo/indom.png", text: "20% off"),
                  SizedBox(width: 10),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

//banner nya di sini codenya
class BannerInfo extends StatelessWidget {
  final String banner;
  final String text;
  const BannerInfo({super.key, required this.banner, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: 150,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        // image: DecorationImage(image: AssetImage(banner), fit: BoxFit.cover),
        boxShadow: [
          BoxShadow(color: Colors.grey, blurRadius: 3, offset: Offset(1, 2)),
        ],
      ),
      child: Stack(
        children: [
          Center(child: Image.asset(banner)),
          Positioned(
            top: 13,
            child: Container(
              height: 35,
              width: 80,
              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                ),
              ),
              child: Center(
                child: Text(
                  text,
                  style: TextStyle(fontSize: 16, color: Colors.white),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
