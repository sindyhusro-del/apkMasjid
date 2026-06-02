import 'package:flutter/material.dart';

class CndyHoomPage extends StatefulWidget {
  const CndyHoomPage({super.key});

  @override
  State<CndyHoomPage> createState() => _CndyHoomPageState();
}

class _CndyHoomPageState extends State<CndyHoomPage> {
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
