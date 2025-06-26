import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter/material.dart';

class GenericIconButton extends StatelessWidget {
  const GenericIconButton({
    super.key,
    required this.icon,
    required this.onPressed,
    this.size = 22.0,
    this.color = Colors.black,
  });

  final IconData icon;
  final VoidCallback onPressed;
  final double size;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(50),
      ),
      child: IconButton(
        icon: FaIcon(
          icon,
          size: size,
          color: color,
        ),
        onPressed: onPressed,
      ),
    );
  }
}