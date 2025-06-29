import 'package:cached_network_image/cached_network_image.dart';
import 'package:fiestapp/enum/app-route.enum.dart';
import 'package:fiestapp/router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ProfilImageButton extends ConsumerWidget {
  const ProfilImageButton({super.key, required this.imagePath});

  final String imagePath;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return GestureDetector(
      onTap: () {
        router.push(AppRoute.profil.path);
      },
      child: CircleAvatar(
        radius: 22,
        backgroundImage: CachedNetworkImageProvider(imagePath),
      ),
    );
  }
}
