import 'package:tesgit/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:tesgit/welcome2.dart'; // Import your WelcomeScreen2

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(), // Menggunakan BouncingScrollPhysics
        child: Container(
          padding: const EdgeInsets.fromLTRB(28, 345, 26, 44),
          width: double.infinity,
          decoration: const BoxDecoration(
            color: Color(0xff201520),
            boxShadow: [
              BoxShadow(
                color: Color(0x02374151),
                offset: Offset(6, 7),
                blurRadius: 24,
              ),
            ],
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                margin: const EdgeInsets.fromLTRB(10, 0, 0, 50),
                width: 298.5,
                height: 177.76,
                child: Image.asset("images/maps.png"),
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(7, 0, 0, 16),
                child: const Text(
                  'Nearby Restaurants',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w600,
                    height: 1.5,
                    color: Color(0xffffffff),
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(5, 0, 0, 90),
                constraints: const BoxConstraints(
                  maxWidth: 283,
                ),
                child: const Text(
                  'You don\'t have to go far to find a good restaurant,\nwe have provided all the restaurants\nthat are near you',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    height: 1.2125,
                    color: Color(0xffefe3c8),
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.fromLTRB(16, 2, 16, 2), // Ubah margin dan padding sesuai kebutuhan
                width: double.infinity,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween, // Mengatur teks "Skip" di ujung kiri dan panah di ujung kanan
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).pushReplacement(
                          MaterialPageRoute(builder: (context) => const HomeScreen()),
                        );
                      },
                      child: const Text(
                        'Skip',
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          height: 1.2125,
                          color: Color(0xffefe3c8),
                        ),
                      ),
                    ),
                    Container(
                      width: 60, // Lebar gambar lingkaran
                      height: 60, // Tinggi gambar lingkaran
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.transparent, // Ubah warna sesuai kebutuhan
                      ),
                      child: Center(
                        child: Image.asset('images/circle.png'),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.of(context).pushReplacement(
                          MaterialPageRoute(builder: (context) =>  WelcomeScreen2()),
                        );
                      },
                      child: Container(
                        width: 40, // Lebar panah
                        height: 40, // Tinggi panah
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.transparent, // Ubah warna sesuai kebutuhan
                        ),
                        child: const Center(
                          child: Icon(
                            Icons.arrow_forward,
                            color: Color(0xffefe3c8),
                            size: 26,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
