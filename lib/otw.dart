import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'enjoy.dart';

class OnTheWay extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Food Delivery',
            style: TextStyle(
              fontFamily: GoogleFonts.jacquesFrancois().fontFamily,
              color: Colors.white, // Warna teks AppBar
              fontSize: 24, // Ukuran teks
            ),
          ),
          backgroundColor: Color(0xFF201520), // Warna latar belakang AppBar
          centerTitle: true, // Menengahkan teks judul AppBar
          toolbarHeight: 120, // Menetapkan tinggi AppBar menjadi 120
        ),
        body: Container(
          color: Color(0xFF201520), // Warna latar belakang body
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Image.asset(
                  'images/maps.png', // Ganti dengan path gambar Anda
                  width: 300, // Sesuaikan dengan lebar yang Anda inginkan
                  height: 300, // Sesuaikan dengan tinggi yang Anda inginkan
                ),
                SizedBox(height: 20),
                Text(
                  'Your Food on the way',
                  style: TextStyle(
                    fontSize: 24, // Ukuran teks
                    fontWeight: FontWeight.bold,
                    color: Colors.white, // Warna teks
                  ),
                ),
                SizedBox(height: 20),
                Text(
                  'Est. Delivery Time: 10Min',
                  style: TextStyle(
                    fontSize: 18, // Ukuran teks
                    color: Colors.white, // Warna teks
                  ),
                ),
                SizedBox(height: 20), // Menambahkan jarak vertical
                ElevatedButton(
                  onPressed: () {
                    // Navigasi ke halaman lain ketika tombol ditekan
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => enjoy(), // Ganti dengan halaman yang sesuai
                    ));
                  },
                  style: ElevatedButton.styleFrom(
                    primary: const Color.fromARGB(255, 255, 255, 255), // Warna latar belakang tombol
                    onPrimary: const Color.fromARGB(255, 0, 0, 0), // Warna teks tombol
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15), // Ukuran padding tombol
                    textStyle: TextStyle(
                      fontSize: 18, // Ukuran teks tombol
                    ),
                  ),
                  child: Text('Selesaikan Pesanan'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}