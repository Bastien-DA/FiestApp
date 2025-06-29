import 'package:fiestapp/components/details/event-data-with-map.dart';
import 'package:fiestapp/components/header/details/details_header.component.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class Invitation extends ConsumerStatefulWidget {
  const Invitation({super.key});

  @override
  InvitationState createState() => InvitationState();
}

class InvitationState extends ConsumerState<Invitation> {
  bool isMapExpanded = false;

  void ExpandMap() {
    setState(() {
      isMapExpanded = !isMapExpanded;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      child: Scaffold(
        backgroundColor: const Color(0xffF4F1F7),
        body: Column(
          spacing: 10,
          children: [
            if (!isMapExpanded)
              DetailsHeader(height: MediaQuery.sizeOf(context).height / 3),
            Expanded(
              flex: 2,
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: EventDetailsWithMap(
                  isMapExpanded: isMapExpanded,
                  onExpandToggle: ExpandMap,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
