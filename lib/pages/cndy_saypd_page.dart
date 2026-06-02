import 'package:flutter/material.dart';

class CndySaypdPage extends StatefulWidget {
  const CndySaypdPage({super.key});

  @override
  State<CndySaypdPage> createState() => _CndySaypdPageState();
}

class _CndySaypdPageState extends State<CndySaypdPage> {
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
                "Santunan Anak Yatim Piatu dan Dhufa",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
