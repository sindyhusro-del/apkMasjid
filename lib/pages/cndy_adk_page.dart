import 'package:flutter/material.dart';

class CndyAdkPage extends StatefulWidget {
  const CndyAdkPage({super.key});

  @override
  State<CndyAdkPage> createState() => _CndyAdkPageState();
}

class _CndyAdkPageState extends State<CndyAdkPage> {
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
                "Akhlak Dan Kepribadian",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: 20),
            Center(
              child: Image.asset(
                "asesst/image/ss.adk.jpeg",
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
