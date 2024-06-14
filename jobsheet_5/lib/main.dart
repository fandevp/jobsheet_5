import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Daftar Mahasiswa',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    // Daftar mahasiswa dengan nama dan NIM
    final List<Map<String, String>> mahasiswa = [
      {
        'nama': 'MOCH. NASRULLAH BIN TAUFIQ A.R',
        'nim': 'STI202102420'
      }, // Nomor absen tepat di atas
      {
        'nama': 'DENNY KUSUMA WARDANA',
        'nim': 'STI202102421'
      }, // Nomor absen tepat di atas
      {'nama': 'AFFAN NUR AFTO', 'nim': 'STI202102422'}, // Anda
      {'nama': 'SURIPTO', 'nim': 'STI202102425'}, // Nomor absen tepat di bawah
      {
        'nama': 'RIZKA NUR KHARIFAH',
        'nim': 'STI202102431'
      }, // Nomor absen tepat di bawah
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text(
            'Daftar Mahasiswa Mata Kuliah Mobile Programming Lanjut :'),
      ),
      body: ListView.builder(
        itemCount: mahasiswa.length,
        itemBuilder: (context, index) {
          final item = mahasiswa[index];
          final isNamaSaya =
              item['nama'] == 'AFFAN NUR AFTO'; // Ganti dengan nama Anda

          return Container(
            color: isNamaSaya
                ? Colors.lightGreen
                : Colors.white, // Warna latar belakang
            child: ListTile(
              title: Text(item['nama']!),
              subtitle: Text(item['nim']!),
            ),
          );
        },
      ),
    );
  }
}
