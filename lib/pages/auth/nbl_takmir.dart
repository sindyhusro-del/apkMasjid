import 'package:flutter/material.dart';

class NblTakmir extends StatefulWidget {
  const NblTakmir({super.key});

  @override
  State<NblTakmir> createState() => _NblTakmirState();
}

class _NblTakmirState extends State<NblTakmir> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.green[700],
        title: Text(
            "Takmir Masjid",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
