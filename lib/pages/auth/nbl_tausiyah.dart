import 'package:flutter/material.dart';

class NblTausiyah extends StatefulWidget {
  const NblTausiyah({super.key});

  @override
  State<NblTausiyah> createState() => _NblTausiyahState();
}

class _NblTausiyahState extends State<NblTausiyah> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            width: double.infinity,
            padding: const EdgeInsets.only(top: 60, left: 25, bottom: 30,
            ),
            decoration: BoxDecoration(
              gradient:  LinearGradient(
                colors: [
                  Colors.green.shade300,
                  Colors.green.shade200,
                  Colors.grey.shade400,
                  Colors.black12,
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
            ),
          SizedBox(height: 20),
        ],
      ),
    );
  }
}
