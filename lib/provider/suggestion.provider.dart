import 'package:fiestapp/api/suggestion-service.dart';
import 'package:fiestapp/utils/types/suggestion.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final suggestionServiceProvider = Provider((ref) => SuggestionService());

class SuggestionNotifier extends StateNotifier<Suggestion> {
  final Ref ref;

  SuggestionNotifier(this.ref) : super(Suggestion(beer: 0, soft: 0, pizza: 0)) {
    fetchAllSuggestions();
  }

  void fetchAllSuggestions() async {
    final suggestionService = ref.read(suggestionServiceProvider);
    final data = await suggestionService.fetchSuggestion();
    state = data;
    print(state);
  }
}

final suggestionProvider =
    StateNotifierProvider<SuggestionNotifier, Suggestion>(
      (ref) => SuggestionNotifier(ref),
    );
