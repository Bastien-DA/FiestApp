import 'package:fiestapp/utils/utils.dart';
import 'package:flutter/material.dart';

class TabletDate extends StatelessWidget {
  const TabletDate({super.key, required this.date});

  final String date;

  String get day => getDay(date);

  String get month => getMonth(date);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 50,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(25)),
        color: Color(0xFF000000).withValues(alpha: 0.21),
      ),
      child: Column(
        children: [
          Text(
            day,
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          Text(month, style: TextStyle(fontSize: 10, color: Colors.white)),
        ],
      ),
    );
  }
}
