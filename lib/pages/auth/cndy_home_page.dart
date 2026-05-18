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
      ],
    );
  }
}
