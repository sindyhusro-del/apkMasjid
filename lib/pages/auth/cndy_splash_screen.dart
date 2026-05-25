import 'dart:async';
import 'package:apk_masjid/pages/auth/cndy_register.dart';
import 'package:apk_masjid/pages/auth/nbl_login.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  late Timer t;

  @override
  @override
  void initState() {
    t = Timer.periodic(
      const Duration(seconds: 5),
      (timer) => Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => NblLogin()),
      ),
    );
    super.initState();
  }

  @override
  void dispose() {
    t.cancel();
    super.dispose();
  }

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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 100),
            Image(image: AssetImage("asesst/image/masjid-removebg-preview.png")),
            SizedBox(height: 100),
          ],
        ),
      ),
    );
  }
}
