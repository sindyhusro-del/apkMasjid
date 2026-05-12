import 'package:apk_masjid/pages/auth/cndy_splash_screen.dart';
import 'package:flutter/material.dart';

void main(){

  runApp(MasjidApp());
}

class MasjidApp extends StatefulWidget {
  const MasjidApp({super.key});

  @override
  State<MasjidApp> createState() => _MasjidAppState();
}

class _MasjidAppState extends State<MasjidApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: SplashScreen());
  }
}
