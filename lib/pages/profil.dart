import 'package:fiestapp/components/header/profil/profil-header.component.dart';
import 'package:fiestapp/components/text/custom-title.component.dart';
import 'package:fiestapp/mock/user.mock.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class Profil extends ConsumerWidget {
  const Profil({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      backgroundColor: Color(0xffF4F1F7),
      body: Column(
        spacing: 40,
        children: [
          ProfilHeader(),
          Padding(
            padding: const EdgeInsets.all(15),
            child: Column(
              spacing: 10,
              children: [
                Column(
                  spacing: 5,
                  children: [
                    Text(
                      mockCurrentUser.username,
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text("Maître des évènements"),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [CustomTitle(text: 'Informations')],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
