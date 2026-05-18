import 'package:flutter/material.dart';

class NblPengaturan extends StatefulWidget {
  const NblPengaturan({super.key});

  @override
  State<NblPengaturan> createState() => _NblPengaturanState();
}

class _NblPengaturanState extends State<NblPengaturan> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Center(
          child: Container(
            margin: EdgeInsets.all(16),
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
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
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.arrow_back, color: Colors.black),
                      ),
                      Text(
                        "Edit Profil",
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(width: 35),
                    ],
                  ),
                  SizedBox(height: 5),
                  Center(
                    child: CircleAvatar(
                      radius: 50,
                      backgroundImage: AssetImage("asesst/image/wjh2.jpg.jpeg"),
                    ),
                  ),
                  SizedBox(height: 10),
                  Text("Nama"),
                  TextField(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.green.shade200.withValues(alpha: 0.7),
                      hintText: "Name",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  Text("Username"),
                  TextField(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.green.shade200.withValues(alpha: 0.7),
                      hintText: "Username",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  Text("Email addres"),
                  TextField(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.green.shade200.withValues(alpha: 0.7),
                      hintText: "Email",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  Text("Password"),
                  TextField(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.green.shade200.withValues(alpha: 0.7),
                      hintText: "Passwoard",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                  ),
                  SizedBox(height: 40),
                  Center(
                    child: SizedBox(
                      width: 220,
                      height: 55,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white24,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        onPressed: () {},
                        child: Text(
                          "Save changes",
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Colors.white70,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
