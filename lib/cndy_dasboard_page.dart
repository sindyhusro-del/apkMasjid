import 'package:apk_masjid/model/cndy_category_model.dart';
import 'package:apk_masjid/pages/auth/cndy_home_page.dart';
import 'package:flutter/material.dart';

class CndyDasboardPage extends StatefulWidget {
  const CndyDasboardPage({super.key});

  @override
  State<CndyDasboardPage> createState() => _CndyDasboardPageState();
}

class _CndyDasboardPageState extends State<CndyDasboardPage> {
  int selectedIndex = 0;
  Map <int, CndyCategoryModel> pages = {
    0: CndyCategoryModel(icon: Icons.home,  title: "Home", page: CndyHomePage()),
    1: CndyCategoryModel(icon: Icons.settings, title: "Profil", page: CndyHomePage()),
  };

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
