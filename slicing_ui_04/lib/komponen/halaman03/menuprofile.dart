import 'package:flutter/material.dart';
import 'package:slicing_ui04/login.dart';

class Menuprofile extends StatelessWidget {
  const Menuprofile({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          //list menu profile nya ya!
          Mplist(
            icon1: Icon(Icons.book_online_rounded),
            icon2: Icon(Icons.arrow_forward_ios),
            text: "My Orders",
          ),
          Mplist(
            icon1: Icon(Icons.menu_book_rounded),
            icon2: Icon(Icons.arrow_forward_ios),
            text: "Subscription",
          ),
          Mplist(
            icon1: Icon(Icons.discount_sharp),
            icon2: Icon(Icons.arrow_forward_ios),
            text: "Promo",
          ),
          Mplist(
            icon1: Icon(Icons.payment_rounded),
            icon2: Icon(Icons.arrow_forward_ios),
            text: "Payment",
          ),
          Mplist(
            icon1: Icon(Icons.help),
            icon2: Icon(Icons.arrow_forward_ios),
            text: "Help & Service",
          ),
          Mplist(
            icon1: Icon(Icons.language),
            icon2: Icon(Icons.arrow_forward_ios),
            text: "Language",
          ),
          GestureDetector(
            child: Mplist(
              icon1: Icon(Icons.logout),
              icon2: Icon(Icons.arrow_forward_ios),
              text: "Logout",
            ),
            onTap: () {
              Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(builder: (context) => Login1()),
                (Route<dynamic> route) => route.isFirst,
              );
            },
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(builder: (context) => Login1()),
                (Route<dynamic> route) => route.isFirst,
              );
            },
            child: Text("logout"),
          ),
        ],
      ),
    );
  }
}

class Mplist extends StatelessWidget {
  final Icon icon1;
  final Icon icon2;
  final String text;
  const Mplist({
    super.key,
    required this.icon1,
    required this.icon2,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          spacing: 10,
          children: [
            icon1,
            Text(
              text,
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
            ),
            Spacer(),
            icon2,
          ],
        ),
        Divider(),
        SizedBox(height: 10),
      ],
    );
  }
}
