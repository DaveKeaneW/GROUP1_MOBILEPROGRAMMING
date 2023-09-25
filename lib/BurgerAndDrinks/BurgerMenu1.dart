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

          // The rest of your code goes here
          // ...
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
