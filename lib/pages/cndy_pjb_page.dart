import 'package:flutter/material.dart';

class CndyPjbPage extends StatefulWidget {
  const CndyPjbPage({super.key});

  @override
  State<CndyPjbPage> createState() => _CndyPjbPageState();
}

class _CndyPjbPageState extends State<CndyPjbPage> {
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
                "Pembagian Jumat Berkah",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
