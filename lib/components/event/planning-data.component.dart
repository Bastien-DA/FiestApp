import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class PlanningData extends ConsumerWidget {
  const PlanningData({
    super.key,
    required this.text,
    required this.icon,
    required this.iconColor,
  });

  final String text;
  final IconData icon;
  final Color iconColor;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(5),
      ),
      child: Row(
        spacing: 5,
        children: [
          FaIcon(icon, color: iconColor, size: 20),
          Text(text),
        ],
      ),
    );
  }
}
