import 'package:apk_masjid/service/cndy_category_service.dart';
import 'package:apk_masjid/widget/banner/cndy_banner.dart';
import 'package:apk_masjid/widget/cndy_category_widget.dart';
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
          width: size.width,
          height: 300,
          margin: const EdgeInsets.all(50),
          child: GridView.builder(
            itemCount: cats.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 2,
            ),
            itemBuilder: (context, index) => CndyCategoryWidget(
              icon: cats[index].icon,
              title: cats[index].title,
              color: cats[index].color,
              page: cats[index].page,
            ),
          ),
        ),
      ],
    );
  }
}
