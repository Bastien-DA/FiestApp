import 'package:flutter/material.dart';

class CardHeader extends StatelessWidget {
  const CardHeader({super.key, required this.pathImage, required this.date});

  final String pathImage;
  final Date date;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, top: 20),
      child: Text(
        title,
        style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
      ),
    );
  }
}
