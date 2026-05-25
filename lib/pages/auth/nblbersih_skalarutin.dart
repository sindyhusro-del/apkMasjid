import 'package:apk_masjid/service/cndy_bersih_service.dart';
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
      body: Column(
        children: [
          Container(width: double.infinity,height: 600,
            child: ListView.builder(
              itemBuilder: (context, i) => Column(
                children: [
                  Container(
                    color: Colors.green.shade200,
                    child: Text(bersih[i].title),
                  ),
                  Container(
                    width: double.infinity,
                    height: 200,
                    decoration: BoxDecoration(
                      image: DecorationImage(image: AssetImage(bersih[i].gambar)),
                    ),
                  ),
                ],
              ),
              itemCount: bersih.length,
            ),
          ),
        ],
      ),
    );
  }
}
