import 'package:flutter/material.dart';
import 'package:slicing_ui04/login.dart';

class Profileheader extends StatelessWidget {
  final String nama;
  const Profileheader({super.key, required this.nama});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //tombol arrow profile
          Row(
            children: [
              IconButton(onPressed: () {}, icon: Icon(Icons.arrow_back)),
              Text(
                "My Profile",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
            ],
          ),

          //bagian profilenya
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            spacing: 20,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 15, top: 10),
                child: Container(
                  // padding: EdgeInsets.all(10),
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    color: Colors.amberAccent,
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: AssetImage("assets/burger.png"),
                      // fit: BoxFit.cover,
                      scale: 15,
                    ),
                  ),
                ),
              ),

              //tulisannya lo ya
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    nama,
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  Text("fulan@gmail.com", style: TextStyle(fontSize: 12)),
                  Text("+62857 8976 9821", style: TextStyle(fontSize: 12)),
                  SizedBox(height: 10),
                  Container(
                    height: 30,
                    // width: 70,
                    padding: EdgeInsets.symmetric(vertical: 3, horizontal: 5),
                    decoration: BoxDecoration(
                      color: Colors.purpleAccent.withOpacity(0.4),
                      borderRadius: BorderRadius.circular(30),
                      border: Border.all(
                        color: const Color.fromARGB(255, 202, 202, 202),
                        width: 3,
                      ),
                    ),
                    child: Row(
                      children: [
                        Icon(
                          Icons.star,
                          color: Colors.orange.shade600,
                          size: 18,
                        ),
                        Text("super", style: TextStyle(fontSize: 12)),
                      ],
                    ),
                  ),
                ],
              ),

              //logo pojok
              Spacer(),
              Icon(Icons.edit),
            ],
          ),

          //untuk info rangkin pelanggan
        ],
      ),
    );
  }
}
