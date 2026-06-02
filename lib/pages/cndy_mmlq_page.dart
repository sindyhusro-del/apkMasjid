import 'package:flutter/material.dart';

class CndyMmlqPage extends StatefulWidget {
  const CndyMmlqPage({super.key});

  @override
  State<CndyMmlqPage> createState() => _CndyMmlqPageState();
}

class _CndyMmlqPageState extends State<CndyMmlqPage> {
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
                "Malam-Malam Lailatul Qadar",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: 20),
            Center(
              child: Image.asset(
                "asesst/image/ss.mmlq.jpeg",
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
