import 'package:flutter/material.dart';
import 'package:codia_demo_flutter/codia_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'CodiaDemoFlutter',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      home: SingleChildScrollView(child: CodiaPage()),
    );
  }
}
