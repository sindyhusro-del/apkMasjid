import 'package:apk_masjid/nbl_pengaturan.dart';
import 'package:apk_masjid/pages/auth/cndy_register.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class nbl_login extends StatefulWidget {
  const nbl_login({super.key});

  @override
  State<nbl_login> createState() => _nbl_loginState();
}

class _nbl_loginState extends State<nbl_login> {
  TextEditingController _username = TextEditingController();
  TextEditingController _passwoard = TextEditingController();
  bool _isMasjid = true;
  IconData _icon = Icons.remove_red_eye;
  bool _aplksiMe = true;

  void isMasjid(){
    setState(() {
      if (_isMasjid){
        _isMasjid = false;
        _icon = CupertinoIcons.eye_slash;
      }else{
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
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(colors: [Colors.green.shade900,Colors.green.shade800,Colors.green.shade700,Colors.green.shade500],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Container(
          width: size.width,
          height: size.height,
          padding: EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: Colors.green.withValues(alpha: 0.5),
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(
                offset: Offset(1.5, 1.5),
                color: Colors.green.shade50.withValues(alpha: 20),
                blurRadius: 5,
                spreadRadius: 5,
              ),
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
                    fontSize: 30,
                  ),
                ),
                Text("LOGIN TERLEBIH DAHULU", style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                ),
                ),
                SizedBox(height: 35),
                TextField(
                  controller: _username,
                  keyboardType: TextInputType.text,
                  obscureText: _isMasjid,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.greenAccent.shade100.withValues(alpha: 0.7),
                    hintText: "Username",
                    labelText: "Isi username kamu",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
                SizedBox(height: 40),
                TextField(
                  controller: _passwoard,
                  keyboardType: TextInputType.text,
                  obscureText: _isMasjid,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.green.shade50.withValues(alpha: 0.5),
                    hintText: "Password",
                    labelText: "Masukan password kamu",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
                SizedBox(height: 35),
                Row(
                  children: [
                    Checkbox(value: _isMasjid, onChanged: (value) {
                      setState(() {
                      });
                    },
                    ),
                  ],
                ),
                SizedBox(height: 35),
                ElevatedButton(
                  onPressed: () {},
                  style: ButtonStyle(
                    maximumSize: WidgetStatePropertyAll(Size(size.width - 80, 50),
                    ),
                  ),
                  child: Text("Sumbit"),
                ),
                SizedBox(height: 20),
                Wrap(
                  crossAxisAlignment: WrapCrossAlignment.center,
                  children: [
                    Text(
                      "Belum punya akun?",
                      style: TextStyle(color: Colors.white),
                    ),
                    TextButton(onPressed: () => Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => CndyRegister()),
                    ),
                      child: Text(
                        "Daftar?",
                        style: TextStyle(color: Colors.greenAccent),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
