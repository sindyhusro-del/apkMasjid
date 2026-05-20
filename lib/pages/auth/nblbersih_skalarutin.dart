import 'package:flutter/material.dart';

class NblbersihSkalarutin extends StatefulWidget {
  const NblbersihSkalarutin({super.key});

  @override
  State<NblbersihSkalarutin> createState() => _NblbersihSkalarutinState();
}

class _NblbersihSkalarutinState extends State<NblbersihSkalarutin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green[700],
        centerTitle: true,
        title: Text(
          "Jadwal Kebersihan Masjid",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
      ),
    );
  }
}
