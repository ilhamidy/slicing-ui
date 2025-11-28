import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:slicing_ui05/decoration/set.dart';

class Appbar extends StatelessWidget {
  const Appbar({super.key});

  @override
  Widget build(BuildContext context) {
    final double tinggi = MediaQuery.of(context).size.height;
    final double lebar = MediaQuery.of(context).size.width;
    return Container(
      width: lebar,
      height: tinggi * 0.4,
      padding: EdgeInsets.all(15),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: AlignmentGeometry.topCenter,
          end: AlignmentGeometry.bottomCenter,
          colors: [ClassName.color1, ClassName.color5],
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Alamat Kirim", style: ClassName.style6),
          Row(
            children: [
              Text("Pondok", style: ClassName.style1),
              SizedBox(width: 5),
              Container(
                padding: EdgeInsets.symmetric(vertical: 3, horizontal: 5),
                decoration: BoxDecoration(
                  color: ClassName.color5,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(
                  child: Text(
                    "utama",
                    style: GoogleFonts.openSans(
                      fontSize: 8,
                      color: ClassName.color1,
                    ),
                  ),
                ),
              ),
              IconButton(onPressed: () {}, icon: Icon(Icons.arrow_drop_down)),
              Spacer(),
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.chat_bubble,
                  color: ClassName.color5,
                  size: 20,
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.notifications,
                  color: ClassName.color5,
                  size: 20,
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.shopping_bag,
                  color: ClassName.color5,
                  size: 20,
                ),
              ),
            ],
          ),
          Text(
            "Perumahan Eco Village, Serpong Mekar Sa..",
            style: ClassName.style5,
          ),
        ],
      ),
    );
  }
}
