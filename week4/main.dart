import 'package:flutter/material.dart';
import 'package:week_4_bytwise/animations/implecit_animations/animated_logo.dart';
import 'animations/implecit_animations/animated_opacity widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const LogoApp(),
    );
  }
}
