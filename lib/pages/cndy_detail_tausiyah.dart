import 'package:flutter/material.dart';

class CndyDetailTausiyah extends StatefulWidget {
  const CndyDetailTausiyah({super.key});

  @override
  State<CndyDetailTausiyah> createState() => _CndyDetailTausiyahState();
}

class _CndyDetailTausiyahState extends State<CndyDetailTausiyah> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.greenAccent,
        child: IconButton(
          onPressed: () {},
          icon: Icon(Icons.arrow_back, size: 35, color: Colors.black,
          ),
        ),
      ),
    );
  }
}
