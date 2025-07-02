import 'package:fiestapp/models/event.dart';
import 'package:fiestapp/models/user.dart';

class Driver {
  final String guid;
  final Event event;
  final User driver;

  Driver({required this.guid, required this.event, required this.driver});

  factory Driver.fromJson(Map<String, dynamic> json) {
    return Driver(
      guid: json['id'] as String,
      event: Event.fromJson(json['event']),
      driver: User.fromJson(json['driver']),
    );
  }

  Map<String, dynamic> toJson() {
    return {'id': guid, 'event': event.toJson(), 'driver': driver.toJson()};
  }
}
