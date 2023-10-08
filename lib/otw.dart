import 'package:flutter/material.dart';
import 'package:tesgit/enjoy.dart';
import 'package:tesgit/home_screen.dart';

void main() {
  runApp(const OnTheWay());
}

class OnTheWay extends StatelessWidget {
  const OnTheWay({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: const Color.fromARGB(255, 18, 32, 47),
      ),
      home: Scaffold(
        body: ListView(children: [
          KanePunya(),
          Image.asset(
            'images/maps.png', // Ganti dengan path gambar Anda
            width: 320, // Sesuaikan dengan lebar yang Anda inginkan
            height: 300, // Sesuaikan dengan tinggi yang Anda inginkan
          ),
        ]),
      ),
    );
  }
}

class KanePunya extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 440,
          height: 843,
          decoration: BoxDecoration(color: Color(0xFF201520)),
          child: Stack(
            children: [
              Image.asset(
                'images/maps.png', // Ganti dengan path gambar Anda
                width: 500, // Sesuaikan dengan lebar yang Anda inginkan
                height: 700, // Sesuaikan dengan tinggi yang Anda inginkan
              ),
              Positioned(
                left: 80,
                top: 547,
                child: Text(
                  'Your Food Is On The Way',
                  style: TextStyle(
                    color: Color(0xFFDBB98A),
                    fontSize: 24,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w700,
                    height: 0.06,
                  ),
                ),
              ),
              Positioned(
                left: 345,
                top: 45,
                child: Container(
                  width: 50,
                  height: 50,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 5,
                        top: 3,
                        child: Container(
                          width: 44,
                          height: 44,
                          child: ClipOval(
                            child: Image.asset(
                              'images/user.png',
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 0,
                top: 139,
                child: Container(
                  width: 500,
                  decoration: ShapeDecoration(
                    shape: RoundedRectangleBorder(
                      side: BorderSide(
                        width: 1,
                        strokeAlign: BorderSide.strokeAlignCenter,
                        color: Color(0xFFFDD7A2),
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 21,
                top: 13,
                child: Container(
                  width: 163,
                  height: 115,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 0,
                        top: 0,
                        child: SizedBox(
                          width: 95.47,
                          height: 58,
                          child: Text(
                            'déjà',
                            style: TextStyle(
                              color: Color(0x7FEFE2C8),
                              fontSize: 40,
                              fontFamily: 'Rosarivo',
                              fontWeight: FontWeight.w400,
                              height: 0,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 24,
                        top: 39,
                        child: SizedBox(
                          width: 139,
                          height: 76,
                          child: Text(
                            'Brew',
                            style: TextStyle(
                              color: Color(0xFFEFE3C8),
                              fontSize: 52,
                              fontFamily: 'Rosarivo',
                              fontWeight: FontWeight.w400,
                              height: 0,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 70,
                top: 687,
                child: SizedBox(
                  width: 283,
                  child: Text(
                    'Est. Delivery Time : 10 Min',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0xFF666C7A),
                      fontSize: 16,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w500,
                      height: 0.08,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 85, //NEXT
                top: 750,
                child: SizedBox(
                  width: 260,
                  height: 35,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => enjoy()),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Color(0xFF2E1E2E), // Background color
                    ),
                    child: Text(
                      'Selesaikan Pesanan ',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontFamily: 'OFL Sorts Mill Goudy TT',
                        fontWeight: FontWeight.w500,
                        height: 0,
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 47,
                top: 213,
                child: Container(
                  width: 280,
                  height: 272.52,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 37.90,
                        top: 162.76,
                        child: Container(
                          width: 165.28,
                          height: 70.97,
                          child: Stack(
                            children: [
                              Positioned(
                                left: 0,
                                top: 0,
                                child: Container(
                                  width: 165.28,
                                  height: 70.97,
                                  child: Stack(
                                    children: [
                                      Positioned(
                                        left: 27.13,
                                        top: -23.19,
                                        child: Container(
                                          width: 74.91,
                                          height: 58.68,
                                          child: Stack(children: []),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        left: 142.71,
                        top: 144.96,
                        child: Container(
                          width: 94.16,
                          height: 104.75,
                          child: Stack(
                            children: [
                              Positioned(
                                left: 0.01,
                                top: 16.52,
                                child: Container(
                                  width: 93.93,
                                  height: 88.16,
                                  child: Stack(
                                    children: [
                                      Positioned(
                                        left: 0,
                                        top: 0,
                                        child: Container(
                                          width: 93.93,
                                          height: 88.16,
                                          child: Stack(children: []),
                                        ),
                                      ),
                                      Positioned(
                                        left: 0,
                                        top: 0.23,
                                        child: Container(
                                          width: 47.26,
                                          height: 87.48,
                                          child: Stack(children: []),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        left: 83.03,
                        top: 194.53,
                        child: Container(
                          width: 93.02,
                          height: 64.45,
                          child: Stack(
                            children: [
                              Positioned(
                                left: 20.05,
                                top: 2.67,
                                child: Container(
                                  width: 50.89,
                                  height: 22.41,
                                  child: Stack(children: []),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        left: 41.44,
                        top: 0,
                        child: Container(
                          width: 184.47,
                          height: 145.13,
                          child: Stack(
                            children: [
                              Positioned(
                                left: 32.30,
                                top: 0,
                                child: Container(
                                  width: 48.17,
                                  height: 35.90,
                                  child: Stack(children: []),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
