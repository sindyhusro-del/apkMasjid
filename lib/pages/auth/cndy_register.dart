import 'package:apk_masjid/pages/auth/cndy_dasboard_page.dart';
import 'package:flutter/material.dart';

class CndyRegister extends StatefulWidget {
  const CndyRegister({super.key});

  @override
  State<CndyRegister> createState() => _CndyRegisterState();
}

class _CndyRegisterState extends State<CndyRegister> {
  final TextEditingController _nama = TextEditingController();
  final TextEditingController _username = TextEditingController();
  final TextEditingController _pass = TextEditingController();
  final TextEditingController _conf = TextEditingController();

  bool _isForeverPass = true;
  bool _isForeverConf = true;

  void _isforeverpass() {
    setState(() {
      _isForeverPass = !_isForeverPass;
    });
  }

  void _isforeverconf() {
    setState(() {
      _isForeverConf = !_isForeverPass;
    });
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        padding: const EdgeInsets.all(20),
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
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 25),
                Text(
                  "ASSALAMUALAIKUM",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 40,
                  ),
                ),
                Text(
                  "Registrasi terlebih dahulu",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                  ),
                ),
                SizedBox(height: 45),
                TextField(
                  controller: _nama,
                  keyboardType: TextInputType.text,
                  obscureText: _isForeverPass,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.green.shade200.withValues(alpha: 0.5),
                    hintText: "Masukkan Email",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
                SizedBox(height: 10),
                TextField(
                  controller: _username,
                  keyboardType: TextInputType.text,
                  obscureText: _isForeverPass,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.green.shade200.withValues(alpha: 0.5),
                    hintText: "Masukkan Username",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                TextField(
                  controller: _pass,
                  keyboardType: TextInputType.text,
                  obscureText: _isForeverPass,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.green.shade200.withValues(alpha: 0.5),
                    hintText: "passwoard",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
                SizedBox(height: 10),
                TextField(
                  controller: _conf,
                  keyboardType: TextInputType.text,
                  obscureText: _isForeverConf,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.green.shade200.withValues(alpha: 0.5),
                    hintText: "confrim passwoard",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
                SizedBox(width: 50,height: 25,),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.symmetric(horizontal: 60),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    backgroundColor: Colors.white,
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => CndyDasboardPage()),
                    );
                  },
                  child: Text("confrim", style: TextStyle(color: Colors.grey)),
                ),
              ],
            ),
          ),
        ),
    );
  }
}
