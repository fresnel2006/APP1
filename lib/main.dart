import 'package:app1/Pages/Acceuille.dart';
import 'package:app1/Pages/Bienvenue.dart';
import 'package:app1/Pages/Inscription.dart';
import 'package:app1/Pages/Switch.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body:BienvenuePage(),
      ),
    );
  }
}
