import 'package:flutter/material.dart';

class NblImamMasjid extends StatefulWidget {
  const NblImamMasjid({super.key});

  @override
  State<NblImamMasjid> createState() => _NblImamMasjidState();
}

class _NblImamMasjidState extends State<NblImamMasjid> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("JADWAL IMAM MASJID"),
        backgroundColor: Colors.teal.shade200,
      ),
    );
  }
}
