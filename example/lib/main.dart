import 'package:auto_size_text_plus/auto_size_text_plus.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: Center(
          child: SizedBox(
            width: 200,
            height: 140,
            child: AutoSizeText(
              'This string will be automatically resized to fit in two lines.',
              style: TextStyle(fontSize: 30),
              maxLines: 2,
            ),
          ),
        ),
      ),
    );
  }
}