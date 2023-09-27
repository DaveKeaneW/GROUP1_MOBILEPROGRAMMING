import 'package:flutter/material.dart';

void main() {
  runApp(const BurgerSize5());
}

class BurgerSize5 extends StatelessWidget {
  const BurgerSize5({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: Color.fromARGB(255, 255, 255, 255),
      ),
      home: Scaffold(
        body: ListView(children: [
          MenuPizzaPage2(),
        ]),
      ),
    );
  }
}

class MenuPizzaPage2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 412,
          height: 844,
          clipBehavior: Clip.antiAlias,
          decoration: ShapeDecoration(
            color: Color(0xFF201520),
            shape: RoundedRectangleBorder(
              side: BorderSide(
                width: 0,
                strokeAlign: BorderSide.strokeAlignOutside,
                color: Color(0xFF201520),
              ),
            ),
            shadows: [
              BoxShadow(
                color: Color(0x02374151),
                blurRadius: 48,
                offset: Offset(6, 7),
                spreadRadius: 0,
              )
            ],
          ),
          child: Stack(
            children: [
              Positioned(
                // rectangle2K67 (125:366)
                left: 0,
                top: 0,
                child: Align(
                  child: SizedBox(
                    width: 416,
                    height: 123,
                    child: Container(
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 255, 255, 255),
                      ),
                    ),
                  ),
                ),
              ),

              //ARROW PNG
              Image.asset(
                "images/Ellipse 2.png",
                width: 85,
                height: 145,
              ),
              //FONT
              Image.asset(
                "images/fontdoublebeef.png",
                width: 450,
                height: 135,
              ),
              Positioned(
                // ellipse3poZ (125:371)
                left: 20,
                top: 53,
                child: Align(
                  child: SizedBox(
                      width: 45,
                      height: 40,
                      child: Image.asset('images/Arrow_Back.png')),
                ),
              ),
              Positioned(
                left: 46,
                top: 496,
                child: SizedBox(
                  width: 304,
                  height: 37,
                  child: Text(
                    'A beef burger consists of two beef patties, two slices of American cheese, a sesame seed bun, ketchup, pickle slices, onions, and mustard.',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 10,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w400,
                      height: 0,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 96,
                top: 567,
                child: Container(
                  width: 180,
                  height: 93,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 0,
                        top: 3,
                        child: Container(
                          width: 18,
                          height: 17,
                          decoration: ShapeDecoration(
                            color: Color(0xFFD9D9D9),
                            shape: OvalBorder(),
                            shadows: [
                              BoxShadow(
                                color: Color(0x3F000000),
                                blurRadius: 32,
                                offset: Offset(0, 16),
                                spreadRadius: 0,
                              )
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        left: 0,
                        top: 38,
                        child: Container(
                          width: 18,
                          height: 17,
                          decoration: ShapeDecoration(
                            color: Color(0xFFD9D9D9),
                            shape: OvalBorder(),
                            shadows: [
                              BoxShadow(
                                color: Color(0x3F000000),
                                blurRadius: 32,
                                offset: Offset(0, 16),
                                spreadRadius: 0,
                              )
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        left: 0,
                        top: 73,
                        child: Container(
                          width: 18,
                          height: 17,
                          decoration: ShapeDecoration(
                            color: Color(0xFFD9D9D9),
                            shape: OvalBorder(),
                            shadows: [
                              BoxShadow(
                                color: Color(0x3F000000),
                                blurRadius: 32,
                                offset: Offset(0, 16),
                                spreadRadius: 0,
                              )
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        left: 32,
                        top: 0,
                        child: Container(
                          width: 148,
                          height: 23,
                          child: Stack(
                            children: [
                              Positioned(
                                left: 0,
                                top: 0,
                                child: Container(
                                  width: 148,
                                  height: 23,
                                  decoration: ShapeDecoration(
                                    color: Color(0xFFD9D9D9),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(15),
                                    ),
                                    shadows: [
                                      BoxShadow(
                                        color: Color(0x3F000000),
                                        blurRadius: 32,
                                        offset: Offset(0, 16),
                                        spreadRadius: 0,
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 21,
                                top: 6,
                                child: SizedBox(
                                  width: 105,
                                  child: Text(
                                    'Rp.30.000 (Personal)',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 10,
                                      fontFamily: 'Inter',
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
                        left: 32,
                        top: 35,
                        child: Container(
                          width: 148,
                          height: 23,
                          child: Stack(
                            children: [
                              Positioned(
                                left: 0,
                                top: 0,
                                child: Container(
                                  width: 148,
                                  height: 23,
                                  decoration: ShapeDecoration(
                                    color: Color(0xFFD9D9D9),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(15),
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 24,
                                top: 6,
                                child: SizedBox(
                                  width: 102,
                                  child: Text(
                                    'Rp.40.000 (Regular)',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 10,
                                      fontFamily: 'Inter',
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
                        left: 32,
                        top: 70,
                        child: Container(
                          width: 148,
                          height: 23,
                          child: Stack(
                            children: [
                              Positioned(
                                left: 0,
                                top: 0,
                                child: Container(
                                  width: 148,
                                  height: 23,
                                  decoration: ShapeDecoration(
                                    color: Color(0xFFD9D9D9),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(15),
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 21,
                                top: 6,
                                child: SizedBox(
                                  width: 105,
                                  child: Text(
                                    'Rp.50.000 (Large)',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 10,
                                      fontFamily: 'Inter',
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
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 50,
                top: 742,
                child: Container(
                  width: 299,
                  height: 59,
                  decoration: ShapeDecoration(
                    color: Color(0xFF533556),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(45),
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 62,
                top: 750,
                child: Container(
                  width: 276,
                  height: 42,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 0,
                        top: 0,
                        child: Container(
                          width: 276,
                          height: 42,
                          decoration: ShapeDecoration(
                            color: Colors.white.withOpacity(0),
                            shape: RoundedRectangleBorder(
                              side: BorderSide(width: 1, color: Colors.white),
                              borderRadius: BorderRadius.circular(45),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 22.38,
                        top: 12,
                        child: SizedBox(
                          width: 231.24,
                          height: 28,
                          child: Text(
                            'ADD CART',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                              fontFamily: 'Inter',
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
                left: 55,
                top: 182,
                child: Container(
                  width: 300,
                  height: 283,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('images/beefburger.png'),
                      fit: BoxFit.fill,
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Color(0xFF201520),
                        blurRadius: 4,
                        offset: Offset(0, 4),
                        spreadRadius: 0,
                      )
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 26,
                top: 61,
                child: Container(
                  width: 30,
                  height: 30,
                  clipBehavior: Clip.antiAlias,
                  decoration: BoxDecoration(),
                ),
              ),
              // Positioned(
              //  left: 112,
              //  top: 55,
              //  child: Text(
              //  'SouthWest Burger',
              //  style: TextStyle(
              // //   color: Colors.black,
              //  fontSize: 28,
              //  fontFamily: 'Jacques Francois',
              //fontWeight: FontWeight.w400,
              //  height: 0,
              // ),
              // ),
              //),
            ],
          ),
        ),
      ],
    );
  }
}
