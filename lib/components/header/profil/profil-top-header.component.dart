import 'package:fiestapp/components/icon-button/icon_button.component.dart';
import 'package:fiestapp/enum/app-route.enum.dart';
import 'package:fiestapp/router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ProfilTopHeader extends ConsumerWidget {
  const ProfilTopHeader({super.key});

  void goBack() {
    router.push(AppRoute.home.path);
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CustomIconButton(
          icon: FontAwesomeIcons.arrowLeft,
          backgroundColor: Colors.black.withValues(alpha: 0.2),
          iconColor: Colors.white,
          onClick: goBack,
        ),
        CustomIconButton(
          icon: FontAwesomeIcons.pen,
          backgroundColor: Colors.black.withValues(alpha: 0.2),
          iconColor: Colors.white,
          onClick: () => {},
        ),
      ],
    );
  }
}
