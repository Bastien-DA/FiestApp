import 'package:fiestapp/enum/app-route.enum.dart';
import 'package:fiestapp/router.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/material.dart';

class ProfilIconButton extends ConsumerWidget {
  const ProfilIconButton({
    super.key,
    required this.imagePath,
  });

  final String imagePath;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return GestureDetector(
      onTap: () {
        router.push(AppRoute.profil.path);
      },
      child: CircleAvatar(
        radius: 20,
        backgroundColor: Colors.white,
        child: CircleAvatar(
          radius: 18,
          backgroundImage: NetworkImage(imagePath),
        ),
      ),
    );
  }
}