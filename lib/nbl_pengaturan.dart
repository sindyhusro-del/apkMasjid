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
              gradient: LinearGradient(colors: [Colors.green, Colors.greenAccent],
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
                        icon: Icon(
                          Icons.arrow_back,
                          color: Colors.white,
                        ),
                      ),
                         Text(
                            "Edit Profil",
                            style: TextStyle(
                              fontSize: 28,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ) ,
                      SizedBox(width: 40),
                    ],
                  ),
                  SizedBox(height: 20),
                  Center(
                    child: CircleAvatar(
                      radius: 70,
                      backgroundImage: AssetImage("ssest/image/wjh2.jpg.jpg"),
                    ),
                  ),
                  SizedBox(height: 30),
                  Text("Nama"),
                  TextField(),
                  SizedBox(height: 20),
                  Text("Username"),
                  TextField(),
                  SizedBox(height: 20),
                  Text("Email addres"),
                  TextField(),
                  SizedBox(height: 20),
                  Text("Password"),
                  SizedBox(height: 50),
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
                        child: Text("Save changes", style: TextStyle(
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
