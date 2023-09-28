import 'package:flutter/material.dart';

void main() {
  runApp(const otw());
}

class otw extends StatelessWidget {
  const otw({super.key});

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
          width: 412,
          height: 842,
          decoration: BoxDecoration(color: Color(0xFF201520)),
          child: Stack(
            children: [
              Positioned(
                left: -341,
                top: 309,
                child: Container(
                  width: 303,
                  height: 194,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 37.30,
                        top: 56.14,
                        child: Container(
                          width: 220.27,
                          height: 128.79,
                          child: Stack(children: [
                          ]),
                        ),
                      ),
                    




                      Positioned(
                        left: 95.93,
                        top: 31.65,
                        child: Container(
                          width: 113.05,
                          height: 106.50,
                          child: Stack(children: [
                          ]),
                        ),
                      ),
                      
                      
                      
                      
                      Positioned(
                        left: 204.09,
                        top: 82.27,
                        child: Container(
                          width: 42.38,
                          height: 35.03,
                          child: Stack(
                            children: [
                              Positioned(
                                left: 0,
                                top: 0,
                                child: Container(
                                  width: 42.38,
                                  height: 15.46,
                                  child: Stack(children: [
                                  ]),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      
                      
                      
                      
                      
                      Positioned(
                        left: 49.44,
                        top: 94.67,
                        child: Container(
                          width: 33.81,
                          height: 34.28,
                          child: Stack(
                            children: [
                              
                              Positioned(
                                left: 0,
                                top: 0,
                                child: Container(
                                  width: 33.81,
                                  height: 14.11,
                                  child: Stack(children: [
                                  
                                  ]),
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
                left: 68,
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
                left: 63,
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
                          decoration: ShapeDecoration(
                            shape: CircleBorder(
                              side: BorderSide(width: 1, color: Color(0xFFDCAA70)),
                            ),
                          ),
                          child: ClipOval(
                            child: Image.asset('images/user.png',fit: BoxFit.fill,),
                          ),
                        ),
                      ),                     
                    ],
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
                left: 0,
                top: 141,
                child: Container(
                  width: 800,
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
            ],
          ),
        ),
      ],
    );
  }
}