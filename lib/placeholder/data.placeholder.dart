import 'package:fiestapp/utils/types/event.dart';

import '../mock/user.mock.dart';

final p_event = Event(
  guid: 'placeholder',
  title: 'placeholder',
  description: 'placeholder description.',
  location: 'placeholder',
  latitute: 0,
  longitude: 0,
  date: 1750940247,
  organizer: mockUsers[0],
  participants: [mockUsers[0]],
  expenses: const [],
);
