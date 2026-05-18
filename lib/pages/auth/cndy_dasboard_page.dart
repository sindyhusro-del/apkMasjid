import 'package:apk_masjid/model/cndy_category_model.dart';
import 'package:apk_masjid/pages/auth/cndy_home_page.dart';
import 'package:apk_masjid/service/cndy_category_service.dart';
import 'package:flutter/material.dart';

class CndyDasboardPage extends StatefulWidget {
  const CndyDasboardPage({super.key});

  @override
  State<CndyDasboardPage> createState() => _CndyDasboardPageState();
}

class _CndyDasboardPageState extends State<CndyDasboardPage> {
  int selectedIndex = 0;
  Map<int, CndyCategoryModel> pages = {
    0: CndyCategoryModel(
      icon: Icons.home,
      title: "Home",
      color: Colors.teal,
      page: CndyDasboardPage(),
    ),
    1: CndyCategoryModel(
      icon: Icons.settings,
      title: "Settings",
      color: Colors.teal,
      page: CndyDasboardPage(),
    ),
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedIndex,
        elevation: 5,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        onTap: (value) {
          setState(() {
            selectedIndex = value;
          });
        },
        items: pages.entries
            .map(
              (sindy) =>
              BottomNavigationBarItem(
                icon: Icon(sindy.value.icon, color: Colors.green),
                activeIcon: Icon(sindy.value.icon, color: sindy.value.color),
                label: sindy.value.title,
                backgroundColor: Colors.greenAccent,
              ),
        )
            .toList(),
      ),
      body: pages[selectedIndex]!.page,
    );
  }
}