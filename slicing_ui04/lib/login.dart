import 'package:flutter/material.dart';
import 'package:slicing_ui04/halaman/homepage.dart';
import 'package:slicing_ui04/halaman/profil.dart';
import 'package:slicing_ui04/halaman/promo.dart';

class Login1 extends StatefulWidget {
  const Login1({super.key});

  @override
  State<Login1> createState() => _Login1State();
}

class _Login1State extends State<Login1> {
  final username = TextEditingController();
  final password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(controller: username),
            TextField(controller: password),
            ElevatedButton(
              onPressed: () {
                if (username.text == "Wijaya" && password.text == "123") {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => NavigasiBawah(nama1: username.text),
                    ),
                  );
                } else {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text("salah"),
                      backgroundColor: Colors.amberAccent,
                      duration: Duration(seconds: 2),
                    ),
                  );
                }
              },
              child: Text("login"),
            ),
          ],
        ),
      ),
    );
  }
}

class NavigasiBawah extends StatefulWidget {
  final String nama1;
  const NavigasiBawah({super.key, required this.nama1});

  @override
  State<NavigasiBawah> createState() => _NavigasiBawahState();
}

class _NavigasiBawahState extends State<NavigasiBawah> {
  int selectedIndex = 0;

  List<Widget> get pages => [
    Homepage(nama: widget.nama1),
    Promo(),
    Profil(nama: widget.nama1),
  ];

  void onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedIndex,
        onTap: onItemTapped,
        selectedItemColor: Colors.blueAccent,
        unselectedItemColor: Colors.grey,
        showUnselectedLabels: false,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.discount), label: 'Promo'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profil'),
        ],
      ),
    );
  }
}
