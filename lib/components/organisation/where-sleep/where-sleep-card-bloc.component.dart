import 'package:fiestapp/components/organisation-item/add.component.dart';
import 'package:fiestapp/components/organisation/who-card.component.dart';
import 'package:fiestapp/utils/types/enum.dart';
import 'package:flutter/material.dart';

class WhereSleepBloc extends StatefulWidget {
  const WhereSleepBloc({super.key});

  @override
  State<WhereSleepBloc> createState() => _WhereSleepBlocState();
}

class _WhereSleepBlocState extends State<WhereSleepBloc> {
  void onClick() {
    print("WhereSleepBloc");
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
        WhoDriveCard(type: WhoCardType.sleep),
      ],
    );
  }
}
