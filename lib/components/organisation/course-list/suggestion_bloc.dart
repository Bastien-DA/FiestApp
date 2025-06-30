import 'package:fiestapp/components/text/custom-subtitlecomponent.dart';
import 'package:fiestapp/components/text/data-tag.component.dart';
import 'package:fiestapp/provider/suggestion-provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SuggestionBloc extends ConsumerWidget {
  const SuggestionBloc({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final suggestion = ref.watch(suggestionProvider);

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
                  "https://fiestapp-s3.mizury.fr/fiestapp/asset/biere.webp",
              text: "${suggestion.beer} Bières",
            ),
            DataTag(
              s3ImageUrl:
                  "https://fiestapp-s3.mizury.fr/fiestapp/asset/soda.webp",
              text: "${suggestion.soft} Softs",
            ),
            DataTag(
              s3ImageUrl:
                  "https://fiestapp-s3.mizury.fr/fiestapp/asset/pizza.webp",
              text: "${suggestion.pizza} Pizzas",
            ),
          ],
        ),
      ],
    );
  }
}
