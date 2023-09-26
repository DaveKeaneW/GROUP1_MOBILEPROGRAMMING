import 'package:flutter/material.dart';

class MenuDrinks extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Menu Drinks'),
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
