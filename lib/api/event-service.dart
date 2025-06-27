import 'package:fiestapp/mock/event.mock.dart';
import 'package:fiestapp/utils/types/event.dart';

class EventService {
  List<Event> fetchAllEvents() {
    return [mockEvent];
  }
}
