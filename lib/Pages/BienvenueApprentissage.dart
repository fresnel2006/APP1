import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class BienvenueApprentissagePage extends StatefulWidget {
  const BienvenueApprentissagePage({super.key});

  @override
  State<BienvenueApprentissagePage> createState() => _BienvenueApprentissagePageState();
}

class _BienvenueApprentissagePageState extends State<BienvenueApprentissagePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Container(
              child: Lottie.asset("assets/animations/Exams Preparation..json"),
            )
          ],
        ),
      ),
    );
  }
}
