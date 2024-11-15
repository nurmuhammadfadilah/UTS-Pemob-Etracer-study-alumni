// main.dart
import 'package:flutter/material.dart';
import 'pages/login_page.dart';
import 'pages/survey_page.dart';
import 'pages/work_history_page.dart';

void main() {
  runApp(ETracerStudyApp());
}

class ETracerStudyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'E-Tracer Alumni',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => LoginPage(),
        '/workHistory': (context) => WorkHistoryPage(),
        '/survey': (context) => SurveyPage(),  // Menambahkan route untuk SurveyPage
      },
    );
  }
}
