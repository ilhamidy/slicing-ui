import 'package:flutter/material.dart';

class Banner1 extends StatelessWidget {
  const Banner1({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 20, top: 5, bottom: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Promo hari ini!",
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 10),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              spacing: 10,
              children: [
                BannerInfo(
                  banner: "assets/logo/text1.png",
                  warna: Colors.orange,
                ),
                BannerInfo(
                  banner: "assets/logo/text2.png",
                  warna: Colors.amberAccent,
                ),
                BannerInfo(
                  banner: "assets/logo/text3.png",
                  warna: Colors.blueAccent,
                ),
                BannerInfo(
                  banner: "assets/logo/text4.png",
                  warna: Colors.redAccent,
                ),
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
  final Color warna;
  const BannerInfo({super.key, required this.banner, required this.warna});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 2),
      child: Container(
        height: 90,
        width: 160,
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: warna,
          borderRadius: BorderRadius.circular(20),
          image: DecorationImage(
            image: AssetImage(banner),
            // fit: BoxFit.cover,
            // scale: 20.0,
          ),
          boxShadow: [
            BoxShadow(color: Colors.grey, blurRadius: 3, offset: Offset(1, 2)),
          ],
        ),
      ),
    );
  }
}
