import 'package:flutter/material.dart';

class NblRemas extends StatefulWidget {
  const NblRemas({super.key});

  @override
  State<NblRemas> createState() => _NblRemasState();
}

class _NblRemasState extends State<NblRemas> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.green[700],
        title: Text(
          "Remaja Masjid",
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
                'asesst/image/remas.cewek.jpeg',
                width: 200,
                height: 200,
              ),
            ),
            Container(
              color: Colors.green.shade900,
              child: Text(
                "Kak Gendis",
                style: TextStyle(color: Colors.white, fontSize: 25),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
