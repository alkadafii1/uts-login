import 'package:flutter/material.dart';
import 'dart:async'; // Untuk delay

class HomePage extends StatelessWidget {
  final String nama = "Alkadafi";  
  final String email = "alkadafi@gmail.com"; 
  final int nim = 362358302108; 
  final String alamat = "Jln.ikan"; 
  final int noHp = 081234567890; 

  Widget build(BuildContext context) {
  
    Timer(Duration(seconds: 2), () {
      Navigator.pop(context);
    });

    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
        backgroundColor: Colors.blueAccent,
      ),
      body: Center( // Ini yang memusatkan semua konten
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center, // Pastikan ini ada untuk memusatkan secara horizontal
            children: [
              Icon(Icons.person, size: 100, color: Colors.blueAccent),
              SizedBox(height: 20),
              Text('Nama: $nama', textAlign: TextAlign.center), // textAlign ditambahkan
              SizedBox(height: 10),
              Text('NIM: $nim', textAlign: TextAlign.center), // textAlign ditambahkan
              SizedBox(height: 10),
              Text('Email: $email', textAlign: TextAlign.center), // textAlign ditambahkan
              SizedBox(height: 10),
              Text('Alamat: $alamat', textAlign: TextAlign.center), // textAlign ditambahkan
              SizedBox(height: 10),
              Text('No. HP: $noHp', textAlign: TextAlign.center), // textAlign ditambahkan
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text('Keluar'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
