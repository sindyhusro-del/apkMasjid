import 'package:flutter/material.dart';

class CndyBbmPage extends StatefulWidget {
  const CndyBbmPage({super.key});

  @override
  State<CndyBbmPage> createState() => _CndyBbmPageState();
}

class _CndyBbmPageState extends State<CndyBbmPage> {
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
                "Bersih-bersih masjid",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
