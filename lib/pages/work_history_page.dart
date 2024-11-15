import 'package:flutter/material.dart';

class WorkHistoryPage extends StatelessWidget {
  final List<Map<String, String>> workHistory = [
    {
      'jobTitle': 'Software Engineer',
      'company': 'Google',
      'startDate': '2026',
      'endDate': 'Present',
      'description': 'Membangun aplikasi dan sistem backend menggunakan berbagai teknologi.'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Riwayat Pekerjaan'),
        backgroundColor: Colors.blue,
      ),
      body: ListView.builder(
        itemCount: workHistory.length,
        itemBuilder: (context, index) {
          var job = workHistory[index];
          return Card(
            margin: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    job['jobTitle']!,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 5),
                  Text(
                    '${job['company']} | ${job['startDate']} - ${job['endDate']}',
                    style: TextStyle(fontSize: 16, color: Colors.grey[600]),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Deskripsi Pekerjaan:',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 5),
                  Text(
                    job['description']!,
                    style: TextStyle(fontSize: 14),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
