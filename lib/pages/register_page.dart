import 'package:flutter/material.dart';
import 'dart:async'; 

class RegisterPage extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Daftar'),
        backgroundColor: Colors.blueAccent,
      ),
      body: SingleChildScrollView( 
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch, // Menyesuaikan lebar widget
            children: [
              Icon(Icons.person, size: 100, color: Colors.blueAccent),
              SizedBox(height: 20),
              TextField(
                decoration: InputDecoration(
                    labelText: 'Nama Lengkap', border: OutlineInputBorder()),
              ),
              SizedBox(height: 20),
              TextField(
                decoration: InputDecoration(
                    labelText: 'NIM', border: OutlineInputBorder()),
              ),
              SizedBox(height: 20),
              TextField(
                decoration: InputDecoration(
                    labelText: 'Email', border: OutlineInputBorder()),
              ),
              SizedBox(height: 20),
              TextField(
                decoration: InputDecoration(
                    labelText: 'Password', border: OutlineInputBorder()),
                obscureText: true,
              ),
              SizedBox(height: 20),
              TextField(
                decoration: InputDecoration(
                    labelText: 'Confirm Password', border: OutlineInputBorder()),
                obscureText: true,
              ),
              SizedBox(height: 20),
              TextField(
                decoration: InputDecoration(
                    labelText: 'Alamat', border: OutlineInputBorder()),
              ),
              SizedBox(height: 20),
              TextField(
                decoration: InputDecoration(
                    labelText: 'No HP', border: OutlineInputBorder()),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  // Tampilkan dialog pendaftaran berhasil
                  showDialog(
                    context: context,
                    builder: (context) {
                      return Center(
                        child: Material(
                          type: MaterialType.transparency,
                          child: Container(
                            padding: EdgeInsets.all(20),
                            margin: EdgeInsets.symmetric(horizontal: 30),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(15),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withOpacity(0.3),
                                  spreadRadius: 5,
                                  blurRadius: 10,
                                  offset: Offset(0, 5),
                                )
                              ],
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Text(
                                  'Pendaftaran berhasil dilakukan',
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 18),
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                  );

                  // Timer untuk menutup dialog dan kembali ke LoginPage
                  Timer(Duration(milliseconds: 2000), () {
                    Navigator.pop(context); // Menutup dialog
                    Navigator.pop(context); // Kembali ke halaman Login
                  });
                },
                child: Text('Daftar'),
              ),
              TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text(
                    'Sudah punya akun ? Login',
                    style: TextStyle(color: Colors.black),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
