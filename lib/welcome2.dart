import 'package:flutter/material.dart';
import 'package:tesgit/home_screen.dart';
import 'package:tesgit/welcome3.dart';

class WelcomeScreen2 extends StatelessWidget {
  const WelcomeScreen2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Container(
          padding: const EdgeInsets.fromLTRB(28, 237, 26, 64), // Ubah nilai atas agar gambar lebih tinggi
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
                margin: const EdgeInsets.fromLTRB(10, 0, 0, 10), // Sesuaikan margin
                width: 350, // Sesuaikan lebar gambar
                height: 350, // Sesuaikan tinggi gambar
                child: Image.asset("images/phone.png"),
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(7, 0, 0, 16),
                child: const Text(
                  'Select the Favorites Menu',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w600,
                    height: 1.5,
                    color: Color(0xffffffff),
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(5, 0, 0, 50), // Sesuaikan jarak dari bawah
                constraints: const BoxConstraints(
                  maxWidth: 283,
                ),
                child: const Text(
                  'Now eat well, don\'t leave the house, You can \nchoose your favorite food only with one click',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    height: 1.2125,
                    color: Color(0xffefe3c8),
                  ),
                ),
              ),
              const SizedBox(height: 15),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                        fontSize: 20, // Sesuaikan ukuran font
                        fontWeight: FontWeight.w400,
                        height: 1.2125,
                        color: Color(0xffefe3c8),
                      ),
                    ),
                  ),
                  Container(
                    width: 60,
                    height: 60,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.transparent,
                    ),
                    child: Center(
                      child: Image.asset('images/circle2.png'),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.of(context).pushReplacement(
                        MaterialPageRoute(builder: (context) => const WelcomeScreen3()),
                      );
                    },
                    child: Container(
                      width: 40,
                      height: 40,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.transparent,
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
            ],
          ),
        ),
      ),
    );
  }
}
