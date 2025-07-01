import 'package:fiestapp/mock/event.mock.dart';
import 'package:fiestapp/utils/types/event.dart';

class EventService {
  Future<List<Event>> getEvents() async {
    return await Future.delayed(Duration(seconds: 2), () => mockEvents);
  }

  Future<List<Event>> getMyEvents(String guid) async {
    return await Future.delayed(
      Duration(seconds: 2),
      () => mockEvents.where((e) => e.organizer.userGuid == guid).toList(),
    );
  }

  Future<Event> getEventById(String guid) async {
    return await Future.delayed(
      Duration(seconds: 2),
      () => mockEvents.firstWhere((e) => e.guid == guid),
    );
  }
}
