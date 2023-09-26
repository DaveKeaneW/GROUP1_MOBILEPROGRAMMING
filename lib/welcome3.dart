import 'package:flutter/material.dart';
import 'package:tesgit/home_screen.dart';


class WelcomeScreen3 extends StatelessWidget {
  // ignore: use_key_in_widget_constructors
  const WelcomeScreen3({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Container(
          padding: const EdgeInsets.fromLTRB(28, 283, 26, 64), // Samakan dengan padding pada WelcomeScreen2
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
                margin: const EdgeInsets.fromLTRB(0, 0, 1, 16.16), // Sesuaikan margin dengan WelcomeScreen2
                width: 290, // Samakan dengan lebar pada WelcomeScreen2
                height: 297.84, // Samakan dengan tinggi pada WelcomeScreen2
                child: Image.asset("images/food.png"),
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(7, 0, 0, 16),
                child: const Text(
                  'Good food at a cheap price',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w600,
                    height: 1.5,
                    color: Color(0xffffffff),
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(5, 0, 0, 50), // Sesuaikan margin dari bawah dengan WelcomeScreen2
                constraints: const BoxConstraints(
                  maxWidth: 283,
                ),
                child: const Text(
                  'You can eat at expensive restaurants with\naffordable price',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    height: 1.2125,
                    color: Color(0xffffffff),
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
                        fontSize: 18,
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
                      child: Image.asset('images/circle3.png'),
                    ),
                  ),
                  const SizedBox(width: 10),
                  InkWell(
                    onTap: () {
                      Navigator.of(context).pushReplacement(
                        MaterialPageRoute(builder: (context) => const HomeScreen()),
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