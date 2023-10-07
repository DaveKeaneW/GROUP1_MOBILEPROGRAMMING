import 'package:flutter/material.dart';

void main() {
  runApp(const User());
}

class User extends StatelessWidget {
  const User({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: Color(0xFF201520),
      ),
      home: Scaffold(
        body: ListView(children: [
          ProfileAccount(),
        ]),
      ),
    );
  }
}

class ProfileAccount extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 412,
          height: 848,
          decoration: BoxDecoration(color: Color(0xFF201520)),
          child: Stack(
            children: [
              Positioned(
                left: 0,
                top: 141,
                child: Container(
                  width: 600,
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
                left: 43,
                top: 201,
                child: Container(
                  width: 335,
                  height: 45,
                  child: TextField(
                    style: TextStyle(color: Colors.black),
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      hintText: 'Name',
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 40,
                top: 374,
                child: Container(
                  width: 335,
                  height: 45,
                  child: TextField(
                    style: TextStyle(color: Colors.black),
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      hintText: 'Email',
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 43,
                top: 472,
                child: Container(
                  width: 335,
                  height: 45,
                  child: TextField(
                    style: TextStyle(color: Colors.black),
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      hintText: 'Number Phone',
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 40,
                top: 283,
                child: Container(
                  width: 335,
                  height: 45,
                  child: TextField(
                    style: TextStyle(color: Colors.black),
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      hintText: 'Address',
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 45,
                top: 193,
                child: Text(
                  'Name',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w700,
                    height: 0.18,
                  ),
                ),
              ),
              Positioned(
                left: 45,
                top: 275,
                child: Text(
                  'Email',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w700,
                    height: 0.18,
                  ),
                ),
              ),
              Positioned(
                left: 45,
                top: 365,
                child: Text(
                  'Number Phone',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w700,
                    height: 0.18,
                  ),
                ),
              ),
              Positioned(
                left: 45,
                top: 460,
                child: Text(
                  'Address',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w700,
                    height: 0.18,
                  ),
                ),
              ),
              Positioned(
                left: 50, //Back
                top: 731,
                child: SizedBox(
                  width: 299,
                  height: 27,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pop(context); // Tambahkan baris ini
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Color(0xFF2E1E2E), // Background color
                    ),
                    child: Text(
                      'Back',
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
            ],
          ),
        ),
      ],
    );
  }
}
