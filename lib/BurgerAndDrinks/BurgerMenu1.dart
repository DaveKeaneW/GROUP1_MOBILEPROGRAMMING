import 'package:flutter/material.dart';

class BurgerMenuPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Define the value of 'fem' according to your design requirements.
    double fem = 1.0; // Update this value as needed.

    return Scaffold(
      appBar: AppBar(
        title: Text('Burger Menu Page'),
      ),
      body: Column(
        children: [
          // The code you provided goes here
          // ...

          // Replacing the Positioned widget with a custom local image
          Positioned(
            left: 291.6059570312 * fem,
            top: 14.5999755859 * fem,
            child: Align(
              child: SizedBox(
                width: 17.1 * fem,
                height: 10.7 * fem,
                child: Image.asset(
                  "assets/image/Combined Shape.png", // Replace with the correct asset path
                  width: 17.1 * fem,
                  height: 10.7 * fem,
                ),
              ),
            ),
          ),

          // Adding the additional Positioned widget with Text widget
          Positioned(
            left: 153 * fem,
            top: 59 * fem,
            child: Align(
              child: SizedBox(
                width: 78 * fem,
                height: 32 * fem,
                child: Text(
                  'Burger',
                  style: TextStyle(
                    fontFamily: 'Jacques Francois',
                    fontSize: 24 * fem,
                    fontWeight: FontWeight.w400,
                    color: Color(0xff000000),
                  ),
                ),
              ),
            ),
          ),

          // Adding the additional Positioned widget with Image.asset
          Positioned(
            left: 18 * fem,
            top: 55 * fem,
            child: Align(
              child: SizedBox(
                width: 45 * fem,
                height: 42 * fem,
                child: Image.asset(
                  "assets/image/Ellipse 2.png", // Replace with the correct asset path for your custom image
                  width: 45 * fem,
                  height: 42 * fem,
                ),
              ),
            ),
          ),

          // Adding the additional Positioned widget with Image.network
          Positioned(
            left: 26.0002441406 * fem,
            top: 65.6872558594 * fem,
            child: Align(
              child: SizedBox(
                width: 30.1 * fem,
                height: 20.44 * fem,
                child: Image.asset(
                  "assets/image/Arrow_Back.png", // Replace with your actual image URL
                  width: 30.1 * fem,
                  height: 20.44 * fem,
                ),
              ),
            ),
          ),
          // Adding the additional Container with Text widget
          Container(
            margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 4 * fem),
            child: Text(
              'SouthWest Chicken Burger',
              style: TextStyle(
                fontFamily: 'Inter',
                fontSize: 12 * fem,
                fontWeight: FontWeight.w700,
                color: Color(0xffffffff),
                height: 1.2125 * fem / fem,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: BurgerMenuPage(),
  ));
}
