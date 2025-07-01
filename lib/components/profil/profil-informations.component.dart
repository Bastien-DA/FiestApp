import 'package:fiestapp/components/custom-card/illustration-card/illustration-card.component.dart';
import 'package:fiestapp/components/text/custom-title.component.dart';
import 'package:fiestapp/mock/user.mock.dart';
import 'package:fiestapp/utils/constant/constant.dart';
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
                s3ImageUrl: "${S3_enpoint}asset/soda.webp",
                principalLabel: 'Taille',
                secondaryLabel:
                    '${mockCurrentUser.height ~/ 100}m${mockCurrentUser.height % 100}',
              ),
              IllustrationCard(
                s3ImageUrl: "${S3_enpoint}asset/soda.webp",
                principalLabel: 'Poids',
                secondaryLabel: '${mockCurrentUser.weight} kg',
              ),
              IllustrationCard(
                s3ImageUrl: "${S3_enpoint}asset/soda.webp",
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
