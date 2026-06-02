import 'package:apk_masjid/service/cndy_agenda_service.dart';
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
      appBar: AppBar(title: Text("Agenda"), backgroundColor: Colors.green),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: ListView.builder(
          itemCount: agenda.length,
          itemBuilder: (context, index) {
            return Card(
              elevation: 3,
              margin: const EdgeInsets.fromLTRB(15, 5, 15, 5),
              child: ListTile(
                title: Text(agenda[index].name),
                subtitle: Text(
                  agenda[index].day,
                  style: TextStyle(fontSize: 20),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
