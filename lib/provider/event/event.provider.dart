import 'package:fiestapp/api/event-service.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:openapi/openapi.dart';

class EventNotifier extends StateNotifier<List<Event>> {
  final Ref ref;
  final eventService = EventService();

  EventNotifier(this.ref) : super([]);

  Future<List<Event>> fetchAllEvents() async {
    final data = await eventService.getEvents();
    state = data;
    return data;
  }

  void inverseEvents() {
    final currentEvents = state;
    var listEvents = List<Event>.from(currentEvents);
    listEvents.add(listEvents.removeAt(0));
    state = listEvents;
  }

  void clear() {
    state = [];
  }
}

final eventProvider = StateNotifierProvider<EventNotifier, List<Event>>(
  (ref) => EventNotifier(ref),
);
