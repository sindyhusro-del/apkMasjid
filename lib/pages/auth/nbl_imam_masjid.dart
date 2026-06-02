import 'package:apk_masjid/service/cndy_imam_service.dart';
import 'package:flutter/material.dart';

class NblImamMasjid extends StatefulWidget {
  const NblImamMasjid({super.key});

  @override
  State<NblImamMasjid> createState() => _NblImamMasjidState();
}

class _NblImamMasjidState extends State<NblImamMasjid> {
  @override
  Widget build(BuildContext context) {
    var size=MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text("Jadwal Imam Masid"),
        backgroundColor: Colors.green.shade400,
      ),
      body: Column(
        children: [
          Container(
            width: double.infinity,
            height: 100,
            child: ListView.builder(
              itemBuilder: (context, i) => Column(
                children: [
                  Container(
                    color: Colors.green.shade200,
                    child: Text(imam[i].title),
                  ),
                  Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        width: size.width*0.3,
                        height: 150,
                        decoration: BoxDecoration(
                          image: DecorationImage(image: AssetImage(imam[i].image),fit: BoxFit.cover),
                        ),
                      ),Container(
                        width: size.width*0.3,
                        height: 150,
                        decoration: BoxDecoration(
                          image: DecorationImage(image: AssetImage(imam[i].image),fit: BoxFit.cover),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              itemCount: imam.length,
              ),
            ),
        ],
      ),
    );
  }
}
