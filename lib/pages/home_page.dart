import 'package:flutter/material.dart';
import 'profile_detail_page.dart';
import '../model/alumni_model.dart';
import 'alumni_detail_page.dart'; // Pastikan file alumni_detail_page.dart diimpor

class HomePage extends StatelessWidget {
  final List<Alumni> alumniList = [
    Alumni(
      id: '1',
      name: 'Nur Muhammad Fadilah',
      batch: '2022',
      prodi: 'Teknik Informatika',
      graduationYear: '2026',
      currentJob: 'Software Engineer',
      contactInfo: 'muhammfadilah7@student.esaunggul.ac.id',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    final alumni = alumniList[0];

    return Scaffold(
      appBar: AppBar(
        title: Text('Dashboard Alumni'),
        backgroundColor: Colors.blue,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            // Menampilkan salam selamat datang beserta informasi alumni
            Text(
              'Selamat Datang, ${alumni.name}!',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ProfileDetailPage(alumni: alumni),
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.orange, // Warna tombol
                    padding: EdgeInsets.symmetric(vertical: 12, horizontal: 35),
                    textStyle: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                  child: Text(
                    'Lihat Profil',
                    style: TextStyle(color: Colors.black),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/workHistory');
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.orange, // Warna tombol
                    padding: EdgeInsets.symmetric(vertical: 12, horizontal: 20),
                    textStyle: TextStyle(fontSize: 16),
                  ),
                  child: Text(
                    'Riwayat Pekerjaan',
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),

            // Alumni Statistics Section
            Card(
              elevation: 4,
              margin: EdgeInsets.symmetric(vertical: 10),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Survey',
                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 10),
                    Text('Pengalaman anda setelah lulus'),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        ElevatedButton(
                          onPressed: () {
                            Navigator.pushNamed(context, '/survey');
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.orange, // Warna tombol
                            padding: EdgeInsets.symmetric(
                                vertical: 12, horizontal: 20),
                            textStyle: TextStyle(fontSize: 16),
                          ),
                          child: Text(
                            'Isi Survey',
                            style: TextStyle(color: Colors.black),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 20),

            // Alumni Network Section
            Card(
              elevation: 4,
              margin: EdgeInsets.symmetric(vertical: 10),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Jaringan Alumni',
                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 10),
                    // Daftar Alumni
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // Alumni 1
                        ListTile(
                          leading: Icon(Icons.person, color: Colors.blue),
                          title: Text('James Bond', style: TextStyle(fontSize: 16)),
                          subtitle: Text('Software Engineer at Google', style: TextStyle(fontSize: 14)),
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => AlumniDetailPage(
                                  name: 'James Bond',
                                  jobTitle: 'Software Engineer at Google',
                                  company: 'Google',
                                  email: 'james.bond@google.com',
                                  prodi: 'Teknik Informatika',
                                  graduationYear: '2022',
                                ),
                              ),
                            );
                          },
                        ),
                        Divider(), // Pembatas antar alumni

                        // Alumni 2
                        ListTile(
                          leading: Icon(Icons.person, color: Colors.blue),
                          title: Text('Jane Smith', style: TextStyle(fontSize: 16)),
                          subtitle: Text('Product Manager at Apple', style: TextStyle(fontSize: 14)),
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => AlumniDetailPage(
                                  name: 'Jane Smith',
                                  jobTitle: 'Product Manager at Apple',
                                  company: 'Apple',
                                  email: 'jane.smith@apple.com',
                                  prodi: 'Teknik Informatika',
                                  graduationYear: '2022',
                                ),
                              ),
                            );
                          },
                        ),
                        Divider(),

                        // Alumni 3
                        ListTile(
                          leading: Icon(Icons.person, color: Colors.blue),
                          title: Text('Alice Johnson', style: TextStyle(fontSize: 16)),
                          subtitle: Text('Data Scientist at Microsoft', style: TextStyle(fontSize: 14)),
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => AlumniDetailPage(
                                  name: 'Alice Johnson',
                                  jobTitle: 'Data Scientist at Microsoft',
                                  company: 'Microsoft',
                                  email: 'alice.johnson@microsoft.com',
                                  prodi: 'Teknik Informatika',
                                  graduationYear: '2022',
                                ),
                              ),
                            );
                          },
                        ),
                        Divider(),

                        // Alumni 4
                        ListTile(
                          leading: Icon(Icons.person, color: Colors.blue),
                          title: Text('Bob Brown', style: TextStyle(fontSize: 16)),
                          subtitle: Text('UX Designer at Tesla', style: TextStyle(fontSize: 14)),
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => AlumniDetailPage(
                                  name: 'Bob Brown',
                                  jobTitle: 'UX Designer at Tesla',
                                  company: 'Tesla',
                                  email: 'bob.brown@tesla.com',
                                  prodi: 'Teknik Informatika',
                                  graduationYear: '2022',
                                ),
                              ),
                            );
                          },
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _StatCard extends StatelessWidget {
  final String label;
  final String value;

  const _StatCard({
    required this.label,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(value, style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
        Text(label),
      ],
    );
  }
}

class _AlumniNetworkTile extends StatelessWidget {
  final String title;
  final IconData icon;

  const _AlumniNetworkTile({
    required this.title,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(icon, color: Colors.blue),
      title: Text(title),
      onTap: () {
        // Aksi jika tile diklik
        // Bisa ditambahkan link atau navigasi ke halaman terkait
      },
    );
  }
}
