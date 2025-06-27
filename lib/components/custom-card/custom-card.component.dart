import 'package:fiestapp/components/custom-card/card-header.component.dart';
import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 201,
      width: 350,
      decoration: BoxDecoration(
        color: Color(0xffFFFFFF),
        borderRadius: BorderRadius.all(Radius.circular(40)),
      ),
      child: Column(
        children: [
          CardHeader(pathImage: 'assets/images/Soiree.png', date: "12/12/2023"),
        ],
      ),
    );
  }
}
