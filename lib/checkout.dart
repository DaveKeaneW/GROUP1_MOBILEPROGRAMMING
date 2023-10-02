import 'package:flutter/material.dart';
import 'package:tesgit/otw.dart';

void main() {
  runApp(const checkout());
}

class checkout extends StatelessWidget {
  const checkout ({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: Color(0xFF201520),
      ),
      home: Scaffold(
        body: ListView(children: [
          KanePunya(),
        ]),
      ),
    );
  }
}

class KanePunya extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 412,
          height: 848,
          decoration: BoxDecoration(color: Color(0xFF201520)),
          child: Stack(
            children: [
        
                Positioned(
                left: 22,
                top: 19,
                child: Container(
                  width: 177,
                  height: 122,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 0,
                        top: 0,
                        child: SizedBox(
                          width: 95.47,
                          height: 58,
                          child: Text(
                            'déjà',
                            style: TextStyle(
                              color: Color(0x7FEFE2C8),
                              fontSize: 40,
                              fontFamily: 'Rosarivo',
                              fontWeight: FontWeight.w400,
                              height: 0,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 38,
                        top: 46,
                        child: SizedBox(
                          width: 139,
                          height: 76,
                          child: Text(
                            'Brew',
                            style: TextStyle(
                              color: Color(0xFFEFE3C8),
                              fontSize: 52,
                              fontFamily: 'Rosarivo',
                              fontWeight: FontWeight.w400,
                              height: 0,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),


              Positioned(
                left: 38,
                top: 595,
                child: Container(
                  width: 343,
                  height: 45,
                  padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                  decoration: ShapeDecoration(
                    color: Color(0xFF2E1E2E),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),



                  child: FittedBox(
                    fit: BoxFit.scaleDown,
                    child: Text(
                        'Shopee Pay ',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontFamily: 'OFL Sorts Mill Goudy TT',
                          fontWeight: FontWeight.w500,
                          height: 0,
                        ),
                      ),
                  ),
                ),
              ),

              Positioned(
                left: 38,
                top: 648,
                child: Container(
                  width: 343,
                  height: 45,
                  padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                  decoration: ShapeDecoration(
                    color: Color(0xFF2E1E2E),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),


                  
                  child: FittedBox(
                    fit: BoxFit.scaleDown,
                    child: Text.rich(
                        TextSpan(
                          children: [
                            TextSpan(
                              text: 'Cash',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontFamily: 'OFL Sorts Mill Goudy TT',
                                fontWeight: FontWeight.w500,
                                height: 0,
                              ),
                            ),
                            TextSpan(
                              text: ' ',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontFamily: 'OFL Sorts Mill Goudy TT',
                                fontWeight: FontWeight.w500,
                                height: 0,
                              ),
                            ),
                          ],
                        ),
                        textAlign: TextAlign.center,
                      ),
                  ),
                ),
              ),
                      Positioned(
          left: 38,
          top: 738,
          child: Container(
            width: 343,
            height: 45,
            padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 15),
            decoration: ShapeDecoration(
              color: Color(0xFF2E1E2E),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
            ),
            
            child: ElevatedButton( // Tambahkan ElevatedButton di sini
              onPressed: () {
                Navigator.push  ( context,
                                            MaterialPageRoute  (  builder: (context) => otw()   ),
                // Aksi yang ingin dilakukan saat tombol ditekan
                // Misalnya, pindah ke halaman checkout atau tampilkan pesan
                                );       
                            },
              style: ElevatedButton.styleFrom(
                primary: Color(0xFF2E1E2E),
                minimumSize: Size(343, 45), // Sesuaikan dengan ukuran kotak
              ), // Background color
                  child: Text(
                              'Check Out',
                  style: TextStyle  (
                  color: Colors.white,
                  fontSize: 16,
                  fontFamily: 'OFL Sorts Mill Goudy TT',
                  fontWeight: FontWeight.w500,
                  height: 0,
                                    ),
                              ),
                      ),
                  ),
              ),
             
              Positioned(
                left: 345,
                top: 45,
                child: Container(
                  width: 50,
                  height: 50,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 5,
                        top: 3,
                        child: Container(
                          width: 44,
                          height: 44,
                          decoration: ShapeDecoration(
                            shape: CircleBorder(
                              side: BorderSide(width: 1, color: Color(0xFFDCAA70)),
                            ),
                          ),
                          child: ClipOval(
                            child: Image.asset('images/user.png',fit: BoxFit.fill,),
                          ),
                        ),
                      ),
                      
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 42,
                top: 429,
                child: SizedBox(
                  width: 147,
                  height: 17,
                  child: Text(
                    'DELIVERY ADDRESS',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontFamily: 'Oleo Script',
                      fontWeight: FontWeight.w700,
                      height: 0,
                    ),
                  ),
                ),
              ),

              Positioned(
                left: 38,
                top: 454,
                child: Container(
                  width: 343,
                  height: 80,
                  decoration: ShapeDecoration(
                    color: Color(0xFF2E1E2E),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
              ),

             Positioned(
            left: 38,
            top: 454, // Sesuaikan posisi TextField sesuai kebutuhan
            child: Container(
              width: 343,
              height: 80,
              decoration: ShapeDecoration(
                color: Color(0xFF2E1E2E),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              child: TextField(
                style: TextStyle(color: Colors.white), // Ganti warna teks sesuai kebutuhan
                decoration: InputDecoration(
                  hintText: 'Enter your delivery address', // Text hint di dalam TextField
                  hintStyle: TextStyle(color: Colors.white.withOpacity(0.5)),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide.none, // Hilangkan garis pinggir
                  ),
                ),
                maxLines: 5, // Sesuaikan jumlah baris maksimum sesuai kebutuhan
              ),
            ),
          ),


                Positioned(
                left: 42,
                top: 571,
                child: SizedBox(
                  width: 260,
                  height: 16,
                  child: Text(
                    'CHOOSE  YOUR PAYMENT METHOD',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontFamily: 'Oleo Script',
                      fontWeight: FontWeight.w700,
                      height: 0,
                    ),
                  ),
                ),
              ),

              Positioned(
                left: 38,
                top: 180,
                child: Container(
                  width: 343,
                  height: 240,
                  decoration: ShapeDecoration(
                    color: Color(0xFF2E1E2E),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
              ),


              Positioned(
                left: 42,
                top: 158,
                child: SizedBox(
                  width: 98,
                  height: 15,
                  child: Text(
                    'YOUR ORDER',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontFamily: 'Oleo Script',
                      fontWeight: FontWeight.w700,
                      height: 0,
                    ),
                  ),
                ),
              ),

            Positioned(
            left: 38,
            top: 180, // Sesuaikan posisi TextField sesuai kebutuhan
            child: Container(
              width: 343,
              height: 240,
              decoration: ShapeDecoration(
                color: Color(0xFF2E1E2E),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              child: TextField(
                style: TextStyle(color: Colors.white), // Ganti warna teks sesuai kebutuhan
                decoration: InputDecoration(
                  hintText: 'Enter your order here', // Text hint di dalam TextField
                  hintStyle: TextStyle(color: Colors.white.withOpacity(0.5)),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide.none, // Hilangkan garis pinggir
                  ),
                ),
                maxLines: 5, // Sesuaikan jumlah baris maksimum sesuai kebutuhan
              ),
            ),
          ),

              Positioned(
                left: 0,
                top: 135,
                child: Container(
                  width: 800,
                  decoration: ShapeDecoration(
                    shape: RoundedRectangleBorder(
                      side: BorderSide(
                        width: 1,
                        strokeAlign: BorderSide.strokeAlignCenter,
                        color: Color(0xFFFDD7A2),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

