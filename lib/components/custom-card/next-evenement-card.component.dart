import 'package:fiestapp/components/custom-card/card-bottom.component.dart';
import 'package:fiestapp/components/custom-card/card-header.component.dart';
import 'package:fiestapp/utils/types/event.dart';
import 'package:flutter/material.dart';

class NextEvenementCard extends StatelessWidget {
  const NextEvenementCard({super.key, required this.event});

  final Event event;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 201,
      width: 350,
      decoration: BoxDecoration(
        color: Color(0xffFFFFFF),
        borderRadius: BorderRadius.all(Radius.circular(40)),
        boxShadow: [
          BoxShadow(
            color: Color(0x0AE15B42), // 4% d'opacité ≈ 0A en hexadécimal
            offset: Offset(0, 4), // X = 0, Y = 4
            blurRadius: 4,
            spreadRadius: 0,
          ),
        ],
      ),
      child: Column(
        children: [
          CardHeader(
            pathImage: 'assets/images/Soiree.png',
            date: event.formattedDate,
          ),
          CardBottom(
            eventName: event.title,
            eventLocation: event.location,
            eventCreatorName: event.organazer.username,
            eventCreatorImage: event.organazer.ppLink,
          ),
        ],
      ),
    );
  }
}
