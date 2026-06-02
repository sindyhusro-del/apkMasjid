import 'package:flutter/material.dart';

class CndyPrpmPage extends StatefulWidget {
  const CndyPrpmPage({super.key});

  @override
  State<CndyPrpmPage> createState() => _CndyPrpmPageState();
}

class _CndyPrpmPageState extends State<CndyPrpmPage> {
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
                "Pertemuan rapat Pengurus Masjid",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
