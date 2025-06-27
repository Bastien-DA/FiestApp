import 'package:fiestapp/components/card/illustration-card/illustration-card.component.dart';
import 'package:fiestapp/components/text/custom-title-expand.component.dart';
import 'package:fiestapp/mock/user.mock.dart';
import 'package:flutter/material.dart';

class CouseList extends StatefulWidget {
  const CouseList({super.key});

  @override
  State<CouseList> createState() => _CouseListState();
}

class _CouseListState extends State<CouseList> {
  void onClick() {
    print("CouseList");
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 10,
      children: [
        CustomTitleExpand(
          title: "Liste de courses",
          text: "Tout voir",
          onClick: onClick,
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
    );
  }
}
