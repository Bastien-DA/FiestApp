import 'package:fiestapp/components/page-switcher/page-switcher.component.dart';
import 'package:fiestapp/components/profil/profil-events.component.dart';
import 'package:fiestapp/components/profil/profil-header.component.dart';
import 'package:fiestapp/components/profil/profil-informations.component.dart';
import 'package:fiestapp/mock/user.mock.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Profil extends ConsumerStatefulWidget {
  const Profil({super.key});

  @override
  ProfilState createState() => ProfilState();
}

class ProfilState extends ConsumerState<Profil> {
  int currentPage = 0;

  void changePage(int index) {
    setState(() {
      currentPage = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF4F1F7),
      body: Column(
        spacing: 40,
        children: [
          ProfilHeader(allowEdit: currentPage == 0),
          Padding(
            padding: const EdgeInsets.all(15),
            child: Column(
              spacing: 10,
              children: [
                Column(
                  spacing: 5,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      spacing: 2,
                      children: [
                        FaIcon(
                          mockCurrentUser.biologicalGender == 'female'
                              ? FontAwesomeIcons.venus
                              : FontAwesomeIcons.mars,
                          size: 16,
                          color: Color(
                            mockCurrentUser.biologicalGender == 'female'
                                ? 0xffFB8257
                                : 0xff87D5C8,
                          ),
                        ),
                        Text(
                          mockCurrentUser.username,
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                    Text("Buveur fou"),
                  ],
                ),
                AnimatedSwitcher(
                  duration: Duration(milliseconds: 200),
                  child: currentPage == 0
                      ? ProfilInformations()
                      : ProfilEvenements(),
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: PageSwitcher(
            onPageChanged: changePage,
            currentPage: 0,
            firstPage: 'Informations',
            secondPage: 'Évènements',
          ),
        ),
      ),
    );
  }
}
