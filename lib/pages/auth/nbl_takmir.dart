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
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
        ),
        itemCount: 10,
        itemBuilder: (context, i) => Column(
          children: [
            ClipOval(
              child: Image.asset(
                'asesst/image/takmir.jpg',
                width: 200,
                height: 200,
              ),
            ),
            Container(
              color: Colors.green.shade900,
              child: Text(
                "Bpk.alexander",
                style: TextStyle(color: Colors.white, fontSize: 25),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
