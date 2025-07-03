import 'package:fiestapp/api/suggestion-service.dart';
import 'package:fiestapp/models/suggestion.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:openapi/openapi.dart';


class SuggestionNotifier extends StateNotifier<Suggestion> {
  final Ref ref;
  final suggestionService = SuggestionService();

  SuggestionNotifier(this.ref) : super(Suggestion(beer: 0, soft: 0, pizza: 0)) {
  }

  void fetchAllSuggestions(Event event) async {
    final data = await suggestionService.getSuggestion(event);
    state = data;
  }
}

final suggestionProvider =
    StateNotifierProvider<SuggestionNotifier, Suggestion>(
      (ref) => SuggestionNotifier(ref),
    );
