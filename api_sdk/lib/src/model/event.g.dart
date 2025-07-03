// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'event.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Event extends Event {
  @override
  final String guid;
  @override
  final String title;
  @override
  final String location;
  @override
  final JsonObject? latitude;
  @override
  final JsonObject? longitude;
  @override
  final num date;
  @override
  final User organizer;
  @override
  final BuiltList<User> participants;
  @override
  final BuiltList<Course> courses;
  @override
  final BuiltList<Shopping> shoppings;
  @override
  final BuiltList<Expense> expenses;
  @override
  final BuiltList<Hosting> hostings;
  @override
  final BuiltList<Poll> polls;

  factory _$Event([void Function(EventBuilder)? updates]) =>
      (EventBuilder()..update(updates))._build();

  _$Event._(
      {required this.guid,
      required this.title,
      required this.location,
      this.latitude,
      this.longitude,
      required this.date,
      required this.organizer,
      required this.participants,
      required this.courses,
      required this.shoppings,
      required this.expenses,
      required this.hostings,
      required this.polls})
      : super._();
  @override
  Event rebuild(void Function(EventBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  EventBuilder toBuilder() => EventBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Event &&
        guid == other.guid &&
        title == other.title &&
        location == other.location &&
        latitude == other.latitude &&
        longitude == other.longitude &&
        date == other.date &&
        organizer == other.organizer &&
        participants == other.participants &&
        courses == other.courses &&
        shoppings == other.shoppings &&
        expenses == other.expenses &&
        hostings == other.hostings &&
        polls == other.polls;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, guid.hashCode);
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jc(_$hash, location.hashCode);
    _$hash = $jc(_$hash, latitude.hashCode);
    _$hash = $jc(_$hash, longitude.hashCode);
    _$hash = $jc(_$hash, date.hashCode);
    _$hash = $jc(_$hash, organizer.hashCode);
    _$hash = $jc(_$hash, participants.hashCode);
    _$hash = $jc(_$hash, courses.hashCode);
    _$hash = $jc(_$hash, shoppings.hashCode);
    _$hash = $jc(_$hash, expenses.hashCode);
    _$hash = $jc(_$hash, hostings.hashCode);
    _$hash = $jc(_$hash, polls.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Event')
          ..add('guid', guid)
          ..add('title', title)
          ..add('location', location)
          ..add('latitude', latitude)
          ..add('longitude', longitude)
          ..add('date', date)
          ..add('organizer', organizer)
          ..add('participants', participants)
          ..add('courses', courses)
          ..add('shoppings', shoppings)
          ..add('expenses', expenses)
          ..add('hostings', hostings)
          ..add('polls', polls))
        .toString();
  }
}

class EventBuilder implements Builder<Event, EventBuilder> {
  _$Event? _$v;

  String? _guid;
  String? get guid => _$this._guid;
  set guid(String? guid) => _$this._guid = guid;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  String? _location;
  String? get location => _$this._location;
  set location(String? location) => _$this._location = location;

  JsonObject? _latitude;
  JsonObject? get latitude => _$this._latitude;
  set latitude(JsonObject? latitude) => _$this._latitude = latitude;

  JsonObject? _longitude;
  JsonObject? get longitude => _$this._longitude;
  set longitude(JsonObject? longitude) => _$this._longitude = longitude;

  num? _date;
  num? get date => _$this._date;
  set date(num? date) => _$this._date = date;

  UserBuilder? _organizer;
  UserBuilder get organizer => _$this._organizer ??= UserBuilder();
  set organizer(UserBuilder? organizer) => _$this._organizer = organizer;

  ListBuilder<User>? _participants;
  ListBuilder<User> get participants =>
      _$this._participants ??= ListBuilder<User>();
  set participants(ListBuilder<User>? participants) =>
      _$this._participants = participants;

  ListBuilder<Course>? _courses;
  ListBuilder<Course> get courses => _$this._courses ??= ListBuilder<Course>();
  set courses(ListBuilder<Course>? courses) => _$this._courses = courses;

  ListBuilder<Shopping>? _shoppings;
  ListBuilder<Shopping> get shoppings =>
      _$this._shoppings ??= ListBuilder<Shopping>();
  set shoppings(ListBuilder<Shopping>? shoppings) =>
      _$this._shoppings = shoppings;

  ListBuilder<Expense>? _expenses;
  ListBuilder<Expense> get expenses =>
      _$this._expenses ??= ListBuilder<Expense>();
  set expenses(ListBuilder<Expense>? expenses) => _$this._expenses = expenses;

  ListBuilder<Hosting>? _hostings;
  ListBuilder<Hosting> get hostings =>
      _$this._hostings ??= ListBuilder<Hosting>();
  set hostings(ListBuilder<Hosting>? hostings) => _$this._hostings = hostings;

  ListBuilder<Poll>? _polls;
  ListBuilder<Poll> get polls => _$this._polls ??= ListBuilder<Poll>();
  set polls(ListBuilder<Poll>? polls) => _$this._polls = polls;

  EventBuilder() {
    Event._defaults(this);
  }

  EventBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _guid = $v.guid;
      _title = $v.title;
      _location = $v.location;
      _latitude = $v.latitude;
      _longitude = $v.longitude;
      _date = $v.date;
      _organizer = $v.organizer.toBuilder();
      _participants = $v.participants.toBuilder();
      _courses = $v.courses.toBuilder();
      _shoppings = $v.shoppings.toBuilder();
      _expenses = $v.expenses.toBuilder();
      _hostings = $v.hostings.toBuilder();
      _polls = $v.polls.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Event other) {
    _$v = other as _$Event;
  }

  @override
  void update(void Function(EventBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Event build() => _build();

  _$Event _build() {
    _$Event _$result;
    try {
      _$result = _$v ??
          _$Event._(
            guid: BuiltValueNullFieldError.checkNotNull(guid, r'Event', 'guid'),
            title:
                BuiltValueNullFieldError.checkNotNull(title, r'Event', 'title'),
            location: BuiltValueNullFieldError.checkNotNull(
                location, r'Event', 'location'),
            latitude: latitude,
            longitude: longitude,
            date: BuiltValueNullFieldError.checkNotNull(date, r'Event', 'date'),
            organizer: organizer.build(),
            participants: participants.build(),
            courses: courses.build(),
            shoppings: shoppings.build(),
            expenses: expenses.build(),
            hostings: hostings.build(),
            polls: polls.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'organizer';
        organizer.build();
        _$failedField = 'participants';
        participants.build();
        _$failedField = 'courses';
        courses.build();
        _$failedField = 'shoppings';
        shoppings.build();
        _$failedField = 'expenses';
        expenses.build();
        _$failedField = 'hostings';
        hostings.build();
        _$failedField = 'polls';
        polls.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(r'Event', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
