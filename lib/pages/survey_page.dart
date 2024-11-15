import 'package:flutter/material.dart';

class SurveyPage extends StatefulWidget {
  @override
  _SurveyPageState createState() => _SurveyPageState();
}

class _SurveyPageState extends State<SurveyPage> {
  final _formKey = GlobalKey<FormState>();
  String? _satisfactionLevel;
  String? _currentJobStatus;
  String? _degreeSatisfaction;
  TextEditingController _commentsController = TextEditingController();
  TextEditingController _additionalJobInfoController = TextEditingController();

  // Dropdown options for survey questions
  final List<String> satisfactionOptions = [
    'Sangat Puas',
    'Puas',
    'Cukup Puas',
    'Tidak Puas',
  ];

  final List<String> jobStatusOptions = [
    'Bekerja',
    'Melanjutkan Studi',
    'Mencari Kerja',
    'Lainnya',
  ];

  final List<String> degreeSatisfactionOptions = [
    'Sangat Memuaskan',
    'Memuaskan',
    'Cukup Memuaskan',
    'Tidak Memuaskan',
  ];

  Widget _buildJobStatusAdditionalInfo() {
    if (_currentJobStatus == 'Bekerja' ||
        _currentJobStatus == 'Mencari Kerja') {
      return Column(
        children: [
          SizedBox(height: 20),
          Text(
            '4. Jika bekerja, di bidang apa Anda bekerja? Jika mencari kerja, apa bidang yang Anda cari?',
            style: TextStyle(fontSize: 16),
          ),
          TextFormField(
            controller: _additionalJobInfoController,
            decoration: InputDecoration(
              hintText:
                  'Deskripsikan bidang pekerjaan atau pencarian kerja Anda',
              border: OutlineInputBorder(),
            ),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Harap beri penjelasan lebih lanjut';
              }
              return null;
            },
          ),
        ],
      );
    } else if (_currentJobStatus == 'Melanjutkan Studi') {
      return Column(
        children: [
          SizedBox(height: 20),
          Text(
            '4. Jika melanjutkan studi, di program studi apa Anda melanjutkan pendidikan?',
            style: TextStyle(fontSize: 16),
          ),
          TextFormField(
            controller: _additionalJobInfoController,
            decoration: InputDecoration(
              hintText: 'Masukkan program studi atau jurusan Anda',
              border: OutlineInputBorder(),
            ),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Harap beri penjelasan lebih lanjut';
              }
              return null;
            },
          ),
        ],
      );
    } else if (_currentJobStatus == 'Lainnya') {
      return Column(
        children: [
          SizedBox(height: 20),
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              '4. Jelaskan status Anda lebih lanjut:',
              style: TextStyle(fontSize: 16),
            ),
          ),
          TextFormField(
            controller: _additionalJobInfoController,
            decoration: InputDecoration(
              hintText: 'Masukkan penjelasan status Anda',
              border: OutlineInputBorder(),
            ),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Harap beri penjelasan lebih lanjut';
              }
              return null;
            },
          ),
        ],
      );
    }
    return SizedBox
        .shrink(); 
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Survey Alumni'),
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                // Pertanyaan 1: Kepuasan Pendidikan
                Text(
                  '1. Seberapa puas Anda dengan pendidikan yang Anda dapatkan selama kuliah?',
                  style: TextStyle(fontSize: 16),
                ),
                DropdownButtonFormField<String>(
                  value: _satisfactionLevel,
                  items: satisfactionOptions
                      .map((String option) => DropdownMenuItem<String>(
                          value: option, child: Text(option)))
                      .toList(),
                  hint: Text('Pilih tingkat kepuasan'),
                  onChanged: (value) {
                    setState(() {
                      _satisfactionLevel = value;
                    });
                  },
                  validator: (value) {
                    if (value == null) {
                      return 'Pilih tingkat kepuasan Anda';
                    }
                    return null;
                  },
                ),
                SizedBox(height: 20),

                // Pertanyaan 2: Status Pekerjaan
                Text(
                  '2. Status pekerjaan Anda setelah lulus:',
                  style: TextStyle(fontSize: 16),
                ),
                DropdownButtonFormField<String>(
                  value: _currentJobStatus,
                  items: jobStatusOptions
                      .map((String option) => DropdownMenuItem<String>(
                          value: option, child: Text(option)))
                      .toList(),
                  hint: Text('Pilih status pekerjaan'),
                  onChanged: (value) {
                    setState(() {
                      _currentJobStatus = value;
                    });
                  },
                  validator: (value) {
                    if (value == null) {
                      return 'Pilih status pekerjaan Anda';
                    }
                    return null;
                  },
                ),
                SizedBox(height: 20),

                // Pertanyaan 3: Kepuasan dengan Jurusan
                Text(
                  '3. Seberapa puas Anda dengan jurusan yang Anda pilih selama kuliah?',
                  style: TextStyle(fontSize: 16),
                ),
                DropdownButtonFormField<String>(
                  value: _degreeSatisfaction,
                  items: degreeSatisfactionOptions
                      .map((String option) => DropdownMenuItem<String>(
                          value: option, child: Text(option)))
                      .toList(),
                  hint: Text('Pilih tingkat kepuasan jurusan'),
                  onChanged: (value) {
                    setState(() {
                      _degreeSatisfaction = value;
                    });
                  },
                  validator: (value) {
                    if (value == null) {
                      return 'Pilih tingkat kepuasan jurusan';
                    }
                    return null;
                  },
                ),
                SizedBox(height: 20),

                // Menampilkan pertanyaan turunan berdasarkan status pekerjaan
                _buildJobStatusAdditionalInfo(),

                // Bagian komentar atau saran
                SizedBox(height: 20),
                Text(
                  '5. Berikan komentar atau saran untuk perbaikan pendidikan di masa depan:',
                  style: TextStyle(fontSize: 16),
                ),
                TextFormField(
                  controller: _commentsController,
                  maxLines: 5,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Tuliskan komentar atau saran Anda',
                  ),
                ),
                SizedBox(height: 20),

                // Tombol Kirim Survey
                Center(
                  child: ElevatedButton(
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        // Jika validasi berhasil, tampilkan hasil survey
                        showDialog(
                          context: context,
                          builder: (context) {
                            return AlertDialog(
                              title: Text('Terima Kasih'),
                              content: Text('Survei Anda telah terkirim!'),
                              actions: <Widget>[
                                TextButton(
                                  child: Text('Tutup'),
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                  },
                                ),
                              ],
                            );
                          },
                        );
                      }
                    },
                    child: Text('Kirim Survey'),
                    style: ElevatedButton.styleFrom(
                      padding:
                          EdgeInsets.symmetric(vertical: 12, horizontal: 50),
                      backgroundColor: Colors.orange,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
