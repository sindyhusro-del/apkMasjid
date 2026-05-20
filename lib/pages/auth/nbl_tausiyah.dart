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
      appBar: AppBar(
        title: Text("Tausiyah"),
        backgroundColor: Colors.green,

      ),
    );
  }
}
