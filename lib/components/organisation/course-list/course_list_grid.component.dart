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
      physics: const NeverScrollableScrollPhysics(),
      children: [
        AddCard(height: 4, width: 20, radius: 30, onClick: onClick),
        IllustrationCard(
          s3ImageUrl: "https://fiestapp-s3.mizury.fr/fiestapp/asset/eau.webp",
          principalLabel: '2',
          secondaryLabel: 'Eau',
        ),
        IllustrationCard(
          s3ImageUrl: "https://fiestapp-s3.mizury.fr/fiestapp/asset/biere.webp",
          principalLabel: '10',
          secondaryLabel: 'Biere',
        ),
        IllustrationCard(
          s3ImageUrl: "https://fiestapp-s3.mizury.fr/fiestapp/asset/pizza.webp",
          principalLabel: '3',
          secondaryLabel: 'Pizza',
        ),
        IllustrationCard(
          s3ImageUrl: "https://fiestapp-s3.mizury.fr/fiestapp/asset/chips.webp",
          principalLabel: '4',
          secondaryLabel: 'Paquet de chips',
        ),
      ],
    );
  }
}
