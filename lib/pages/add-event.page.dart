import 'package:fiestapp/components/add-event/add-event-datetime.component.dart';
import 'package:fiestapp/components/add-event/add-event-header.component.dart';
import 'package:fiestapp/components/add-event/address-block.component.dart';
import 'package:fiestapp/components/add-event/informations-block.component.dart';
import 'package:fiestapp/components/button/button.component.dart';
import 'package:fiestapp/components/image-selector/image-selector.component.dart';
import 'package:fiestapp/enum/app-route.enum.dart';
import 'package:fiestapp/router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AddEvent extends ConsumerWidget {
  const AddEvent({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      backgroundColor: Color(0xffF4F1F7),
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                spacing: 20,
                children: [
                  AddEventHeader(),
                  Column(
                    spacing: 20,
                    children: [
                      ImageSelector(
                        title: "Sélectionnez une image",
                        height: 130,
                      ),
                      AddEventDateTime(),
                      AddEvenInformationsBlock(),
                      AddEventAdressBlock(),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20, bottom: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  CustomButton(
                    label: "Créer l'évènement",
                    icon: FontAwesomeIcons.arrowRight,
                    onPressed: () => {router.push(AppRoute.home.path)},
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
