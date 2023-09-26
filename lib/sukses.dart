import 'package:flutter/material.dart';

void main() {
  runApp(const sukses());
}

class sukses extends StatelessWidget {
  const sukses ({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: const Color.fromARGB(255, 18, 32, 47),
      ),
      home: Scaffold(
        body: ListView(children: [
          KanePunya(),
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
          width: 410,
          height: 30000,
          decoration: BoxDecoration(color: Color(0xFF201520)),
          child: Stack(
            children: [
              Positioned(
                left: 7,
                top: 116,
                child: Container(
                  width: 375,
                  height: 812,
                  decoration: ShapeDecoration(
                    color: Colors.white.withOpacity(0),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(33.62),
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 38,
                top: 595,
                child: Container(
                  width: 343,
                  height: 45,
                  padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                  decoration: ShapeDecoration(
                    color: Color(0xFF543656),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    shadows: [
                      BoxShadow(
                        color: Color(0x26000000),
                        blurRadius: 15,
                        offset: Offset(2, 2),
                        spreadRadius: 0,
                      )
                    ],
                  ),
                  child: FittedBox(
                    fit: BoxFit.scaleDown,
                    child: Text(
                        'Shopee Pay ',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontFamily: 'OFL Sorts Mill Goudy TT',
                          fontWeight: FontWeight.w500,
                          height: 0,
                        ),
                      ),
                  ),
                ),
              ),
              Positioned(
                left: 38,
                top: 648,
                child: Container(
                  width: 343,
                  height: 45,
                  padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                  decoration: ShapeDecoration(
                    color: Color(0xFF2E1E2E),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    shadows: [
                      BoxShadow(
                        color: Color(0x26000000),
                        blurRadius: 15,
                        offset: Offset(2, 2),
                        spreadRadius: 0,
                      )
                    ],
                  ),
                  child: FittedBox(
                    fit: BoxFit.scaleDown,
                    child: Text.rich(
                        TextSpan(
                          children: [
                            TextSpan(
                              text: 'Cash',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontFamily: 'OFL Sorts Mill Goudy TT',
                                fontWeight: FontWeight.w500,
                                height: 0,
                              ),
                            ),
                            TextSpan(
                              text: ' ',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontFamily: 'OFL Sorts Mill Goudy TT',
                                fontWeight: FontWeight.w500,
                                height: 0,
                              ),
                            ),
                          ],
                        ),
                        textAlign: TextAlign.center,
                      ),
                  ),
                ),
              ),
              Positioned(
                left: 38,
                top: 738,
                child: Container(
                  width: 343,
                  height: 45,
                  padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                  decoration: ShapeDecoration(
                    color: Color(0xFF2E1E2E),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    shadows: [
                      BoxShadow(
                        color: Color(0x26000000),
                        blurRadius: 15,
                        offset: Offset(2, 2),
                        spreadRadius: 0,
                      )
                    ],
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        'Check Out',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontFamily: 'OFL Sorts Mill Goudy TT',
                          fontWeight: FontWeight.w500,
                          height: 0,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 286,
                top: 45,
                child: Container(
                  width: 50,
                  height: 50,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 0,
                        top: 0,
                        child: Container(
                          width: 50,
                          height: 50,
                          decoration: ShapeDecoration(
                            shape: OvalBorder(
                              side: BorderSide(width: 1, color: Color(0xFFDCAA70)),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 3,
                        top: 3,
                        child: Container(
                          width: 44,
                          height: 44,
                          decoration: ShapeDecoration(
                            image: DecorationImage(
                              image: NetworkImage("https://via.placeholder.com/44x44"),
                              fit: BoxFit.fill,
                            ),
                            shape: OvalBorder(),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 42,
                top: 429,
                child: SizedBox(
                  width: 147,
                  height: 17,
                  child: Text(
                    'DELIVERY ADDRESS',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontFamily: 'Oleo Script',
                      fontWeight: FontWeight.w700,
                      height: 0,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 42,
                top: 571,
                child: SizedBox(
                  width: 260,
                  height: 16,
                  child: Text(
                    'CHOOSE  YOUR PAYMENT METHOD',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontFamily: 'Oleo Script',
                      fontWeight: FontWeight.w700,
                      height: 0,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 38,
                top: 454,
                child: Container(
                  width: 343,
                  height: 80,
                  decoration: ShapeDecoration(
                    color: Color(0xFF2E1E2E),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
              ),


              Positioned(
                left: 38,
                top: 180,
                child: Container(
                  width: 343,
                  height: 240,
                  decoration: ShapeDecoration(
                    color: Color(0xFF2E1E2E),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
              ),


              Positioned(
                left: 22,
                top: 19,
                child: Container(
                  width: 177,
                  height: 122,
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
                        left: 38,
                        top: 46,
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
                left: 42,
                top: 158,
                child: SizedBox(
                  width: 98,
                  height: 15,
                  child: Text(
                    'YOUR ORDER',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontFamily: 'Oleo Script',
                      fontWeight: FontWeight.w700,
                      height: 0,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 19,
                top: 135,
                child: Container(
                  width: 375,
                  decoration: ShapeDecoration(
                    shape: RoundedRectangleBorder(
                      side: BorderSide(
                        width: 3,
                        strokeAlign: BorderSide.strokeAlignCenter,
                        color: Color(0xFFFDD7A2),
                      ),
                    ),
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