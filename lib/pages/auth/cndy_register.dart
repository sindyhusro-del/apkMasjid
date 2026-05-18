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
  TextEditingController _passwoard = TextEditingController();
  bool _isMasjid = true;
  IconData _icon = Icons.remove_red_eye;
  bool _aplksiMe = true;

  void isMasjid() {
    setState(() {
      if (_isMasjid) {
        _isMasjid = false;
        _icon = CupertinoIcons.eye_slash;
      } else {
        _isMasjid = true;
        _icon = CupertinoIcons.eye_fill;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        width: size.width,
        height: size.height,
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
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(offset: Offset(1.5, 1.5), blurRadius: 5, spreadRadius: 5),
          ],
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Text(
                "ASSALAMUALAIKUM",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 35,
                ),
              ),
              Text(
                "REGISTRASI DAHULU",
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
                obscureText: _isMasjid,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.greenAccent.withValues(alpha: 0.7),
                  hintText: "Gmail",
                  labelText: "Isi Gmail kamu",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
              SizedBox(height: 10),
              TextField(
                controller: _passwoard,
                keyboardType: TextInputType.text,
                obscureText: _isMasjid,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.greenAccent.withValues(alpha: 0.5),
                  hintText: "Username",
                  labelText: "Isi username kamu",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
              SizedBox(height: 20),
              TextField(
                controller: _username,
                keyboardType: TextInputType.text,
                obscureText: _isMasjid,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.greenAccent.withValues(alpha: 0.7),
                  hintText: "Passwoard",
                  labelText: "Isi passwoard kamu",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
              SizedBox(height: 10),
              TextField(
                controller: _passwoard,
                keyboardType: TextInputType.text,
                obscureText: _isMasjid,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.greenAccent.withValues(alpha: 0.5),
                  hintText: "Confrim Passwoard",
                  labelText: "Conf passwoard kamu",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Row(
                children: [
                  Checkbox(
                    value: _aplksiMe,
                    onChanged: (value) {
                      setState(() {
                        _aplksiMe = !_aplksiMe;
                      });
                    },
                  ),
                ],
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => CndyHomePage()),
                  );
                },
                style: ButtonStyle(
                  minimumSize: WidgetStatePropertyAll(
                    Size(size.width - 80, 50),
                  ),
                ),
                child: Text("Submit", style: TextStyle(color: Colors.grey)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
