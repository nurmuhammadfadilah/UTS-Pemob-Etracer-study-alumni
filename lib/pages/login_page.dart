import 'package:flutter/material.dart';
import 'home_page.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController nimController = TextEditingController();

  void _submit() {
    final password = passwordController.text.trim();
    final nim = nimController.text.trim();

    if (password.isNotEmpty && nim.isNotEmpty) {
      // Navigasi ke halaman utama jika password dan NIM sudah diisi
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => HomePage()),
      );
    } else {
      // Tampilkan pesan error jika salah satu input kosong
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Harap isi password dan NIM')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login E-Tracer Alumni'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
                'Welcome to E-Tracer Study Alumni',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue[900],
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 40),
            TextField(
              controller: nimController,
              decoration: InputDecoration(
                labelText: 'NIM',
                filled: true,
                fillColor: Colors.white,
              ),
              keyboardType: TextInputType.number,
            ),
            SizedBox(height: 32),
            TextField(
              controller: passwordController,
              decoration: InputDecoration(
                labelText: 'Password',
                filled: true,
                fillColor: Colors.white,
              ),
              obscureText: true, // Menyembunyikan teks yang diketik
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: _submit,
              child: Text('Login',
              style: TextStyle(
                color: Colors.black
                ),
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.orange, // Warna tombol oranye
                padding: EdgeInsets.symmetric(
                    vertical: 12, horizontal: 40), // Padding tombol
                textStyle: TextStyle(
                    color: Colors.white), // Teks tombol berwarna putih
              ),
            ),
          ],
        ),
      ),
    );
  }
}
