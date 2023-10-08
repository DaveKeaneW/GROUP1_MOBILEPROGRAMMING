import 'package:badges/badges.dart' as badges;
import 'package:tesgit/enjoy.dart';
import 'package:tesgit/otw.dart';
import 'cartmodel.dart';
import 'db_helper.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:awesome_dialog/awesome_dialog.dart';
import 'cart_provider.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  _CartScreenState createState() => _CartScreenState();
}

TextEditingController _addressController =
    TextEditingController(); // Tambahkan controller

class _CartScreenState extends State<CartScreen> {
  DBHelper? dbHelper = DBHelper();

  double calculateTotalPrice(List<Cart> cartItems) {
    double totalPrice = 0;
    for (var item in cartItems) {
      totalPrice += item.productPrice! * item.quantity!;
    }
    return totalPrice;
  }

  void showCheckoutDialog(BuildContext context, String shippingAddress) {
    AwesomeDialog(
      context: context,
      dialogType: DialogType.NO_HEADER,
      animType: AnimType.BOTTOMSLIDE,
      showCloseIcon: true,
      body: Column(
        children: [
          Text(
            "Choose Payment Method:",
            style: TextStyle(fontSize: 16),
          ),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              // Tindakan saat tombol "Cash" ditekan
              // Misalnya, navigasi ke layar pembayaran dengan uang tunai
              Navigator.of(context).pop(); // Tutup dialog pertama
              showPaymentConfirmationDialog(context);
            },
            style: ElevatedButton.styleFrom(
              primary: Colors.white,
            ),
            child: Text(
              'Cash',
              style: TextStyle(
                color: Colors.black,
              ),
            ),
          ),
          SizedBox(height: 10),
          ElevatedButton(
            onPressed: () {
              // Tindakan saat tombol "E-pay" ditekan
              // Misalnya, navigasi ke layar pembayaran elektronik
              Navigator.of(context).pop(); // Tutup dialog pertama
              showPaymentConfirmationDialog(context);
            },
            style: ElevatedButton.styleFrom(
              primary: Colors.white,
            ),
            child: Text(
              'E-pay',
              style: TextStyle(
                color: Colors.black,
              ),
            ),
          ),
        ],
      ),
    )..show();
  }

  void showPaymentConfirmationDialog(BuildContext context) {
    AwesomeDialog(
      context: context,
      dialogType: DialogType.SUCCES,
      animType: AnimType.BOTTOMSLIDE,
      showCloseIcon: true,
      title: "Success",
      desc:
          "Payment has been confirmed. Your order has been received. Please wait a while...",
      btnOkText: "OK",
      btnOkOnPress: () {
        // Close the confirmation dialog
        Navigator.of(context).pop();

        // Navigate to the new page
        Navigator.of(context).push(
          PageRouteBuilder(
            pageBuilder: (context, animation, secondaryAnimation) => OnTheWay(),
            transitionsBuilder:
                (context, animation, secondaryAnimation, child) {
              const begin = 0.0;
              const end = 1.0;
              var curve = Curves.easeInOut;
              var tween =
                  Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
              var scaleAnimation = animation.drive(tween);
              return ScaleTransition(scale: scaleAnimation, child: child);
            },
          ),
        );
      },
    )..show();
  }

  @override
  Widget build(BuildContext context) {
    final cart = Provider.of<CartProvider>(context);
    Future<List<Cart>> cartItemsFuture =
        cart.getData(); // Mengambil daftar produk dalam keranjang dari _cart
    double tax = 0.15 * cart.getTotalPrice(); // 15% tax rate
    double deliveryCharges =
        15.0; // Biaya pengiriman Rp. 15.000 // Total harga termasuk tax dan biaya pengiriman
    double totalPrice = cart.getTotalPrice() +
        tax +
        deliveryCharges; // Total harga termasuk tax dan biaya pengiriman

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
            'Shopping Cart',
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
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => CartScreen()));
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
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              FutureBuilder(
                future: cartItemsFuture,
                builder: (context, AsyncSnapshot<List<Cart>> snapshot) {
                  if (snapshot.hasData) {
                    if (snapshot.data!.isEmpty) {
                      return Align(
                        alignment: Alignment.center,
                        child: Column(
                          children: [
                            Image(
                              image: AssetImage('images/empty_cart.png'),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Text('Your cart is empty 😌',
                                style: Theme.of(context).textTheme.headline5),
                            SizedBox(
                              height: 20,
                            ),
                            Text(
                                'Explore products and shop your\nfavourite items',
                                textAlign: TextAlign.center,
                                style: Theme.of(context).textTheme.subtitle2)
                          ],
                        ),
                      );
                    } else {
                      return Expanded(
                        child: ListView.builder(
                          itemCount: snapshot.data!.length,
                          itemBuilder: (context, index) {
                            return Card(
                              color: Color(0xFF201520),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        Image(
                                          height: 100,
                                          width: 100,
                                          image: AssetImage(snapshot
                                              .data![index].image
                                              .toString()),
                                        ),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Expanded(
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Text(
                                                    snapshot.data![index]
                                                        .productName
                                                        .toString(),
                                                    style: TextStyle(
                                                        fontSize: 16,
                                                        fontWeight:
                                                            FontWeight.w500),
                                                  ),
                                                  InkWell(
                                                      onTap: () {
                                                        dbHelper!.delete(
                                                            snapshot
                                                                .data![index]
                                                                .id!);
                                                        cart.removerCounter();
                                                        cart.removeTotalPrice(
                                                            double.parse(snapshot
                                                                .data![index]
                                                                .productPrice
                                                                .toString()));
                                                      },
                                                      child:
                                                          Icon(Icons.delete)),
                                                ],
                                              ),
                                              SizedBox(
                                                height: 5,
                                              ),
                                              Text(
                                                'Rp. ${snapshot.data![index].productPrice?.toStringAsFixed(3) ?? "0.000"}',
                                                style: TextStyle(
                                                    fontSize: 16,
                                                    fontWeight:
                                                        FontWeight.w500),
                                              ),
                                              SizedBox(
                                                height: 5,
                                              ),
                                              Align(
                                                alignment:
                                                    Alignment.centerRight,
                                                child: Container(
                                                  height: 35,
                                                  width: 100,
                                                  decoration: BoxDecoration(
                                                      color:
                                                          const Color.fromARGB(
                                                              255,
                                                              255,
                                                              255,
                                                              255),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              5)),
                                                  child: Padding(
                                                    padding:
                                                        const EdgeInsets.all(
                                                            4.0),
                                                    child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                        InkWell(
                                                            onTap: () {
                                                              int quantity =
                                                                  snapshot
                                                                      .data![
                                                                          index]
                                                                      .quantity!;
                                                              int price = snapshot
                                                                  .data![index]
                                                                  .initialPrice!;
                                                              quantity--;
                                                              int? newPrice =
                                                                  price *
                                                                      quantity;

                                                              if (quantity >
                                                                  0) {
                                                                dbHelper!
                                                                    .updateQuantity(
                                                                        Cart(
                                                                  id: snapshot
                                                                      .data![
                                                                          index]
                                                                      .id!,
                                                                  productId: snapshot
                                                                      .data![
                                                                          index]
                                                                      .id!
                                                                      .toString(),
                                                                  productName: snapshot
                                                                      .data![
                                                                          index]
                                                                      .productName!,
                                                                  initialPrice: snapshot
                                                                      .data![
                                                                          index]
                                                                      .initialPrice!,
                                                                  productPrice:
                                                                      newPrice,
                                                                  quantity:
                                                                      quantity,
                                                                  image: snapshot
                                                                      .data![
                                                                          index]
                                                                      .image
                                                                      .toString(),
                                                                  description: snapshot
                                                                      .data![
                                                                          index]
                                                                      .description,
                                                                ))
                                                                    .then(
                                                                        (value) {
                                                                  newPrice = 0;
                                                                  quantity = 0;
                                                                  cart.removeTotalPrice(double.parse(snapshot
                                                                      .data![
                                                                          index]
                                                                      .initialPrice!
                                                                      .toString()));
                                                                }).onError((error,
                                                                        stackTrace) {
                                                                  print(error
                                                                      .toString());
                                                                });
                                                              }
                                                            },
                                                            child: Icon(
                                                                Icons.remove,
                                                                color: const Color
                                                                    .fromARGB(
                                                                    255,
                                                                    0,
                                                                    0,
                                                                    0))),
                                                        Text(
                                                            snapshot
                                                                .data![index]
                                                                .quantity
                                                                .toString(),
                                                            style: TextStyle(
                                                                color: const Color
                                                                    .fromARGB(
                                                                    255,
                                                                    0,
                                                                    0,
                                                                    0))),
                                                        InkWell(
                                                            onTap: () {
                                                              int quantity =
                                                                  snapshot
                                                                      .data![
                                                                          index]
                                                                      .quantity!;
                                                              int price = snapshot
                                                                  .data![index]
                                                                  .initialPrice!;
                                                              quantity++;
                                                              int? newPrice =
                                                                  price *
                                                                      quantity;

                                                              dbHelper!
                                                                  .updateQuantity(
                                                                      Cart(
                                                                id: snapshot
                                                                    .data![
                                                                        index]
                                                                    .id!,
                                                                productId: snapshot
                                                                    .data![
                                                                        index]
                                                                    .id!
                                                                    .toString(),
                                                                productName: snapshot
                                                                    .data![
                                                                        index]
                                                                    .productName!,
                                                                initialPrice: snapshot
                                                                    .data![
                                                                        index]
                                                                    .initialPrice!,
                                                                productPrice:
                                                                    newPrice,
                                                                quantity:
                                                                    quantity,
                                                                image: snapshot
                                                                    .data![
                                                                        index]
                                                                    .image
                                                                    .toString(),
                                                                description: snapshot
                                                                    .data![
                                                                        index]
                                                                    .description,
                                                              ))
                                                                  .then(
                                                                      (value) {
                                                                newPrice = 0;
                                                                quantity = 0;
                                                                cart.addTotalPrice(
                                                                    double.parse(snapshot
                                                                        .data![
                                                                            index]
                                                                        .initialPrice!
                                                                        .toString()));
                                                              }).onError((error,
                                                                      stackTrace) {
                                                                print(error
                                                                    .toString());
                                                              });
                                                            },
                                                            child: Icon(
                                                                Icons.add,
                                                                color: const Color
                                                                    .fromARGB(
                                                                    255,
                                                                    0,
                                                                    0,
                                                                    0))),
                                                      ],
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
                      );
                    }
                  }
                  return CircularProgressIndicator(); // Menambahkan indikator loading jika data belum tersedia.
                },
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: TextField(
                  controller: _addressController,
                  decoration: InputDecoration(
                    labelText: 'Shipping Address', // Label kotak teks
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
              Consumer<CartProvider>(builder: (context, value, child) {
                return Visibility(
                  visible:
                      totalPrice.toStringAsFixed(3) == "0.000" ? false : true,
                  child: Column(
                    children: [
                      ReusableWidget(
                        title: 'Sub Total',
                        value: 'Rp. ' + cart.getTotalPrice().toStringAsFixed(3),
                        titleFontSize: 18.0,
                        valueFontSize: 18.0,
                      ),
                      ReusableWidget(
                        title: 'Tax (15%)',
                        value: 'Rp.' + tax.toStringAsFixed(3),
                        titleFontSize: 18.0,
                        valueFontSize: 18.0,
                      ),
                      ReusableWidget(
                        title: 'Delivery Charges',
                        value: 'Rp.' + deliveryCharges.toStringAsFixed(3),
                        titleFontSize: 18.0,
                        valueFontSize: 18.0,
                      ),
                      ReusableWidget(
                        title: 'Total',
                        value: 'Rp.' + totalPrice.toStringAsFixed(3),
                        titleFontSize: 18.0,
                        valueFontSize: 18.0,
                      ),
                      SizedBox(height: 20),
                      ElevatedButton(
                        onPressed: () {
                          String shippingAddress = _addressController.text;
                          showCheckoutDialog(context, shippingAddress);
                        },
                        style: ElevatedButton.styleFrom(
                          primary: Colors.white,
                        ),
                        child: Text(
                          'Payment',
                          style: TextStyle(
                            color: Colors.black,
                          ),
                        ),
                      )
                    ],
                  ),
                );
              })
            ],
          ),
        ),
      ),
    );
  }
}

class ReusableWidget extends StatelessWidget {
  final String title;
  final String value;
  final double titleFontSize; // Ukuran font untuk judul
  final double valueFontSize; // Ukuran font untuk nilai

  const ReusableWidget({
    required this.title,
    required this.value,
    this.titleFontSize = 16.0, // Ukuran font default untuk judul
    this.valueFontSize = 16.0, // Ukuran font default untuk nilai
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: TextStyle(
              fontSize: titleFontSize,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            value.toString(),
            style: TextStyle(
              fontSize: valueFontSize,
            ),
          )
        ],
      ),
    );
  }
}
