import 'package:fiestapp/components/custom-card/next-evenement/next-evenement-card.component.dart';
import 'package:fiestapp/components/text/custom-title.component.dart';
import 'package:fiestapp/provider/event-provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class NextEvent extends ConsumerStatefulWidget {
  const NextEvent({super.key});

  @override
  ConsumerState<NextEvent> createState() => _NextEventState();
}

class _NextEventState extends ConsumerState<NextEvent> {
  @override
  Widget build(BuildContext context) {
    final events = ref.watch(eventProvider);
    return SizedBox(
      height: 237,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        spacing: 10,
        children: [
          CustomTitle(text: "Prochains évènements"),
          Stack(
            clipBehavior: Clip.none,
            children: [
              Positioned(
                top: 15,
                right: 0,
                left: 0,
                child: Transform.scale(
                  scale: 0.95,
                  child: NextEvenementCard(event: events[1]),
                ),
              ),
              Dismissible(
                key: UniqueKey(),
                direction: DismissDirection.horizontal,
                onDismissed: (direction) {
                  ref.read(eventProvider.notifier).inversEvents();
                },
                child: NextEvenementCard(event: events[0]),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
