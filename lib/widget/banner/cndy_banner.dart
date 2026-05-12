import 'package:flutter/material.dart';

class CndyBanner extends StatefulWidget {
  const CndyBanner({super.key});

  @override
  State<CndyBanner> createState() => _CndyBannerState();
}

class _CndyBannerState extends State<CndyBanner> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
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
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 35),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 140,
                height: 140,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white,
                ),
                child: ClipOval(
                  child: Image(image: AssetImage("asesst/image/masjid.jpg")),
                ),
              ),
              Text(
                "MASJID DARUSSALAM PNP\nCOMUNITY QORYAH\nSAKINNAH",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  height: 1.2,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
