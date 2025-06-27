import 'package:flutter/material.dart';

class IllustrationCard extends StatelessWidget {
  const IllustrationCard({
    super.key,
    required this.illustration,
    required this.principalLabel,
    required this.secondaryLabel,
  });

  final String illustration;
  final String principalLabel;
  final String secondaryLabel;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(30),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(illustration, height: 60, width: 60),
          Text(
            principalLabel,
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
          ),
          Text(secondaryLabel, style: TextStyle(fontSize: 12)),
        ],
      ),
    );
  }
}
