import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class AlumniDetailPage extends StatelessWidget {
  final String name;
  final String jobTitle;
  final String company;
  final String email;
  final String graduationYear;  
  final String prodi;     

  // Constructor untuk menerima data alumni
  AlumniDetailPage({
    required this.name,
    required this.jobTitle,
    required this.company,
    required this.email,
    required this.graduationYear,  
    required this.prodi,      
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('$name - Detail'),
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: <Widget>[
            // Gambar Profil
            Center(
              child: CircleAvatar(
                radius: 50,
                backgroundColor: Colors.blue,
                child: Icon(
                  Icons.person,
                  size: 50,
                  color: Colors.white,
                ),
              ),
            ),
            SizedBox(height: 20),
            
            // Nama Alumni
            Card(
              elevation: 4,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  'Nama: $name',
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Colors.blueAccent,
                  ),
                ),
              ),
            ),
            SizedBox(height: 10),

            // Jabatan Alumni
            Card(
              elevation: 4,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  'Jabatan: $jobTitle',
                  style: TextStyle(fontSize: 18, color: Colors.black87),
                ),
              ),
            ),
            SizedBox(height: 10),

            // Perusahaan Alumni
            Card(
              elevation: 4,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  'Perusahaan: $company',
                  style: TextStyle(fontSize: 18, color: Colors.black87),
                ),
              ),
            ),
            SizedBox(height: 10),

            // Email Alumni
            Card(
              elevation: 4,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  'Email: $email',
                  style: TextStyle(fontSize: 18, color: Colors.black87),
                ),
              ),
            ),
            SizedBox(height: 10),

            // Tahun Lulus
            Card(
              elevation: 4,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  'Tahun Lulus: $graduationYear',
                  style: TextStyle(fontSize: 18, color: Colors.black87),
                ),
              ),
            ),
            SizedBox(height: 10),

            // Asal Prodi
            Card(
              elevation: 4,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  'Program Studi: $prodi',
                  style: TextStyle(fontSize: 18, color: Colors.black87),
                ),
              ),
            ),
            SizedBox(height: 20),

            // Tombol untuk menghubungi alumni
            ElevatedButton(
              onPressed: () {
                // Fungsi untuk menghubungi alumni melalui email
                final Uri _emailLaunchUri = Uri(
                  scheme: 'mailto',
                  path: email,
                  queryParameters: {'subject': 'Hello $name'},
                );
                launch(_emailLaunchUri.toString());
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.orange,
                padding: EdgeInsets.symmetric(vertical: 12, horizontal: 40),
                textStyle: TextStyle(fontSize: 16),
              ),
              child: Text('Hubungi Alumni', 
                style: TextStyle(color: Colors.black),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
