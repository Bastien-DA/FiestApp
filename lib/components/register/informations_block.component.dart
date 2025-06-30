import 'package:fiestapp/components/register/register_form.component.dart';
import 'package:fiestapp/components/text/custom-title.component.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class InformationsBlock extends ConsumerStatefulWidget {
  const InformationsBlock({super.key});

  @override
  ConsumerState<InformationsBlock> createState() => _InformationsBlockState();
}

class _InformationsBlockState extends ConsumerState<InformationsBlock> {
  // Déclaration des controllers

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        spacing: 20,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomTitle(text: "Informations"),
          RegisterForm(),
        ],
      ),
    );
  }
}
