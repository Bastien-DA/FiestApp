import 'package:fiestapp/components/text/custom-subtitlecomponent.dart';
import 'package:fiestapp/components/text/data-tag.component.dart';
import 'package:flutter/material.dart';

class SuggestionBloc extends StatefulWidget {
  const SuggestionBloc({super.key});

  @override
  State<SuggestionBloc> createState() => _SuggestionBlocState();
}

class _SuggestionBlocState extends State<SuggestionBloc> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: 5,
      children: [
        CustomSubTitle(title: "Recommandations"),
        Row(
          spacing: 5,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            DataTag(
              s3ImageUrl:
                  "https://fiestapp-s3.mizury.fr/fiestapp/asset/pizza.webp",
              text: "6 Bières",
            ),
          ],
        ),
      ],
    );
  }
}
