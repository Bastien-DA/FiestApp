import 'package:fiestapp/components/custom-card/tablet-date/tablet-date.component.dart';
import 'package:flutter/material.dart';

class CardHeader extends StatelessWidget {
  const CardHeader({super.key, required this.pathImage, required this.date});

  final String pathImage;
  final String date;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 5, right: 5, left: 5),
      child: ClipRRect(
        borderRadius: const BorderRadius.all(Radius.circular(40)),
        child: Container(
          height: 122,
          width: 322,
          decoration: BoxDecoration(
            color: const Color(0xffFFFFFF),
            image: DecorationImage(
              image: AssetImage(pathImage),
              fit: BoxFit.cover,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [TabletDate(date: date)],
            ),
          ),
        ),
      ),
    );
  }
}
