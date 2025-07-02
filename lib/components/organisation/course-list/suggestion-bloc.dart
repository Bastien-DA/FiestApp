import 'package:fiestapp/components/text/custom-subtitlecomponent.dart';
import 'package:fiestapp/components/text/data-tag.component.dart';
import 'package:fiestapp/provider/suggestion.provider.dart';
import 'package:fiestapp/utils/constant/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SuggestionBloc extends ConsumerStatefulWidget {
  const SuggestionBloc({super.key});

  @override
  ConsumerState<SuggestionBloc> createState() => _SuggestionBlocState();
}

class _SuggestionBlocState extends ConsumerState<SuggestionBloc> {

  @override
  void initState() {
    super.initState();

    ref.read(suggestionProvider.notifier).fetchAllSuggestions();
  }

  @override
  Widget build(BuildContext context) {
    final suggestion = ref.watch(suggestionProvider);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const CustomSubTitle(title: "Recommandations"),
        Opacity(
          opacity: 0.6,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              DataTag(
                s3ImageUrl: "${S3_enpoint}asset/biere.webp",
                text: "${suggestion.beer} Bières",
              ),
              DataTag(
                s3ImageUrl: "${S3_enpoint}asset/soda.webp",
                text: "${suggestion.soft} Softs",
              ),
              DataTag(
                s3ImageUrl: "${S3_enpoint}asset/pizza.webp",
                text: "${suggestion.pizza} Pizzas",
              ),
            ],
          ),
        ),
      ],
    );
  }
}
