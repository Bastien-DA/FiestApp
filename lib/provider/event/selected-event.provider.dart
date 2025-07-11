import 'package:fiestapp/api/event-service.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:openapi/openapi.dart';

class SelectedEventNotifier extends StateNotifier<Event?> {
  final Ref ref;
  final eventService = EventService();

  SelectedEventNotifier(this.ref) : super(null);

  Future<Event?> fetchSelectedEvent(String id) async {
    final data = await eventService.getEventById(id);
    state = data;
    return data;
  }

  void clear() {
    state = null;
  }
}

final selectedEventProvider =
    StateNotifierProvider<SelectedEventNotifier, Event?>(
      (ref) => SelectedEventNotifier(ref),
    );
