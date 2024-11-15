import 'package:flutter/material.dart';
import '../model/alumni_model.dart';

class ProfileDetailPage extends StatelessWidget {
  final Alumni alumni;

  ProfileDetailPage({required this.alumni});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profil ${alumni.name}'),
        backgroundColor: Colors.blue,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            CircleAvatar(
              radius: 80, 
              backgroundColor: Colors.transparent, 
              child: ClipOval(
                child: Image.network(
                  'https://drive.google.com/uc?export=view&id=18uKdM8je0ADeW7qs35krqi35XXsG7Zc8',
                  width: 160, 
                  height: 160, 
                  fit: BoxFit.cover, 
                ),
              ),
            ),
          

            SizedBox(height: 20),
            Text(
              alumni.name,
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.blueAccent,
              ),
            ),
            SizedBox(height: 10),
            Text(
              'Tahun lulus: ${alumni.graduationYear}',
              style: TextStyle(fontSize: 18, color: Colors.black54),
            ),
            SizedBox(height: 20),

            Text(
              'Prodi: ${alumni.prodi}',
              style: TextStyle(fontSize: 18, color: Colors.black54),
            ),
            SizedBox(height: 20),

            // Bagian Angkatan
            Card(
              elevation: 4,
              margin: EdgeInsets.symmetric(vertical: 10),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  children: [
                    Icon(Icons.school, color: Colors.blue),
                    SizedBox(width: 10),
                    Expanded(
                      // Menambahkan Expanded agar teks tidak meluap
                      child: Text(
                        'Angkatan: ${alumni.batch}',
                        style: TextStyle(fontSize: 18),
                      ),
                    ),
                  ],
                ),
              ),
            ),

            // Bagian Pekerjaan
            Card(
              elevation: 4,
              margin: EdgeInsets.symmetric(vertical: 10),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  children: [
                    Icon(Icons.work, color: Colors.blue),
                    SizedBox(width: 10),
                    Expanded(
                      // Menambahkan Expanded agar teks tidak meluap
                      child: Text(
                        'Pekerjaan: ${alumni.currentJob}',
                        style: TextStyle(fontSize: 18),
                      ),
                    ),
                  ],
                ),
              ),
            ),

            // Bagian Kontak
            Card(
              elevation: 4,
              margin: EdgeInsets.symmetric(vertical: 10),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  children: [
                    Icon(Icons.email, color: Colors.blue),
                    SizedBox(width: 10),
                    Expanded(
                      // Menambahkan Expanded agar teks tidak meluap
                      child: Text(
                        'Kontak: ${alumni.contactInfo}',
                        style: TextStyle(fontSize: 18),
                      ),
                    ),
                  ],
                ),
              ),
            ),

            // Spacer atau divider untuk pemisah
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Aksi untuk edit profil atau akses riwayat pekerjaan
              },
              child: Align(
                alignment: Alignment.center, // Memastikan teks terpusat
                child: Text(
                  'Update Data',
                  style: TextStyle(
                    color: Colors.black, // Set the color of the text
                  ),
                ),
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.orange, // Warna tombol
                padding: EdgeInsets.symmetric(vertical: 12, horizontal: 50),
                textStyle: TextStyle(fontSize: 16),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
