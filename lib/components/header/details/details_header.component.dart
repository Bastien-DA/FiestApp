import 'package:fiestapp/components/icon-button/icon_button.component.dart';
import 'package:fiestapp/enum/app-route.enum.dart';
import 'package:fiestapp/mock/user.mock.dart';
import 'package:fiestapp/router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../avatar-group/avatar-group.component.dart';

class DetailsHeader extends ConsumerWidget {
  const DetailsHeader({super.key, required this.height});

  final double height;

  void goBack() {
    router.push(AppRoute.home.path);
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ClipRRect(
      borderRadius: const BorderRadius.only(
        bottomLeft: Radius.circular(40),
        bottomRight: Radius.circular(40),
      ),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        width: double.infinity,
        height: height,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/ImageEvent.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: SafeArea(
          minimum: EdgeInsets.only(left: 10, right: 10, bottom: 10, top: 45),
          bottom: false,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // Bouton retour
              CustomIconButton(
                icon: FontAwesomeIcons.arrowLeft,
                backgroundColor: Colors.black.withValues(alpha: 0.2),
                iconColor: Colors.white,
                onClick: goBack,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  AvatarGroup(
                    users: mockUsers,
                    haveBackground: true,
                    textColor: Colors.white,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
