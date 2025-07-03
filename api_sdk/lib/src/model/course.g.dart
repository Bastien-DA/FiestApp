// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'course.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Course extends Course {
  @override
  final String guid;
  @override
  final num seats;
  @override
  final User driver;
  @override
  final Event event;
  @override
  final BuiltList<CourseRequest> requests;
  @override
  final BuiltList<User> acceptedPassengers;

  factory _$Course([void Function(CourseBuilder)? updates]) =>
      (CourseBuilder()..update(updates))._build();

  _$Course._(
      {required this.guid,
      required this.seats,
      required this.driver,
      required this.event,
      required this.requests,
      required this.acceptedPassengers})
      : super._();
  @override
  Course rebuild(void Function(CourseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CourseBuilder toBuilder() => CourseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Course &&
        guid == other.guid &&
        seats == other.seats &&
        driver == other.driver &&
        event == other.event &&
        requests == other.requests &&
        acceptedPassengers == other.acceptedPassengers;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, guid.hashCode);
    _$hash = $jc(_$hash, seats.hashCode);
    _$hash = $jc(_$hash, driver.hashCode);
    _$hash = $jc(_$hash, event.hashCode);
    _$hash = $jc(_$hash, requests.hashCode);
    _$hash = $jc(_$hash, acceptedPassengers.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Course')
          ..add('guid', guid)
          ..add('seats', seats)
          ..add('driver', driver)
          ..add('event', event)
          ..add('requests', requests)
          ..add('acceptedPassengers', acceptedPassengers))
        .toString();
  }
}

class CourseBuilder implements Builder<Course, CourseBuilder> {
  _$Course? _$v;

  String? _guid;
  String? get guid => _$this._guid;
  set guid(String? guid) => _$this._guid = guid;

  num? _seats;
  num? get seats => _$this._seats;
  set seats(num? seats) => _$this._seats = seats;

  UserBuilder? _driver;
  UserBuilder get driver => _$this._driver ??= UserBuilder();
  set driver(UserBuilder? driver) => _$this._driver = driver;

  EventBuilder? _event;
  EventBuilder get event => _$this._event ??= EventBuilder();
  set event(EventBuilder? event) => _$this._event = event;

  ListBuilder<CourseRequest>? _requests;
  ListBuilder<CourseRequest> get requests =>
      _$this._requests ??= ListBuilder<CourseRequest>();
  set requests(ListBuilder<CourseRequest>? requests) =>
      _$this._requests = requests;

  ListBuilder<User>? _acceptedPassengers;
  ListBuilder<User> get acceptedPassengers =>
      _$this._acceptedPassengers ??= ListBuilder<User>();
  set acceptedPassengers(ListBuilder<User>? acceptedPassengers) =>
      _$this._acceptedPassengers = acceptedPassengers;

  CourseBuilder() {
    Course._defaults(this);
  }

  CourseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _guid = $v.guid;
      _seats = $v.seats;
      _driver = $v.driver.toBuilder();
      _event = $v.event.toBuilder();
      _requests = $v.requests.toBuilder();
      _acceptedPassengers = $v.acceptedPassengers.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Course other) {
    _$v = other as _$Course;
  }

  @override
  void update(void Function(CourseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Course build() => _build();

  _$Course _build() {
    _$Course _$result;
    try {
      _$result = _$v ??
          _$Course._(
            guid:
                BuiltValueNullFieldError.checkNotNull(guid, r'Course', 'guid'),
            seats: BuiltValueNullFieldError.checkNotNull(
                seats, r'Course', 'seats'),
            driver: driver.build(),
            event: event.build(),
            requests: requests.build(),
            acceptedPassengers: acceptedPassengers.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'driver';
        driver.build();
        _$failedField = 'event';
        event.build();
        _$failedField = 'requests';
        requests.build();
        _$failedField = 'acceptedPassengers';
        acceptedPassengers.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'Course', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
