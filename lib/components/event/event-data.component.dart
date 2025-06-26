import 'package:fiestapp/components/event/event-description.component.dart';
import 'package:fiestapp/components/event/event-title.component.dart';
import 'package:fiestapp/components/event/planning-data-block.component.dart';
import 'package:fiestapp/utils/types/event.dart';
import 'package:fiestapp/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class EventData extends ConsumerWidget {
  const EventData({super.key, required this.event});

  final Event event;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      padding: EdgeInsets.all(10),
      child: Column(
        spacing: 5,
        children: [
          PlanningDataBlock(
            date: formatDate(event.date),
            hour: formatHour(event.date),
          ),
          EventTitle(title: event.title, adress: event.location),
          EventDescription(description: event.description),
        ],
      ),
    );
  }
}
