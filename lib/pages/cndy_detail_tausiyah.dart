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
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Colors.green.shade900,
                Colors.green.shade800,
                Colors.green.shade700,
                Colors.green.shade500,
              ],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
      ),
    );
  }
}
