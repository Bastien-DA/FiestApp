import 'package:fiestapp/api/suggestion-service.dart';
import 'package:fiestapp/models/user.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:image_picker/image_picker.dart';

class RegisterFormNotifier extends StateNotifier<User> {
  final Ref ref;
  final suggestionService = SuggestionService();

  XFile? _selectedFile;

  RegisterFormNotifier(this.ref)
    : super(
        User(
          userGuid: "",
          username: "",
          gender: "Male",
          age: 0,
          height: 0,
          weight: 0,
          alcoholConsumption: "Occasional",
          ppLink: "",
        ),
      );

  XFile? get selectedFile => _selectedFile;

  void updateSelectedFile(XFile? file) {
    _selectedFile = file;
    // Optionnel : mettre à jour le chemin dans le modèle si tu veux l’afficher dans l’UI
    state = state.copyWith(ppLink: file?.path ?? "");
  }

  void updateUsername(String username) {
    print(username);
    state = state.copyWith(username: username);
  }

  void updateGender(String gender) {
    state = state.copyWith(gender: gender);
  }

  void updateAge(int age) {
    state = state.copyWith(age: age);
  }

  void updateHeight(int height) {
    state = state.copyWith(height: height);
  }

  void updateWeight(int weight) {
    state = state.copyWith(weight: weight);
  }

  void updatePpLink(String path) {
    state = state.copyWith(ppLink: path);
  }

  void updateAlcohol(String value) {
    state = state.copyWith(alcoholConsumption: value);
  }
}

final registerFormProvider = StateNotifierProvider<RegisterFormNotifier, User>(
  (ref) => RegisterFormNotifier(ref),
);
