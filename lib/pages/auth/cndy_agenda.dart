import 'package:flutter/material.dart';

class CndyAgenda extends StatefulWidget {
  const CndyAgenda({super.key});

  @override
  State<CndyAgenda> createState() => _CndyAgendaState();
}

class _CndyAgendaState extends State<CndyAgenda> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Agenda"),
      ),
    );
  }
}
