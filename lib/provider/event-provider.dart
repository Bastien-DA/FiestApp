import 'package:fiestapp/api/event-service.dart';
import 'package:fiestapp/utils/types/event.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class EventNotifier extends StateNotifier<AsyncValue<List<Event>>> {
  final Ref ref;
  final eventServiceProvider = Provider((ref) => EventService());

  EventNotifier(this.ref) : super(const AsyncValue.loading()) {
    fetchAllEvents();
  }

  void fetchAllEvents() {
    try {
      final eventService = ref.read(eventServiceProvider);
      final data = eventService.fetchAllEvents();
      state = AsyncValue.data(data);
    } catch (e) {
      state = AsyncValue.error(e, StackTrace.current);
    }
  }
}

final eventProvider =
    StateNotifierProvider<EventNotifier, AsyncValue<List<Event>>>(
      (ref) => EventNotifier(ref),
    );
