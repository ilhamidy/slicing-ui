import 'package:flutter/material.dart';

class Banner4 extends StatelessWidget {
  const Banner4({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 20, top: 5, bottom: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Promo Transportasi",
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 10),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              spacing: 10,
              children: [
                BannerInfo(banner: "assets/banners/banner-1.png"),
                BannerInfo(banner: "assets/banners/banner-2.png"),
                BannerInfo(banner: "assets/banners/banner-3.png"),
                SizedBox(width: 10),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

//code untuk banner nya ya
class BannerInfo extends StatelessWidget {
  final String banner;
  const BannerInfo({super.key, required this.banner});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2),
      child: Container(
        height: 120,
        width: 300,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          image: DecorationImage(image: AssetImage(banner), fit: BoxFit.cover),
          boxShadow: [
            BoxShadow(color: Colors.grey, blurRadius: 3, offset: Offset(1, 2)),
          ],
        ),
      ),
    );
  }
}
