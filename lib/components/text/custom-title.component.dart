import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CustomTitle extends ConsumerWidget {
  const CustomTitle({super.key, required this.text});

  final String text;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Text(
      text,
      // Vous n'avez pas besoin d'interpolation de chaîne ici si text est déjà une chaîne
      style: TextStyle(
        color: Colors.black,
        fontSize: 18,
        fontWeight: FontWeight.w600,
      ),
    );
  }
}
