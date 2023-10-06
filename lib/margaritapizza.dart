import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tesgit/menupizza.dart';
import 'package:tesgit/cart_provider.dart';
import 'package:provider/provider.dart';

class MargaritaPizza extends StatelessWidget {
  const MargaritaPizza({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 120,
        backgroundColor: Colors.white,
        title: Text(
          'Margarita Pizza',
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
                MaterialPageRoute(
                  builder: (context) => MenuPizza(),
                ),
              );
            }// Menggunakan Navigator.pop untuk kembali ke halaman sebelumnya
        ),
      ),
          
      body: MargaritaPizza1(),
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
    // Add your logic here to add the selected menu to the cart.
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text('Added to Cart'),
          content: Text('Margarita Pizza added to your cart.'),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop(); // Close the dialog
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MenuPizza()),
                ); // Navigate back to MenuPizza
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
                top: 365,
                child: SizedBox(
                  width: 304,
                  height: 80,
                  child: Text(
                    'Our Margherita Pizza is the best seller at Deja Brew\'s Store. This pizza is usually topped with tomatoes, cheese, olives, anchovies, and garlic.',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w400,
                      height: 1.4,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 50,
                top: 450,
                child: Container(
                  width: 300,
                  height: 400,
                  child: Column(
                    children: [
                      _buildPriceOption(1, 'Rp.90.000 (Personal)'),
                      _buildPriceOption(2, 'Rp.110.000 (Regular)'),
                      _buildPriceOption(3, 'Rp.130.000 (Large)'),
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
<<<<<<< HEAD
                  onTap: () {
                    final cartProvider =
                        Provider.of<CartProvider>(context, listen: false);
                    final item = CartItem(
                      pizzaName: 'Margarita Pizza',
                      price: _selectedPrice == 1
                          ? 90000.0
                          : _selectedPrice == 2
                              ? 110000.0
                              : 130000.0,
                    );
                    cartProvider.addToCart(item);
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text('Margarita Pizza added to cart'),
                      ),
                    );
                  },
=======
                  onTap: _addToCart, // Call _addToCart when tapped
>>>>>>> 5388674f9a65e4ef704368a88984081b07a02dde
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
<<<<<<< HEAD
                                side: BorderSide(
                                    width: 1, color: Colors.white),
=======
                                side: BorderSide(width: 1, color: Colors.white),
>>>>>>> 5388674f9a65e4ef704368a88984081b07a02dde
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
                    image: DecorationImage(
                      image: AssetImage('images/margarita.png'),
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
<<<<<<< HEAD
        margin: EdgeInsets.symmetric(vertical: 8),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
          border: Border.all(
            color: _selectedPrice == value ? Color(0xFF533556) : Colors.white,
            width: 1,
          ),
        ),
        width: 290,
        height: 40,
        child: Row(
          children: [
            Container(
              width: 30,
              height: 30,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: _selectedPrice == value ? Color(0xFF533556) : Colors.white,
                border: Border.all(
                  color: Colors.transparent,
                  width: 2,
                ),
              ),
              child: _selectedPrice == value
                  ? Icon(
                      Icons.check,
                      size: 18,
                      color: Colors.white,
                    )
                  : null,
            ),
            SizedBox(width: 10),
            Text(
              label,
              style: TextStyle(
                color: Colors.black,
                fontSize: 16,
                fontFamily: GoogleFonts.inter().fontFamily,
                fontWeight: FontWeight.w400,
              ),
            ),
          ],
        ),
=======
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
>>>>>>> 5388674f9a65e4ef704368a88984081b07a02dde
      ),
    );
  }
}
<<<<<<< HEAD

           
=======
//ferdi
>>>>>>> 5388674f9a65e4ef704368a88984081b07a02dde
