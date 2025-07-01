import 'package:fiestapp/api/event-service.dart';
import 'package:fiestapp/utils/types/event.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SelectedEventNotifier extends StateNotifier<Event?> {
  final Ref ref;
  final eventService = EventService();

  SelectedEventNotifier(this.ref) : super(null);

  Future<void> fetchSelectedEvent(String id) async {
    final data = await eventService.getEventById(id);
    state = data;
  }

  void clear() {
    state = null;
  }
}

final selectedEventProvider =
    StateNotifierProvider<SelectedEventNotifier, Event?>(
      (ref) => SelectedEventNotifier(ref),
    );
