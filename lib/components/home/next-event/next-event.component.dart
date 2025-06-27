import 'package:fiestapp/components/custom-card/custom-card.component.dart';
import 'package:flutter/material.dart';

class NextEvent extends StatefulWidget {
  const NextEvent({super.key});

  @override
  State<NextEvent> createState() => _NextEventState();
}

class _NextEventState extends State<NextEvent> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      spacing: 10,
      children: [
        const Text(
          'Prochains évènements',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        CustomCard(),
      ],
    );
  }
}
