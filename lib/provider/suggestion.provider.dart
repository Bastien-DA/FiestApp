import 'package:fiestapp/api/suggestion-service.dart';
import 'package:fiestapp/utils/types/suggestion.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SuggestionNotifier extends StateNotifier<Suggestion> {
  final Ref ref;
  final suggestionService = SuggestionService();

  SuggestionNotifier(this.ref) : super(Suggestion(beer: 0, soft: 0, pizza: 0)) {
    fetchAllSuggestions();
  }

  void fetchAllSuggestions() async {
    final data = await suggestionService.getSuggestion();
    state = data;
  }
}

final suggestionProvider =
    StateNotifierProvider<SuggestionNotifier, Suggestion>(
      (ref) => SuggestionNotifier(ref),
    );
