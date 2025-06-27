import 'package:fiestapp/utils/utils.dart';

import 'expense.dart';
import 'user.dart';

class Event {
  final String guid;
  final String title;
  final String description;
  final String location;
  final double latitute; // peut-être à corriger en latitude ?
  final double longitude;
  final int date;

  String get formattedDate => formatDate(date);
  final User organazer;
  final List<User> participants;
  final List<LightExpenseDto> expenses;

  Event({
    required this.guid,
    required this.title,
    required this.description,
    required this.location,
    required this.latitute,
    required this.longitude,
    required this.date,
    required this.organazer,
    required this.participants,
    required this.expenses,
  });

  factory Event.fromJson(Map<String, dynamic> json) {
    return Event(
      guid: json['id'] as String,
      title: json['title'] as String,
      description: json['description'] as String,
      location: json['location'] as String,
      latitute: json['latitude'] as double,
      longitude: json['longitude'] as double,
      date: json['date'] as int,
      organazer: User.fromJson(json['organazer']),
      participants: (json['paticipants'] as List)
          .map((e) => User.fromJson(e))
          .toList(),
      expenses: (json['expenses'] as List)
          .map((e) => LightExpenseDto.fromJson(e))
          .toList(),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': guid,
      'title': title,
      'description': description,
      'location': location,
      'latitude': latitute,
      'longitude': longitude,
      'date': date,
      'organazer': organazer.toJson(),
      'paticipants': participants.map((e) => e.toJson()).toList(),
      'expenses': expenses.map((e) => e.toJson()).toList(),
    };
  }
}
