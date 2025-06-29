import 'package:fiestapp/components/card/illustration-card/illustration-card.component.dart';
import 'package:fiestapp/components/organisation-item/add.component.dart';
import 'package:flutter/material.dart';

class CourseListGrid extends StatefulWidget {
  const CourseListGrid({super.key});

  @override
  State<CourseListGrid> createState() => _CourseListGridState();
}

class _CourseListGridState extends State<CourseListGrid> {
  void onClick() {
    print('click');
  }

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      padding: EdgeInsets.zero,
      shrinkWrap: true,
      crossAxisCount: 3,
      mainAxisSpacing: 10,
      crossAxisSpacing: 10,
      childAspectRatio: 0.70,
      children: [
        AddCard(height: 4, width: 20, radius: 30, onClick: onClick),
        IllustrationCard(
          illustration: 'assets/images/profil/weight.png',
          principalLabel: '2',
          secondaryLabel: 'Eau',
        ),
        IllustrationCard(
          illustration: 'assets/images/profil/age.png',
          principalLabel: '10',
          secondaryLabel: 'Biere',
        ),
        IllustrationCard(
          illustration: 'assets/images/profil/age.png',
          principalLabel: '3',
          secondaryLabel: 'Pizza',
        ),
        IllustrationCard(
          illustration: 'assets/images/profil/age.png',
          principalLabel: '4',
          secondaryLabel: 'Paquet de chips',
        ),
      ],
    );
  }
}
