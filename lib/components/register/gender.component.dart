import 'package:fiestapp/components/custom-card/illustration-card/illustration-card.component.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class GenderSelector extends StatefulWidget {
  const GenderSelector({super.key});

  @override
  State<GenderSelector> createState() => _GenderSelectorState();
}

class _GenderSelectorState extends State<GenderSelector> {
  void onClick() {
    print('click');
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 10,
      children: [
        Expanded(
          child: IllustrationCard(
            imageSize: 40,
            icon: FontAwesomeIcons.venus,
            iconColor: Color(0xffFB8257),
            principalLabel: "Femme",
            secondaryLabel: 'Sexe',
          ),
        ),
        Expanded(
          child: IllustrationCard(
            imageSize: 40,
            icon: FontAwesomeIcons.mars,
            iconColor: Color(0xffFB8257),
            principalLabel: 'Homme',
            secondaryLabel: 'Sexe',
            isSelected: true,
            gradient: const LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [Color(0xFF87D5C8), Color(0xFFABC760)],
            ),
          ),
        ),
      ],
    );
  }
}
