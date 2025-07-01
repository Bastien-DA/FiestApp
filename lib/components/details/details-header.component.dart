import 'package:cached_network_image/cached_network_image.dart';
import 'package:fiestapp/components/avatar-group/avatar-group.component.dart';
import 'package:fiestapp/components/button/icon-button.component.dart';
import 'package:fiestapp/components/modal/invitation-modal.dart';
import 'package:fiestapp/enum/app-route.enum.dart';
import 'package:fiestapp/mock/event.mock.dart';
import 'package:fiestapp/mock/user.mock.dart';
import 'package:fiestapp/provider/event/selected-event.provider.dart';
import 'package:fiestapp/router.dart';
import 'package:fiestapp/utils/constant/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class DetailsHeader extends ConsumerWidget {
  const DetailsHeader({super.key, required this.height});

  final double height;

  void goBack(WidgetRef ref) {
    ref.read(selectedEventProvider.notifier).clear();
    router.push(AppRoute.home.path);
  }

  Future<void> _dialogBuilder(BuildContext context) {
    return showDialog<void>(
      context: context,
      builder: (BuildContext context) {
        return const AlertDialog(content: InvitationModal());
      },
    );
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final String usersLengthText =
        "${mockUsers.length} participant${mockUsers.length == 1 ? '' : 's'}";

    return ClipRRect(
      borderRadius: const BorderRadius.only(
        bottomLeft: Radius.circular(40),
        bottomRight: Radius.circular(40),
      ),
      child: CachedNetworkImage(
        imageUrl: "${S3_enpoint}event/${mockEvents[0].guid}.webp",
        width: double.infinity,
        height: height,
        fit: BoxFit.cover,
        placeholder: (context, url) => Container(
          width: double.infinity,
          height: height,
          color: Colors.grey.shade200,
          child: const Center(child: CircularProgressIndicator()),
        ),
        errorWidget: (context, url, error) => Container(
          width: double.infinity,
          height: height,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: CachedNetworkImageProvider(defaultEventImage),
              fit: BoxFit.cover,
            ),
          ),
          child: headerContent(context, usersLengthText, ref),
        ),
        imageBuilder: (context, imageProvider) => Container(
          width: double.infinity,
          height: height,
          decoration: BoxDecoration(
            image: DecorationImage(image: imageProvider, fit: BoxFit.cover),
          ),
          child: headerContent(context, usersLengthText, ref),
        ),
      ),
    );
  }

  Widget headerContent(context, usersLengthText, WidgetRef ref) {
    return SafeArea(
      minimum: const EdgeInsets.only(left: 10, right: 10, bottom: 10, top: 45),
      bottom: false,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // 🡲 Boutons haut
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CustomIconButton(
                icon: FontAwesomeIcons.arrowLeft,
                backgroundColor: Colors.black.withOpacity(0.2),
                iconColor: Colors.white,
                onClick: () => goBack(ref),
              ),
              Row(
                children: [
                  CustomIconButton(
                    icon: FontAwesomeIcons.userPlus,
                    backgroundColor: Colors.black.withOpacity(0.2),
                    iconColor: Colors.white,
                    onClick: () => _dialogBuilder(context),
                  ),
                  const SizedBox(width: 8),
                  CustomIconButton(
                    icon: FontAwesomeIcons.pen,
                    backgroundColor: Colors.black.withOpacity(0.2),
                    iconColor: Colors.white,
                    onClick: () {},
                  ),
                ],
              ),
            ],
          ),

          // 🡲 Groupe utilisateurs
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              AvatarGroup(
                users: mockUsers,
                haveBackground: true,
                textColor: Colors.white,
                text: usersLengthText,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
