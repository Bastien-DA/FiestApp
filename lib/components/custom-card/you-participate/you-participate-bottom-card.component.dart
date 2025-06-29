import 'package:fiestapp/components/custom-card/creator-event-name/creator-event-name.component.dart';
import 'package:fiestapp/utils/types/user.dart';
import 'package:flutter/material.dart';

class YouParticipateBottomCardComponent extends StatelessWidget {
  final String eventCreatorName;
  final String eventCreatorImage;
  final List<User> users;
  final String eventName;
  final String eventLocation;

  const YouParticipateBottomCardComponent({
    super.key,
    required this.eventCreatorName,
    required this.eventCreatorImage,
    required this.users,
    required this.eventName,
    required this.eventLocation,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10, left: 25.0, right: 25.0),
      child: Column(
        spacing: 7.5,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CreatorEventName(
                eventCreatorName: eventCreatorName,
                eventCreatorImage: eventCreatorImage,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
