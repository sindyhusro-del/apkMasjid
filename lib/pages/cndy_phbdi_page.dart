import 'package:flutter/material.dart';

class CndyPhbdiPage extends StatefulWidget {
  const CndyPhbdiPage({super.key});

  @override
  State<CndyPhbdiPage> createState() => _CndyPhbdiPageState();
}

class _CndyPhbdiPageState extends State<CndyPhbdiPage> {
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
                "Peringatan Hari Besar Dalam Islam",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: 20),
            Center(
              child: Image.asset(
                "asesst/image/ss.phbdi.jpeg",
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
