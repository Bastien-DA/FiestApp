import 'package:flutter/material.dart';

class CardHeader extends StatelessWidget {
  const CardHeader({super.key, required this.pathImage, required this.date});

  final String pathImage;
  final String date;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: const BorderRadius.all(Radius.circular(40)),
      child: Container(
        height: 201,
        width: 350,
        decoration: BoxDecoration(
          color: const Color(0xffFFFFFF),
          image: DecorationImage(
            image: AssetImage(pathImage),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
