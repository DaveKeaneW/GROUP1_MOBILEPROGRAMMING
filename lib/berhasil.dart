import 'package:flutter/material.dart';

void main() {
  runApp(const berhasil());
}

class berhasil extends StatelessWidget {
  const berhasil({super.key});

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
                left: 286,
                top: 45,
                child: Container(
                  width: 50,
                  height: 50,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 42,
                        top: 0,
                        child: Container(
                          width: 50,
                          height: 50,
                          
                        ),
                      ),
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
                left: 45,
                top: 175,
                child: Container(
                  width: 328,
                  height: 581,
                  decoration: ShapeDecoration(
                    color: Color(0xF4EFE3C8),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(40),
                    ),
                  ),
                  child: Stack(
                    children: [
                      Positioned(
                        left: 121,
                        top: 97,
                        child: Container(
                          width: 82,
                          height: 82,
                          decoration: BoxDecoration(
                        
                          ),
                          child: Stack(
                            children: [
                              Positioned(
                                left: 0,
                                top: 0,
                                child: Container(
                                  width: 82,
                                  height: 82,
                                  decoration: ShapeDecoration(
                                    color: Color(0xFFEDB82C),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(56),
                                    ),
                                    
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        left: 120,
                        top: 210,
                        child: Text(
                          'Success',
                          style: TextStyle(
                            color: Color(0xFFEDB82C),
                            fontSize: 24,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w700,
                            height: 0.06,
                          ),
                        ),
                      ),
                      Positioned(
                        left: 23,
                        top: 277,
                        child: SizedBox(
                          width: 283,
                          child: Text(
                            'payment has been confirmed',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w500,
                              height: 0.08,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 35,
                        top: 417,
                        child: SizedBox(
                          width: 283,
                          child: Text(
                            'please wait a while .....',
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
                        left: 40,
                        top: 396,
                        child: SizedBox(
                          width: 249,
                          child: Text(
                            'your order has been received',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w500,
                              height: 0.08,
                            ),
                          ),
                        ),
                      ),
                    ],
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
            ],
          ),
        ),
      ],
    );
  }
}