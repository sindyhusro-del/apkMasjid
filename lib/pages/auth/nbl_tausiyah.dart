import 'package:apk_masjid/pages/cndy_adk_page.dart';
import 'package:apk_masjid/pages/cndy_hoom_page.dart';
import 'package:apk_masjid/pages/cndy_kda_page.dart';
import 'package:apk_masjid/pages/cndy_mmlq_page.dart';
import 'package:apk_masjid/pages/cndy_phbdi_page.dart';
import 'package:apk_masjid/service/cndy_tausiyah_service.dart';
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
      appBar: AppBar(title: Text("Tausiyah"), backgroundColor: Colors.green),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => CndyMmlqPage()),
                );
              },
              style: ElevatedButton.styleFrom(padding: EdgeInsets.all(10)),
              child: Text(
                "Malam-Malam Lailatul Qadar",
                style: TextStyle(
                  backgroundColor: Colors.green.shade300,
                  fontSize: 25,
                ),
              ),
            ),
            SizedBox(height: 30),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => CndyHoomPage()),
                );
              },
              style: ElevatedButton.styleFrom(padding: EdgeInsets.all(10)),
              child: Text(
                "Hukum Orang Orang Maksiat",
                style: TextStyle(
                  backgroundColor: Colors.green.shade300,
                  fontSize: 25,
                ),
              ),
            ),
            SizedBox(height: 30),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => CndyKdaPage()),
                );
              },
              style: ElevatedButton.styleFrom(padding: EdgeInsets.all(10)),
              child: Text(
                "Kehidupan Dunia Dan Akhirat",
                style: TextStyle(
                  backgroundColor: Colors.green.shade300,
                  fontSize: 25,
                ),
              ),
            ),
            SizedBox(height: 30),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => CndyPhbdiPage()),
                );
              },
              style: ElevatedButton.styleFrom(padding: EdgeInsets.all(10)),
              child: Text(
                "Peringatan Hari Besar Dalam Islam",
                style: TextStyle(
                  backgroundColor: Colors.green.shade300,
                  fontSize: 25,
                ),
              ),
            ),
            SizedBox(height: 30),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => CndyAdkPage()),
                );
              },
              style: ElevatedButton.styleFrom(padding: EdgeInsets.all(10)),
              child: Text(
                "Akhlak Dan Kepribadian",
                style: TextStyle(
                  backgroundColor: Colors.green.shade300,
                  fontSize: 25,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
