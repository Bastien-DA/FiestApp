import 'package:fiestapp/components/avatar-group.dart/avatar-group-back.component.dart';
import 'package:fiestapp/components/icon-button/icon_button.component.dart';
import 'package:fiestapp/enum/app_route.dart';
import 'package:fiestapp/mock/user.mock.dart';
import 'package:fiestapp/router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class DetailsHeader extends ConsumerWidget {
  const DetailsHeader({super.key});

  void goBack() {
    router.push(AppRoute.home.path);
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Flexible(
      child: ClipRRect(
        borderRadius: const BorderRadius.only(
          bottomLeft: Radius.circular(40),
          bottomRight: Radius.circular(40),
        ),
        child: Container(
          width: double.infinity,
          height: MediaQuery.sizeOf(context).height / 3,
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
                  children: [AvatarGroupBack(users: mockUsers)],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
