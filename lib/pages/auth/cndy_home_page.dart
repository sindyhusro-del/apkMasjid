import 'package:apk_masjid/service/cndy_category_service.dart';
import 'package:apk_masjid/widget/banner/cndy_banner.dart';
import 'package:flutter/material.dart';

class CndyHomePage extends StatefulWidget {
  const CndyHomePage({super.key});

  @override
  State<CndyHomePage> createState() => _CndyHomePageState();
}

class _CndyHomePageState extends State<CndyHomePage> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Column(
      children: [
        SizedBox(
          width: size.width,
          height: 150,
          child: PageView(
            allowImplicitScrolling: true,
            scrollDirection: Axis.horizontal,
            children: [CndyBanner()],
          ),
        ),
        Container(
          decoration: BoxDecoration(
            border: Border.all(color: Colors.green.shade200, width: 2),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(radius: 30, backgroundColor: Colors.grey),
              SizedBox(
                height: 20,
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                  color: Colors.green.shade200,
                  child: Text(
                    "pppp",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                  ),
                ),
              ),
              Scaffold(
                backgroundColor: Colors.white,
                appBar: AppBar(
                  title: Text("Menu Masjid"),
                  backgroundColor: Colors.green,
                ),
              ),
              Padding(
                padding: EdgeInsets.all(15),
                child: GridView.count(
                  crossAxisCount: 2,
                  crossAxisSpacing: 15,
                  mainAxisSpacing: 15,
                  childAspectRatio: 1,
                  children: [
                    Text("Tausiyah"),
                    Text("Jadwal imam masjid"),
                    Text("Jadwal kebersihan masjid"),
                    Text("Takmir masjid"),
                    Text("Remaja masjid"),
                    Text("Agenda"),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
