import 'package:fiestapp/components/modal/create-poll-modal.dart';
import 'package:fiestapp/components/organisation-item/add.component.dart';
import 'package:fiestapp/components/organisation/poll/poll-card.component.dart';
import 'package:flutter/material.dart';

class SondageCardBloc extends StatefulWidget {
  const SondageCardBloc({super.key});

  @override
  State<SondageCardBloc> createState() => _SondageCardBlocState();
}

class _SondageCardBlocState extends State<SondageCardBloc> {
  Future<void> onClick() {
    return showDialog<void>(
      context: context,
      builder: (BuildContext context) {
        return Dialog(child: CreatePollModal());
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 10,
      children: [
        AddCard(
          height: 85,
          width: double.infinity,
          radius: 30,
          onClick: onClick,
        ),
        SondageCard(),
      ],
    );
  }
}
