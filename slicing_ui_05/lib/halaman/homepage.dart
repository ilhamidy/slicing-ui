import 'package:flutter/material.dart';
import 'package:slicing_ui05/decoration/set.dart';
import 'package:slicing_ui05/komponen/appbar.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> bannerSlide = [
      "assets/banners/banner-15.png",
      "assets/banners/banner-16.png",
      "assets/banners/banner-17.png",
    ];

    return Scaffold(
      backgroundColor: ClassName.color3,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              //appbar menu
              Appbar(),
              SizedBox(height: 60),
              SizedBox(
                height: 180,
                child: PageView(
                  children: [
                    Container(
                      margin: EdgeInsets.all(15),
                      height: double.infinity,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        image: DecorationImage(
                          image: AssetImage("assets/banners/banner-15.png"),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(15),
                      height: double.infinity,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        image: DecorationImage(
                          image: AssetImage("assets/banners/banner-16.png"),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(15),
                      height: double.infinity,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        image: DecorationImage(
                          image: AssetImage("assets/banners/banner-17.png"),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              //dengan builder
              SizedBox(
                height: 180,
                child: PageView.builder(
                  itemCount: bannerSlide.length,
                  itemBuilder: (context, index) {
                    return Container();
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
