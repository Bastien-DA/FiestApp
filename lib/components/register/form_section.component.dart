import 'package:fiestapp/components/button/input/text_input.component.dart';
import 'package:fiestapp/components/text/custom-title.component.dart';
import 'package:flutter/material.dart';

class PseudoSection extends StatefulWidget {
  const PseudoSection({super.key});

  @override
  State<PseudoSection> createState() => _PseudoSectionState();
}

class _PseudoSectionState extends State<PseudoSection> {
  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 10,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomTitle(text: "Pseudo"),
        Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
          ),
          child: CustomTextInput(placeholder: "label", value: "utilsateur"),
        ),
      ],
    );
  }
}
