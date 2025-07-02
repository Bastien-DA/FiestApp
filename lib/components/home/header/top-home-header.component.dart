import 'package:fiestapp/components/button/icon-button.component.dart';
import 'package:fiestapp/components/button/profil-image-button.component.dart';
import 'package:fiestapp/enum/app-route.enum.dart';
import 'package:fiestapp/provider/user.provider.dart';
import 'package:fiestapp/router.dart';
import 'package:fiestapp/utils/constant/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class TopHomeHeader extends ConsumerWidget {
  const TopHomeHeader({super.key, required this.name});

  final String name;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final user = ref.watch(userProvider);
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text(
              'Bienvenue',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.normal,
                color: Colors.white,
              ),
            ),
            Text(
              name,
              style: const TextStyle(
                fontSize: 24,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          spacing: 10,
          children: [
            CustomIconButton(
              icon: FontAwesomeIcons.bell,
              iconColor: Colors.black,
              backgroundColor: Colors.white,
              onClick: () {
                ref.read(router).push(AppRoute.notification.path);
              },
            ),
            ProfilImageButton(
              imagePath: user?.ppLink ?? defaultProfilImage,
              onClick: () {
                ref.read(router).push(AppRoute.profil.path);
              },
            ),
          ],
        ),
      ],
    );
  }
}
