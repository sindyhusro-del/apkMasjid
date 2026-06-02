import 'package:flutter/material.dart';

class CndyKdaPage extends StatefulWidget {
  const CndyKdaPage({super.key});

  @override
  State<CndyKdaPage> createState() => _CndyKdaPageState();
}

class _CndyKdaPageState extends State<CndyKdaPage> {
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
                "Kehidupan Dunia Dan Akhirat",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: 20),
            Center(
              child: Image.asset(
                "asesst/image/ss.kda.jpeg",
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
