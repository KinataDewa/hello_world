import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // Membuat widget titleSection
    Widget titleSection = Container(
      padding: const EdgeInsets.all(32.0), // Padding di sepanjang setiap tepi
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment:
                  CrossAxisAlignment.start, // Posisi kolom di awal baris
              children: [
                Container(
                  padding: const EdgeInsets.only(bottom: 8.0), // Padding bawah
                  child: const Text(
                    'Wisata Gunung di Batu',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0, // Ukuran font
                    ),
                  ),
                ),
                Text(
                  'Batu, Malang, Indonesia',
                  style: TextStyle(
                    color: Colors.grey, // Warna teks menjadi abu-abu
                    fontSize: 16.0, // Ukuran font
                  ),
                ),
              ],
            ),
          ),
          Icon(
            Icons.star, // Ikon bintang
            color: Colors.red, // Warna merah
          ),
          const Text('41'), // Jumlah rating
        ],
      ),
    );

    // Kembali ke MaterialApp
    return MaterialApp(
      title:
          'Flutter layout: Nama dan NIM Anda', // Ganti dengan nama dan NIM kamu
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter layout demo'),
        ),
        body: titleSection, // Menampilkan titleSection di body
      ),
    );
  }
}
