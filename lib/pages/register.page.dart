import 'package:fiestapp/components/button/button.component.dart';
import 'package:fiestapp/components/register/header.component.dart';
import 'package:fiestapp/components/register/informations_block.component.dart';
import 'package:fiestapp/enum/app-route.enum.dart';
import 'package:fiestapp/router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Register extends ConsumerWidget {
  const Register({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      backgroundColor: Color(0xffF4F1F7),
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(children: [RegisterHeader(), RegisterInformationsBlock()]),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  CustomButton(
                    label: "Créer le compte",
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
