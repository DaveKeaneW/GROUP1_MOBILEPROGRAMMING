import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tesgit/menudrinks.dart';

class lemon extends StatelessWidget {
  const lemon({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: Color.fromARGB(255, 255, 255, 255),
      ),
      home: Scaffold(
        appBar: AppBar(
          toolbarHeight: 120,
          backgroundColor: Colors.white,
          title: Text(
            'Lemon Ice Tea',
            style: TextStyle(
              fontFamily: GoogleFonts.jacquesFrancois().fontFamily,
              fontSize: 32,
              color: Colors.black,
            ),
          ),
          centerTitle: true,
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back,
              color: Colors.black,
              size: 32,
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => MenuDrinks()),
              );
            },
          ),
        ),
        body: ListView(
          children: [
            MargaritaPizza1(),
          ],
        ),
      ),
    );
  }
}

class MargaritaPizza1 extends StatefulWidget {
  @override
  _MargaritaPizza1State createState() => _MargaritaPizza1State();
}

class _MargaritaPizza1State extends State<MargaritaPizza1> {
  int _selectedPrice = 1;

  void _addToCart() {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text('Added to Cart'),
          content: Text('Lemon Ice Tea added to your cart.'),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MenuDrinks()),
                );
              },
              child: Text('OK'),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 412,
          height: 725,
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
              ),
            ],
          ),
          child: Stack(
            children: [
              Positioned(
                left: 51,
                top: 355,
                child: SizedBox(
                  width: 304,
                  height: 80,
                  child: Text(
                    'Lemon iced tea combines black tea, fresh lemon juice, and sugar to make a bold and refreshing drink.',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w400,
                      height: 1.3,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 50,
                top: 480,
                child: Container(
                  width: 300,
                  height: 400,
                  child: Column(
                    children: [
                      _buildPriceOption(2, 'Rp.35.000'),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 50,
                top: 622.5,
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
                top: 630,
                child: GestureDetector(
                  onTap: _addToCart,
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
                              'ADD TO CART',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.bold,
                                height: 0,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 57,
                top: 50,
                child: Container(
                  width: 300,
                  height: 283,
                  decoration: BoxDecoration(
                    image: const DecorationImage(
                      image: AssetImage('images/lemonicetea.png'),
                      fit: BoxFit.fill,
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Color(0xFF201520),
                        blurRadius: 4,
                        offset: Offset(0, 4),
                        spreadRadius: 0,
                      ),
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
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildPriceOption(int value, String label) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _selectedPrice = value;
        });
      },
      child: Container(
        width: 290,
        margin: EdgeInsets.only(bottom: 10),
        padding: EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: _selectedPrice == value ? Color(0xFF533556) : Colors.white,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Text(
          label,
          textAlign: TextAlign.center,
          style: TextStyle(
            color: _selectedPrice == value ? Colors.white : Colors.black,
            fontSize: 16,
            fontFamily: GoogleFonts.inter().fontFamily,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
