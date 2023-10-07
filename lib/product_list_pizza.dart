import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:badges/badges.dart' as badges;
import 'cartmodel.dart';
import 'cart_provider.dart';
import 'cart.dart';
import 'db_helper.dart';
import 'package:provider/provider.dart';


class ProductListScreenPizza extends StatefulWidget {
  const ProductListScreenPizza({Key? key}) : super(key: key);

  @override
  _ProductListScreenStatePizza createState() => _ProductListScreenStatePizza();
}

class _ProductListScreenStatePizza extends State<ProductListScreenPizza> {
  List<Cart> products = [
    Cart(
      id: null,
      productId: '11',
      productName: 'Margarita Pizza',
      initialPrice: 110,
      productPrice: 110,
      quantity: 1,
      image: 'img/margarita.png',
      description: 'A classic Italian delight featuring a harmonious blend of fresh mozzarella, vibrant tomato sauce, fragrant basil, and a thin, crispy crust.',
    ),
    Cart(
      id: null,
      productId: '12',
      productName: 'Cherry Tomatoes Pizza',
      initialPrice: 105,
      productPrice: 105,
      quantity: 1,
      image: 'img/tomat.png',
      description: 'Bursting with flavor, this pizza showcases sweet cherry tomatoes atop a bed of gooey cheese and a perfectly baked dough.',
    ),
    Cart(
      id: null,
      productId: '13',
      productName: 'Pepperoni Pizza',
      initialPrice: 126,
      productPrice: 126,
      quantity: 1,
      image: 'img/meat.png',
      description: 'A pizza lovers favorite, this pie boasts spicy pepperoni slices atop a golden, cheesy foundation.',
    ),
    Cart(
      id: null,
      productId: '14',
      productName: 'Garlic Cheese Pizza',
      initialPrice: 123,
      productPrice: 123,
      quantity: 1,
      image: 'img/cheese.png',
      description: 'A savory sensation with a garlic-infused crust and a generous layer of melted cheese, perfect for garlic enthusiasts.',
    ),
    Cart(
      id: null,
      productId: '15',
      productName: 'Mushroom Chicken Pizza',
      initialPrice: 105,
      productPrice: 105,
      quantity: 1,
      image: 'img/mushroom.png',
      description: 'A delightful combination of tender chicken, earthy mushrooms, and rich cheese, creating a satisfying and hearty pizza experience.',
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
            'Pizza',
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
