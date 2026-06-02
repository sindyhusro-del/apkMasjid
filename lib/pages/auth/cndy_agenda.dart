import 'package:apk_masjid/pages/cndy_bbm_page.dart';
import 'package:apk_masjid/pages/cndy_pa_page.dart';
import 'package:apk_masjid/pages/cndy_prpm_page.dart';
import 'package:apk_masjid/pages/cndy_saypd_page.dart';
import 'package:flutter/material.dart';

class CndyAgenda extends StatefulWidget {
  const CndyAgenda({super.key});

  @override
  State<CndyAgenda> createState() => _CndyAgendaState();
}

class _CndyAgendaState extends State<CndyAgenda> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Agenda"), backgroundColor: Colors.green),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => CndyBbmPage()),
                );
              },
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.all(10),
                backgroundColor: Colors.green.shade300,
              ),
              child: Text(
                "Bersih bersih masjid",
                style: TextStyle(fontSize: 25),
              ),
            ),
            SizedBox(height: 30),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => CndyPaPage()),
                );
              },
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.all(10),
                backgroundColor: Colors.green.shade300,
              ),
              child: Text("Pengajian AlQuran", style: TextStyle(fontSize: 25)),
            ),
            SizedBox(height: 30),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => CndySaypdPage()),
                );
              },
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.all(10),
                backgroundColor: Colors.green.shade300,
              ),
              child: Text(
                "Santunan anak yatim piatu dan dhufa",
                style: TextStyle(fontSize: 25),
              ),
            ),
            SizedBox(height: 30),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => CndyPrpmPage()),
                );
              },
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.all(10),
                backgroundColor: Colors.green.shade300,
              ),
              child: Text(
                "Pertemuan rapat pengurus masjid",
                style: TextStyle(fontSize: 25),
              ),
            ),
            SizedBox(height: 30),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => CndyPrpmPage()),
                );
              },
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.all(10),
                backgroundColor: Colors.green.shade300,
              ),
              child: Text(
                "Pembagian jumat berkah",
                style: TextStyle(fontSize: 25),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
