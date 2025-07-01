import 'package:fiestapp/components/custom-card/card-header.component.dart';
import 'package:fiestapp/components/custom-card/you-participate/you-participate-bottom-card.component.dart';
import 'package:fiestapp/enum/app-route.enum.dart';
import 'package:fiestapp/provider/event/selected-event.provider.dart';
import 'package:fiestapp/router.dart';
import 'package:fiestapp/utils/constant/constant.dart';
import 'package:fiestapp/utils/types/event.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class YouParticipateCard extends ConsumerWidget {
  const YouParticipateCard({super.key, required this.event});

  final Event event;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return GestureDetector(
      onTap: () {
        router.pushNamed(AppRoute.details.name);
        ref.read(selectedEventProvider.notifier).fetchSelectedEvent(event.guid);
      },
      child: Container(
        height: 250,
        width: 350,
        decoration: BoxDecoration(
          color: Color(0xffFFFFFF),
          borderRadius: BorderRadius.all(Radius.circular(40)),
          boxShadow: [
            BoxShadow(
              color: Color(0x0AE15B42), // 4% d'opacité ≈ 0A en hexadécimal
              offset: Offset(0, 4), // X = 0, Y = 4
              blurRadius: 4,
              spreadRadius: 0,
            ),
          ],
        ),
        child: Column(
          children: [
            CardHeader(
              pathImage: "${S3_enpoint}event/${event.guid}.webp",
              date: "12/07/2025",
              height: 140,
              width: 340,
            ),
            YouParticipateBottomCardComponent(
              eventCreatorName: event.organizer.username,
              eventCreatorImage: event.organizer.ppLink ?? defaultProfilImage,
              users: event.participants,
              eventName: event.title,
              eventLocation: event.location,
            ),
          ],
        ),
      ),
    );
  }
}
