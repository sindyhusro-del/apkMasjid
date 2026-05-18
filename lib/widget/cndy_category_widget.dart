import 'package:flutter/material.dart';

class CndyCategoryWidget extends StatelessWidget {
  final IconData icon;
  final String title;
  final Color color;
  final Widget page;

  const CndyCategoryWidget({super.key, required this.icon, required this.title, required this.color, required this.page});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => page),
      ),
      child: Card(
        elevation: 3,
        child: Column(
          children: [
            Icon(icon, size: 50, color: color),
            Text(title),
          ],
        ),
      ),
    );
  }
}