import 'package:fiestapp/components/avatar-group/avatar-group.component.dart';
import 'package:fiestapp/components/button/button.component.dart';
import 'package:fiestapp/components/button/profil-image-button.component.dart';
import 'package:fiestapp/mock/event.mock.dart';
import 'package:fiestapp/mock/user.mock.dart';
import 'package:fiestapp/utils/constant/enum.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class WhoDriveCard extends StatefulWidget {
  const WhoDriveCard({super.key, required this.type});

  final WhoCardType type;

  @override
  State<WhoDriveCard> createState() => _WhoDriveCardState();
}

class _WhoDriveCardState extends State<WhoDriveCard>
    with SingleTickerProviderStateMixin {
  bool _isExpanded = false;

  void toggleExpand() {
    setState(() {
      _isExpanded = !_isExpanded;
    });
  }

  String get _emoji {
    switch (widget.type) {
      case WhoCardType.drive:
        return '🚗';
      case WhoCardType.sleep:
        return '🛏️';
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: toggleExpand,
      child: AnimatedSize(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
        child: Container(
          width: double.infinity,
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(30),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withValues(alpha: 0.05),
                blurRadius: 10,
                offset: const Offset(0, 2),
              ),
            ],
          ),
          child: _isExpanded
              ? _buildExpandedContent()
              : _buildCollapsedContent(),
        ),
      ),
    );
  }

  Widget _buildCollapsedContent() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            ProfilImageButton(
              imagePath:
                  'https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Fpm1.narvii.com%2F6479%2Fd14cc25834ff36a45a29ecd0e9c7ec92021c96fd_hq.jpg&f=1&nofb=1&ipt=126ff8a7eaf3122eda206063efe488f8fd16990c30d9b4953ab709bbd47962a0',
            ),
            const SizedBox(width: 12),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  mockCurrentUser.username,
                  style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(height: 4),
                Row(
                  children: [
                    const Icon(
                      Icons.location_on,
                      size: 14,
                      color: Color(0xffE15B42),
                    ),
                    const SizedBox(width: 4),
                    Text(
                      mockEvents[0].location,
                      style: const TextStyle(fontSize: 12, color: Colors.grey),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
          decoration: BoxDecoration(
            color: const Color(0xffE15B42).withValues(alpha: 0.1),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Text(
            "$_emoji 1/5",
            style: const TextStyle(
              fontSize: 13,
              fontWeight: FontWeight.w600,
              color: Color(0xffE15B42),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildExpandedContent() {
    final String usersLengthText =
        "${mockUsers.length} participant${mockUsers.length == 1 ? '' : 's'}";
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildCollapsedContent(),

        const SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            AvatarGroup(
              users: mockUsers,
              haveBackground: false,
              textColor: Colors.black,
              text: usersLengthText,
            ),
            CustomButton(
              icon: FontAwesomeIcons.arrowRight,
              label: "Valider",
              onPressed: () {
                // simple action si besoin
                toggleExpand();
              },
            ),
          ],
        ),
      ],
    );
  }
}
