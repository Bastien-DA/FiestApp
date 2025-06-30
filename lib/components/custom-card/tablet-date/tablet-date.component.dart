import 'package:fiestapp/utils/date.utils.dart';
import 'package:flutter/material.dart';

class TabletDate extends StatelessWidget {
  const TabletDate({super.key, required this.date});

  final String date;

  String get day => getDay(date);

  String get month => getMonth(date);

  String get monthName => getMonthName(date);

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
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            day,
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.white,
              height: 0.9,
            ),
          ),
          Text(monthName, style: TextStyle(fontSize: 10, color: Colors.white)),
        ],
      ),
    );
  }
}
