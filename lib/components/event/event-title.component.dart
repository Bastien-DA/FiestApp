import 'package:fiestapp/components/text/custom-title.component.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class EventTitle extends ConsumerWidget {
  const EventTitle({super.key, required this.title, required this.adress});

  final String title;
  final String adress;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      spacing: 5,
      children: [
        CustomTitle(text: title),
        Text("📍 ${adress}"),
      ],
    );
  }
}
