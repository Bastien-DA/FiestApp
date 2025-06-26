import 'package:fiestapp/components/event/event-data.component.dart';
import 'package:fiestapp/components/header/details/details_header.component.dart';
import 'package:fiestapp/mock/event.mock.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class Details extends ConsumerWidget {
  const Details({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: Column(
        children: [
          DetailsHeader(),
          EventData(event: mockEvent),
        ],
      ),
    );
  }
}
