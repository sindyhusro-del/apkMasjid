import 'package:flutter/material.dart';

class NblbersihSkalarutin extends StatefulWidget {
  const NblbersihSkalarutin({super.key});

  @override
  State<NblbersihSkalarutin> createState() => _NblbersihSkalarutinState();
}

class _NblbersihSkalarutinState extends State<NblbersihSkalarutin> {

  List<String> hari = [
    "SENIN",
    "SELASA",
    "RABU",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green[700],
        centerTitle: true,
        title: const Text(
          "BERSIH-BERSIH SKALA RUTIN",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
      ),

      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            children: List.generate(hari.length, (index) {
              return Padding(
                padding:EdgeInsets.only(bottom: 30),
                child: Column(
                  children: [

                    // Judul Hari
                    Container(
                      width: 200,
                      padding: EdgeInsets.symmetric(vertical: 10),
                      decoration: BoxDecoration(
                        color: Colors.green[300],
                      ),
                      child: Center(
                        child: Text(
                          hari[index],
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 28,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Serif',
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              );
            }),
          ),
        ),
      ),
    );
  }
}