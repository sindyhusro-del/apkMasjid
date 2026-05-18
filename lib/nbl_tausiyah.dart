import 'package:flutter/material.dart';

class NblTausiyah extends StatefulWidget {

  const NblTausiyah({super.key});

  int? get length => null;

  @override
  Widget build(BuildContext contex) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: NblTausiyah(),
    );
  }

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    throw UnimplementedError();
  }
  }
  State<NblTausiyah> createState() => _NblTausiyahState();
class _NblTausiyahState extends State<NblTausiyah> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green.shade200,
      body: SafeArea(
        child: Center(
          child: Container(
            width: 320,
            height: 650,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(40),
            ),
            child: Column(
              children: [
                Container(
                  height:110,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40),
                    ),
                    gradient: LinearGradient(
                      colors: [Colors.green
                        ]
                    ),
                  ),
                  alignment: Alignment.centerLeft,
                  padding: EdgeInsets.symmetric(horizontal: 25),
                  child: Text(
                      "TAUSIYAH",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1,
                    ),
                  ),
                ),
                SizedBox(height: 35),
                ListView.builder(
                  padding: EdgeInsets.symmetric(horizontal: 15),
                    itemCount: NblTausiyah().length,
                    itemBuilder: (context, index) {
                      Padding(
                        padding: EdgeInsets.only(bottom: 25),
                        child: Container(
                          height: 75,
                          decoration: BoxDecoration(
                            color: Colors.green,
                            borderRadius: BorderRadius.circular(25),
                          ),
                          child: Center(
                            child: Text("menu tausiyah"),
                          ),
                        ),
                      );
                    }
                    ),
              ],
            ),
          ),
        ),
      ),

    );
  }
}
