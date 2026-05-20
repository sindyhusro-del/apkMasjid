import 'package:apk_masjid/pages/auth/cndy_register.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NblLogin extends StatefulWidget {
  const NblLogin({super.key});

  @override
  State<NblLogin> createState() => _NblLoginState();
}

class _NblLoginState extends State<NblLogin> {
  TextEditingController _username = TextEditingController();
  TextEditingController _password = TextEditingController();
  bool _isComelme = true;
  IconData _icon = Icons.remove_red_eye;
  bool _rentailMe = true;

  void isComelme() {
    setState(() {
      if (_isComelme) {
        _isComelme = false;
        _icon = CupertinoIcons.eye_slash;
      } else {
        _isComelme = true;
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
                "ASSALAMUALAIKUM",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 40,
                ),
              ),
              Text(
                "LOGIN TERLEBIH DAHULU",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              SizedBox(height: 20),
              TextField(
                controller: _username,
                keyboardType: TextInputType.text,
                obscureText: _isComelme,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.green.shade200.withValues(alpha: 0.7),
                  hintText: "Username",
                  labelText: "Isi Username kamu",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
              SizedBox(height: 30),
              TextField(
                controller: _password,
                keyboardType: TextInputType.text,
                obscureText: _isComelme,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.green.shade200.withValues(alpha: 0.7),
                  hintText: "Password",
                  labelText: "Masukan password kamu",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
              SizedBox(height: 50),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
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
                        MaterialPageRoute(builder: (context) => CndyRegister()),
                      );
                    },
                    child: Text("Daftar", style: TextStyle(color: Colors.grey)),
                  ),
                  SizedBox(width: 25),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.symmetric(horizontal: 60),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      backgroundColor: Colors.green,
                    ),
                    onPressed: () {
                      if (_username.text == "APKMASJID" &&
                          _password.text == "nabilasindy") {
                        showDialog(
                          context: context,
                          builder: (context) => AlertDialog(
                            title: Text("Login Sukses"),
                          ),
                        );
                      } else {
                        showDialog(
                          context: context,
                          builder: (context) => AlertDialog(
                            title: Text("Login gagal!!!"),
                            content: Text("Salah ngotot tapokkk"),
                          ),
                        );
                      }
                    },
                    child: Text("Login", style: TextStyle(color: Colors.white)),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
