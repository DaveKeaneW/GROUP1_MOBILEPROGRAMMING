import 'package:flutter/material.dart';

class BurgerMenuPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Burger Menu Page'),
      ),
      body: Column(
        children: [
          Container(
            width: 416,
            height: 123,
            // You can add child widgets to the Container if needed.
            // For example, you can add an Image like this:
            // child: Image.asset("assets/your_image.png"),
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
