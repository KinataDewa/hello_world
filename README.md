## Laporan P6

### Praktikum 1: Membangun Layout di Flutter

#### Langkah 1: Buat Project Baru

#### Langkah 2: Buka file lib/main.dart

#### Langkah 3: Identifikasi layout diagram

#### Langkah 4: Implementasi title row

<img src="/img/1.png">

1. Letakkan widget Column di dalam widget Expanded agar menyesuaikan ruang yang tersisa di dalam widget Row. Tambahkan properti crossAxisAlignment ke CrossAxisAlignment.start sehingga posisi kolom berada di awal baris.

2. Letakkan baris pertama teks di dalam Container sehingga memungkinkan Anda untuk menambahkan padding = 8. Teks ‘Batu, Malang, Indonesia' di dalam Column, set warna menjadi abu-abu.

3. Dua item terakhir di baris judul adalah ikon bintang, set dengan warna merah, dan teks "41". Seluruh baris ada di dalam Container dan beri padding di sepanjang setiap tepinya sebesar 32 piksel. Kemudian ganti isi body text ‘Hello World' dengan variabel titleSection seperti berikut:

```dart
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
              crossAxisAlignment: CrossAxisAlignment.start, // Posisi kolom di awal baris
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
      title: 'Flutter layout: Nama dan NIM Anda', // Ganti dengan nama dan NIM kamu
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter layout demo'),
        ),
        body: titleSection, // Menampilkan titleSection di body
      ),
    );
  }
}

```

### . Praktikum 2: Implementasi button row

