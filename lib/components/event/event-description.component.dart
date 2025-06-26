import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../text/custom-title.component.dart';

class EventDescription extends ConsumerWidget {
  const EventDescription({super.key, required this.description});

  final String description;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      spacing: 5,
      children: [
        CustomTitle(text: "A propos"),
        Text(description),
      ],
    );
  }
}
