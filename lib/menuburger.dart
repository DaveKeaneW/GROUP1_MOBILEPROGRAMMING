import 'package:flutter/material.dart';

class MenuBurger extends StatefulWidget {
  @override
  _MenuBurgerState createState() => _MenuBurgerState();
}

class _MenuBurgerState extends State<MenuBurger> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Menu Burger'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            // Isi menu burger di sini, seperti gambar, deskripsi, harga, dll.
            // Anda dapat menggunakan berbagai widget seperti ListTile, Card, dsb.
          ],
        ),
      ),
    );
  }
}
