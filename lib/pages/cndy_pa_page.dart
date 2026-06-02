import 'package:flutter/material.dart';

class CndyPaPage extends StatefulWidget {
  const CndyPaPage({super.key});

  @override
  State<CndyPaPage> createState() => _CndyPaPageState();
}

class _CndyPaPageState extends State<CndyPaPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green.shade300,
      body: Container(
        width: double.infinity,
        child: Column(
          children: [
            SizedBox(height: 20),
            Center(
              child: Text(
                "Hukum Orang Orang Maksiat",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: 20),
            Center(
              child: Image.asset(
                "asesst/image/ss.hoom.jpeg",
                width: 450,
                fit: BoxFit.contain,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
