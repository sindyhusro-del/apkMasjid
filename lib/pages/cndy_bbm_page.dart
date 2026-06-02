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
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Container(color:Colors.green.shade300,
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
              SizedBox(height: 40),
              Text("Dilaksanakan pada tanggal;", style: TextStyle(fontSize: 30)),
              Text("01/05/2026", style: TextStyle(fontSize: 35)),
              Text("Pukul/Waktu;", style: TextStyle(fontSize: 35)),
              Text("08:00 pagi", style: TextStyle(fontSize: 35)),
            ],
          ),
        ),
      ),
    );
  }
}
