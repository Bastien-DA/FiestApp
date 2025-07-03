import 'package:fiestapp/api/suggestion-service.dart';
import 'package:fiestapp/models/event.dart';
import 'package:fiestapp/models/user.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:image_picker/image_picker.dart';import 'package:openapi/openapi.dart';

class EventFormNotifier extends StateNotifier<CreateEventDto> {
  final Ref ref;

  XFile? _selectedFile;

  EventFormNotifier(this.ref)
    : super(CreateEventDto((b) => b
        ..title = ""
        ..location = ""
        ..latitude = 0.0
        ..longitude = 0.0
        ..date = (DateTime.now().millisecondsSinceEpoch ~/ 1000)
        ..organizer = "zertyui"));

  XFile? get selectedFile => _selectedFile;

  // void updateSelectedFile(XFile? file) {
  //   _selectedFile = file;
  //   state = state.rebuild(b)(ppLink: file?.path ?? "");
  // }

  void updateTitle(String title) {
    state = state.rebuild((b) => b..title = title);
  }

  void updateLocation(String location) {
    state = state.rebuild((b) => b..location = location);
  }

  void updateLatitude(double latitude) {
    state = state.rebuild((b) => b..latitude = latitude);
  }

  void updateLongitude(double longitude) {
    state = state.rebuild((b) => b..longitude = longitude);
  }

  void updateDate(int date) {
    state = state.rebuild((b) => b..date = date);
  }

  void updateOrganizer(String organizer) {
    state = state.rebuild((b) => b..organizer = organizer);
  }
}

final eventFormProvider = StateNotifierProvider<EventFormNotifier, CreateEventDto>(
  (ref) => EventFormNotifier(ref),
);
