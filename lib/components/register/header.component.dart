import 'package:fiestapp/components/text/custom-title.component.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class RegisterHeader extends ConsumerWidget {
  const RegisterHeader({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      spacing: 5,
      children: [
        Container(
          height: 100,
          width: 100,
          decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage('assets/logodark.png')),
          ),
        ),
        CustomTitle(text: 'Création de votre profil'),
      ],
    );
  }
}
