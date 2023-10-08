import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:badges/badges.dart' as badges;
import 'cartmodel.dart';
import 'cart_provider.dart';
import 'cart.dart';
import 'db_helper.dart';
import 'package:provider/provider.dart';

class ProductListScreenBurger extends StatefulWidget {
  // class extend stateful widget yang meruapakan tampilan widgetnya
  const ProductListScreenBurger({Key? key}) : super(key: key);

  @override
  _ProductListScreenStateBurger
      createState() => //implementasi dari metode abstrak createState yang didefinisikan dalam widget StatefulWidget. Metode ini digunakan untuk membuat sebuah instance dari kelas state yang terkait dengan widget ProductListScreenBurger.
          _ProductListScreenStateBurger();
}

class _ProductListScreenStateBurger extends State<ProductListScreenBurger> {
  //_ProductListScreenStateBurger. Ini adalah kelas yang digunakan sebagai state untuk widget ProductListScreenBurger
  List<Cart> products = [
    Cart(
      id: null,
      productId: '16', //product id dalam database
      productName: 'SouthWest Chicken Burger',
      initialPrice: 50,
      productPrice: 50,
      quantity: 1,
      image: 'images/southwestburger.png',
      description:
          'These southwest chicken burgers are made with diced red bell pepper, shallots, and southwest spices, and pack a ton of flavor. Assembled and cooked in under 20 minutes.',
    ),
    Cart(
      id: null,
      productId: '17',
      productName: 'Bacon Swiss Burger',
      initialPrice: 55,
      productPrice: 55,
      quantity: 1,
      image: 'images/bacoswissburger.png',
      description:
          'Step up your burger game with some extra toppings: sautéed mushrooms and onions, crispy bacon, Swiss cheese, and barbeque sauce.',
    ),
    Cart(
      id: null,
      productId: '18',
      productName: 'Pulled Pork Burger',
      initialPrice: 67,
      productPrice: 67,
      quantity: 1,
      image: 'images/pulledporkburger.png',
      description:
          'The Pulled Pork Burger is a smoky, sweet and spicy burger that is sure to be a hit at your next cookout! This burger is packed with flavor',
    ),
    Cart(
      id: null,
      productId: '19',
      productName: 'Double Cheese Burger',
      initialPrice: 43,
      productPrice: 43,
      quantity: 1,
      image: 'images/cheeseburger.png',
      description:
          'A Double Cheeseburger consists of two 1.6 oz. beef patties, two slices of American cheese, a sesame seed bun, ketchup, pickle slices, onions, and mustard.',
    ),
    Cart(
      id: null,
      productId: '20',
      productName: 'Beef Burger',
      initialPrice: 45,
      productPrice: 45,
      quantity: 1,
      image: 'images/beefburger.jpg',
      description:
          'A beef burger consists of two beef patties, two slices of American cheese, a sesame seed bun, ketchup, pickle slices, onions, and mustard.',
    ),
  ];

  DBHelper? dbHelper =
      DBHelper(); //deklarasi dan inisialisasi variabel dbHelper dengan sebuah instance dari kelas DBHelper

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
            'Burger', //title
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
                Navigator.push(
                  context,
                  PageRouteBuilder(
                    pageBuilder: (context, animation,
                            secondaryAnimation) => //animasi/transisi
                        CartScreen(),
                    transitionsBuilder:
                        (context, animation, secondaryAnimation, child) {
                      const begin = Offset(1.0, 0.0);
                      const end = Offset.zero;
                      const curve = Curves.easeInOut;
                      var tween = Tween(begin: begin, end: end)
                          .chain(CurveTween(curve: curve));
                      var offsetAnimation = animation.drive(tween);
                      return SlideTransition(
                          position: offsetAnimation, child: child);
                    },
                  ),
                );
              },
              child: Center(
                child: badges.Badge(
                  showBadge: true,
                  badgeContent: Consumer<CartProvider>(
                    builder: (context, value, child) {
                      return Text(value.getCounter().toString(),
                          style: TextStyle(color: Colors.white));
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
                                      style: TextStyle(
                                          fontSize: 18.0,
                                          fontWeight: FontWeight.w500),
                                    ),
                                    Text(
                                      product.description!,
                                      style: TextStyle(
                                          fontSize: 14.0, color: Colors.grey),
                                    ),
                                    SizedBox(height: 8.0),
                                    Text(
                                      'Rp.${product.productPrice?.toStringAsFixed(3) ?? "0.000"}',
                                      style: TextStyle(
                                          fontSize: 16.0,
                                          fontWeight: FontWeight.w500),
                                    ),
                                    SizedBox(height: 16.0),
                                    Align(
                                      alignment: Alignment.centerRight,
                                      child: InkWell(
                                        onTap: () {
                                          dbHelper!
                                              .insert(
                                            product,
                                          )
                                              .then((value) {
                                            cart.addTotalPrice(product
                                                .productPrice!
                                                .toDouble());
                                            cart.addCounter();

                                            final snackBar = SnackBar(
                                              backgroundColor: Colors.green,
                                              content: Text(
                                                  'Product is added to cart'),
                                              duration: Duration(seconds: 1),
                                            );

                                            ScaffoldMessenger.of(context)
                                                .showSnackBar(snackBar);
                                          }).onError((error, stackTrace) {
                                            final snackBar = SnackBar(
                                              backgroundColor: Colors.red,
                                              content: Text(
                                                  'Product is already added in cart'),
                                              duration: Duration(seconds: 1),
                                            );

                                            ScaffoldMessenger.of(context)
                                                .showSnackBar(snackBar);
                                          });
                                        },
                                        child: Container(
                                          height: 40.0,
                                          width: 120.0,
                                          decoration: BoxDecoration(
                                            color: const Color.fromARGB(
                                                255, 255, 255, 255),
                                            borderRadius:
                                                BorderRadius.circular(5),
                                          ),
                                          child: Center(
                                            child: Text(
                                              'Add to cart',
                                              style: TextStyle(
                                                  color: Colors.black),
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
