import 'package:built_collection/built_collection.dart';
import 'package:fiestapp/api/suggestion-service.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:image_picker/image_picker.dart';
import 'package:openapi/src/model/user.dart';

class RegisterFormNotifier extends StateNotifier<User> {
  final Ref ref;
  final suggestionService = SuggestionService();

  XFile? _selectedFile;

  RegisterFormNotifier(this.ref)
    : super(
        User((b) {
          // Initialise avec des valeurs par défaut valides si besoin
          b
            ..guid = ''
            ..username = ''
            ..gender = UserGenderEnum.unknownDefaultOpenApi
            ..age = 0
            ..height = 0
            ..weight = 0
            ..alcoholConsumption =
                UserAlcoholConsumptionEnum.unknownDefaultOpenApi
            ..events = ListBuilder()
            ..eventsParticipated = ListBuilder();
        }),
      );

  XFile? get selectedFile => _selectedFile;

  void updateSelectedFile(XFile? file) {
    _selectedFile = file;
  }

  void updateUsername(String username) {
    state = state.rebuild((b) => b..username = username);
  }

  void updateGender(UserGenderEnum gender) {
    state = state.rebuild((b) => b..gender = gender);
  }

  void updateAge(int age) {
    state = state.rebuild((b) => b..age = age);
  }

  void updateHeight(int height) {
    state = state.rebuild((b) => b..height = height);
  }

  void updateWeight(int weight) {
    state = state.rebuild((b) => b..weight = weight);
  }

  void updateAlcohol(UserAlcoholConsumptionEnum value) {
    state = state.rebuild((b) => b..alcoholConsumption = value);
  }
}

final registerFormProvider = StateNotifierProvider<RegisterFormNotifier, User>(
  (ref) => RegisterFormNotifier(ref),
);
