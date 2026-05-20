import 'package:apk_masjid/pages/auth/cndy_dasboard_page.dart';
import 'package:apk_masjid/pages/auth/cndy_home_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CndyRegister extends StatefulWidget {
  const CndyRegister({super.key});

  @override
  State<CndyRegister> createState() => _CndyRegisterState();
}

class _CndyRegisterState extends State<CndyRegister> {
  TextEditingController _username = TextEditingController();
  TextEditingController _password = TextEditingController();
  bool _isSecure = true;
  IconData _icon = Icons.remove_red_eye;
  bool _commelMe = true;

  void isSecure() {
    setState(() {
      if (_isSecure) {
        _isSecure = false;
        _icon = CupertinoIcons.eye_slash;
      } else {
        _isSecure = true;
        _icon = CupertinoIcons.eye_fill;
      }
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
              Text(
                "ASSALAMUALIKUM",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                ),
              ),
              Text(
                "REGISTRASI TERLEBIH DAHULU",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                ),
              ),
              SizedBox(height: 20),
              TextField(
                controller: _username,
                keyboardType: TextInputType.text,
                obscureText: _isSecure,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.green.shade200.withValues(alpha: 0.7),
                  hintText: "Masukkan Email",
                  labelText: "Isi Email kamu",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
              SizedBox(height: 10),
              TextField(
                controller: _password,
                keyboardType: TextInputType.text,
                obscureText: _isSecure,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.green.shade200.withValues(alpha: 0.5),
                  hintText: "Masukkan Username",
                  labelText: "Isi Username kamu",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
              SizedBox(height: 20),
              TextField(
                controller: _username,
                keyboardType: TextInputType.text,
                obscureText: _isSecure,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.green.shade200.withValues(alpha: 0.5),
                  hintText: "Masukkan Passwoard",
                  labelText: "Isi passwoard kamu",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
              SizedBox(height: 10),
              TextField(
                controller: _username,
                keyboardType: TextInputType.text,
                obscureText: _isSecure,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.green.shade200.withValues(alpha: 0.7),
                  hintText: "Confrim Passwoard",
                  labelText: "Confn Passwoard kamu",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
              SizedBox(height: 30),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => CndyDasboardPage()),
                  );
                },
                style: ButtonStyle(
                  minimumSize: WidgetStatePropertyAll(
                    Size(size.width - 80, 50),
                  ),
                ),
                child: Text("SUBMIT", selectionColor: Colors.grey),
              ),
            ],
          ),
        ),
      ),
    );
  }
}