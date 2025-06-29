import 'package:fiestapp/api/event-service.dart';
import 'package:fiestapp/utils/types/event.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class EventNotifier extends StateNotifier<List<Event>> {
  final Ref ref;
  final eventServiceProvider = Provider((ref) => EventService());

  EventNotifier(this.ref) : super([]) {
    fetchAllEvents();
  }

  void fetchAllEvents() {
    final eventService = ref.read(eventServiceProvider);
    final data = eventService.fetchAllEvents();
    state = data;
  }

  void inversEvents() {
    final currentEvents = state;
    var listEvents = List<Event>.from(currentEvents);
    listEvents.add(listEvents.removeAt(0));
    state = listEvents;
  }
}

final eventProvider = StateNotifierProvider<EventNotifier, List<Event>>(
  (ref) => EventNotifier(ref),
);
