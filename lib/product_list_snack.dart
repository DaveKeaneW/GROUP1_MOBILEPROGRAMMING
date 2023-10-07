import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:badges/badges.dart' as badges;
import 'cartmodel.dart';
import 'cart_provider.dart';
import 'cart.dart';
import 'db_helper.dart';
import 'package:provider/provider.dart';


class ProductListScreenSnack extends StatefulWidget {
  const ProductListScreenSnack({Key? key}) : super(key: key);

  @override
  _ProductListScreenStateSnack createState() => _ProductListScreenStateSnack();
}

class _ProductListScreenStateSnack extends State<ProductListScreenSnack> {
  List<Cart> products = [
    Cart(
      id: null,
      productId: '6',
      productName: 'French Fries',
      initialPrice: 34,
      productPrice: 34,
      quantity: 1,
      image: 'img/prenprais.png',
      description: 'Crispy golden potato sticks, a classic snack loved by all.',
    ),
    Cart(
      id: null,
      productId: '7',
      productName: 'Cheesy French Fries',
      initialPrice: 44,
      productPrice: 44,
      quantity: 1,
      image: 'img/cheesefr.png',
      description: 'Irresistibly cheesy and seasoned fries for a mouthwatering indulgence.',
    ),
    Cart(
      id: null,
      productId: '8',
      productName: 'Potato Wedges',
      initialPrice: 36,
      productPrice: 36,
      quantity: 1,
      image: 'img/potatowed.png',
      description: 'Thick-cut potato wedges, perfectly seasoned and baked to perfection.',
    ),
    Cart(
      id: null,
      productId: '9',
      productName: 'Onion Rings',
      initialPrice: 37,
      productPrice: 37,
      quantity: 1,
      image: 'img/onionring.png',
      description: 'Crispy and flavorful onion rings, a delightful side dish.',
    ),
    Cart(
      id: null,
      productId: '10',
      productName: 'Chicken wings',
      initialPrice: 55,
      productPrice: 55,
      quantity: 1,
      image: 'img/garlicpar.png',
      description: 'Juicy and tender chicken wings, seasoned and cooked to savory perfection.',
    ),
    // Tambahkan produk lainnya ke dalam daftar ini
  ];

  DBHelper? dbHelper = DBHelper();

  @override
  Widget build(BuildContext context) {
    final cart = Provider.of<CartProvider>(context);
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: Color(0xFF201520),
      ),
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          toolbarHeight: 120,
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back,
              color: Colors.black,
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          title: Text(
            'Spaghetti',
            style: TextStyle(
              fontFamily: GoogleFonts.jacquesFrancois().fontFamily,
              fontSize: 28,
              color: Colors.black,
            ),
          ),
          centerTitle: true,
          actions: [
            InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => CartScreen()));
              },
              child: Center(
                child: badges.Badge(
                  showBadge: true,
                  badgeContent: Consumer<CartProvider>(
                    builder: (context, value, child) {
                      return Text(value.getCounter().toString(), style: TextStyle(color: Colors.white));
                    },
                  ),
                  badgeAnimation: badges.BadgeAnimation.rotation(
                    animationDuration: Duration(milliseconds: 300),
                    colorChangeAnimationDuration: Duration(seconds: 1),
                    loopAnimation: false,
                    curve: Curves.fastOutSlowIn,
                    colorChangeAnimationCurve: Curves.easeInCubic,
                  ),
                ),
              ),
            ),
            SizedBox(width: 20.0)
          ],
        ),
        body: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: products.length,
                itemBuilder: (context, index) {
                  final product = products[index];
                  return Card(
                    color: Color(0xFF201520),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Image.asset(
                                product.image!,
                                height: 120.0,
                                width: 120.0,
                              ),
                              SizedBox(width: 16.0),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      product.productName!,
                                      style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w500),
                                    ),
                                    Text(
                                      product.description!,
                                      style: TextStyle(fontSize: 14.0, color: Colors.grey),
                                    ),
                                    SizedBox(height: 8.0),
                                    Text(
                                      'Rp.${product.productPrice?.toStringAsFixed(3) ?? "0.000" }',
                                      style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w500),
                                    ),
                                    SizedBox(height: 16.0),
                                    Align(
                                      alignment: Alignment.centerRight,
                                      child: InkWell(
                                        onTap: () {
                                          dbHelper!.insert(
                                            product,
                                          ).then((value) {
                                            cart.addTotalPrice(product.productPrice!.toDouble());
                                            cart.addCounter();

                                            final snackBar = SnackBar(
                                              backgroundColor: Colors.green,
                                              content: Text('Product is added to cart'),
                                              duration: Duration(seconds: 1),
                                            );

                                            ScaffoldMessenger.of(context).showSnackBar(snackBar);
                                          }).onError((error, stackTrace) {
                                            final snackBar = SnackBar(
                                              backgroundColor: Colors.red,
                                              content: Text('Product is already added in cart'),
                                              duration: Duration(seconds: 1),
                                            );

                                            ScaffoldMessenger.of(context).showSnackBar(snackBar);
                                          });
                                        },
                                        child: Container(
                                          height: 40.0,
                                          width: 120.0,
                                          decoration: BoxDecoration(
                                            color: const Color.fromARGB(255, 255, 255, 255),
                                            borderRadius: BorderRadius.circular(5),
                                          ),
                                          child: Center(
                                            child: Text(
                                              'Add to cart',
                                              style: TextStyle(color: Colors.black),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
