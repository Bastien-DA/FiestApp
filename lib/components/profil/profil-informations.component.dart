import 'package:fiestapp/components/card/illustration-card/illustration-card.component.dart';
import 'package:fiestapp/components/text/custom-title.component.dart';
import 'package:fiestapp/mock/user.mock.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ProfilInformations extends ConsumerWidget {
  const ProfilInformations({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        spacing: 10,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [CustomTitle(text: 'Informations')],
          ),
          GridView.count(
            padding: EdgeInsets.zero,
            shrinkWrap: true,
            crossAxisCount: 3,
            mainAxisSpacing: 10,
            crossAxisSpacing: 10,
            childAspectRatio: 0.70,
            children: [
              IllustrationCard(
                illustration: 'assets/images/profil/size.png',
                principalLabel: 'Taille',
                secondaryLabel:
                    '${mockCurrentUser.height ~/ 100}m${mockCurrentUser.height % 100}',
              ),
              IllustrationCard(
                illustration: 'assets/images/profil/weight.png',
                principalLabel: 'Poids',
                secondaryLabel: '${mockCurrentUser.weight} kg',
              ),
              IllustrationCard(
                illustration: 'assets/images/profil/age.png',
                principalLabel: 'Age',
                secondaryLabel: '${mockCurrentUser.age} ans',
              ),
            ],
          ),
        ],
      ),
    );
  }
}
