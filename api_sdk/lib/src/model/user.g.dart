// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const UserGenderEnum _$userGenderEnum_male = const UserGenderEnum._('male');
const UserGenderEnum _$userGenderEnum_female = const UserGenderEnum._('female');
const UserGenderEnum _$userGenderEnum_unknownDefaultOpenApi =
    const UserGenderEnum._('unknownDefaultOpenApi');

UserGenderEnum _$userGenderEnumValueOf(String name) {
  switch (name) {
    case 'male':
      return _$userGenderEnum_male;
    case 'female':
      return _$userGenderEnum_female;
    case 'unknownDefaultOpenApi':
      return _$userGenderEnum_unknownDefaultOpenApi;
    default:
      return _$userGenderEnum_unknownDefaultOpenApi;
  }
}

final BuiltSet<UserGenderEnum> _$userGenderEnumValues =
    BuiltSet<UserGenderEnum>(const <UserGenderEnum>[
  _$userGenderEnum_male,
  _$userGenderEnum_female,
  _$userGenderEnum_unknownDefaultOpenApi,
]);

const UserAlcoholConsumptionEnum _$userAlcoholConsumptionEnum_occasional =
    const UserAlcoholConsumptionEnum._('occasional');
const UserAlcoholConsumptionEnum _$userAlcoholConsumptionEnum_regular =
    const UserAlcoholConsumptionEnum._('regular');
const UserAlcoholConsumptionEnum _$userAlcoholConsumptionEnum_veteran =
    const UserAlcoholConsumptionEnum._('veteran');
const UserAlcoholConsumptionEnum
    _$userAlcoholConsumptionEnum_unknownDefaultOpenApi =
    const UserAlcoholConsumptionEnum._('unknownDefaultOpenApi');

UserAlcoholConsumptionEnum _$userAlcoholConsumptionEnumValueOf(String name) {
  switch (name) {
    case 'occasional':
      return _$userAlcoholConsumptionEnum_occasional;
    case 'regular':
      return _$userAlcoholConsumptionEnum_regular;
    case 'veteran':
      return _$userAlcoholConsumptionEnum_veteran;
    case 'unknownDefaultOpenApi':
      return _$userAlcoholConsumptionEnum_unknownDefaultOpenApi;
    default:
      return _$userAlcoholConsumptionEnum_unknownDefaultOpenApi;
  }
}

final BuiltSet<UserAlcoholConsumptionEnum> _$userAlcoholConsumptionEnumValues =
    BuiltSet<UserAlcoholConsumptionEnum>(const <UserAlcoholConsumptionEnum>[
  _$userAlcoholConsumptionEnum_occasional,
  _$userAlcoholConsumptionEnum_regular,
  _$userAlcoholConsumptionEnum_veteran,
  _$userAlcoholConsumptionEnum_unknownDefaultOpenApi,
]);

Serializer<UserGenderEnum> _$userGenderEnumSerializer =
    _$UserGenderEnumSerializer();
Serializer<UserAlcoholConsumptionEnum> _$userAlcoholConsumptionEnumSerializer =
    _$UserAlcoholConsumptionEnumSerializer();

class _$UserGenderEnumSerializer
    implements PrimitiveSerializer<UserGenderEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'male': 'Male',
    'female': 'Female',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'Male': 'male',
    'Female': 'female',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[UserGenderEnum];
  @override
  final String wireName = 'UserGenderEnum';

  @override
  Object serialize(Serializers serializers, UserGenderEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  UserGenderEnum deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      UserGenderEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$UserAlcoholConsumptionEnumSerializer
    implements PrimitiveSerializer<UserAlcoholConsumptionEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'occasional': 'Occasional',
    'regular': 'Regular',
    'veteran': 'Veteran',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'Occasional': 'occasional',
    'Regular': 'regular',
    'Veteran': 'veteran',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[UserAlcoholConsumptionEnum];
  @override
  final String wireName = 'UserAlcoholConsumptionEnum';

  @override
  Object serialize(Serializers serializers, UserAlcoholConsumptionEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  UserAlcoholConsumptionEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      UserAlcoholConsumptionEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$User extends User {
  @override
  final String guid;
  @override
  final String username;
  @override
  final UserGenderEnum gender;
  @override
  final num age;
  @override
  final num height;
  @override
  final num weight;
  @override
  final UserAlcoholConsumptionEnum alcoholConsumption;
  @override
  final BuiltList<Event> events;
  @override
  final BuiltList<Event> eventsParticipated;

  factory _$User([void Function(UserBuilder)? updates]) =>
      (UserBuilder()..update(updates))._build();

  _$User._(
      {required this.guid,
      required this.username,
      required this.gender,
      required this.age,
      required this.height,
      required this.weight,
      required this.alcoholConsumption,
      required this.events,
      required this.eventsParticipated})
      : super._();
  @override
  User rebuild(void Function(UserBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UserBuilder toBuilder() => UserBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is User &&
        guid == other.guid &&
        username == other.username &&
        gender == other.gender &&
        age == other.age &&
        height == other.height &&
        weight == other.weight &&
        alcoholConsumption == other.alcoholConsumption &&
        events == other.events &&
        eventsParticipated == other.eventsParticipated;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, guid.hashCode);
    _$hash = $jc(_$hash, username.hashCode);
    _$hash = $jc(_$hash, gender.hashCode);
    _$hash = $jc(_$hash, age.hashCode);
    _$hash = $jc(_$hash, height.hashCode);
    _$hash = $jc(_$hash, weight.hashCode);
    _$hash = $jc(_$hash, alcoholConsumption.hashCode);
    _$hash = $jc(_$hash, events.hashCode);
    _$hash = $jc(_$hash, eventsParticipated.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'User')
          ..add('guid', guid)
          ..add('username', username)
          ..add('gender', gender)
          ..add('age', age)
          ..add('height', height)
          ..add('weight', weight)
          ..add('alcoholConsumption', alcoholConsumption)
          ..add('events', events)
          ..add('eventsParticipated', eventsParticipated))
        .toString();
  }
}

class UserBuilder implements Builder<User, UserBuilder> {
  _$User? _$v;

  String? _guid;
  String? get guid => _$this._guid;
  set guid(String? guid) => _$this._guid = guid;

  String? _username;
  String? get username => _$this._username;
  set username(String? username) => _$this._username = username;

  UserGenderEnum? _gender;
  UserGenderEnum? get gender => _$this._gender;
  set gender(UserGenderEnum? gender) => _$this._gender = gender;

  num? _age;
  num? get age => _$this._age;
  set age(num? age) => _$this._age = age;

  num? _height;
  num? get height => _$this._height;
  set height(num? height) => _$this._height = height;

  num? _weight;
  num? get weight => _$this._weight;
  set weight(num? weight) => _$this._weight = weight;

  UserAlcoholConsumptionEnum? _alcoholConsumption;
  UserAlcoholConsumptionEnum? get alcoholConsumption =>
      _$this._alcoholConsumption;
  set alcoholConsumption(UserAlcoholConsumptionEnum? alcoholConsumption) =>
      _$this._alcoholConsumption = alcoholConsumption;

  ListBuilder<Event>? _events;
  ListBuilder<Event> get events => _$this._events ??= ListBuilder<Event>();
  set events(ListBuilder<Event>? events) => _$this._events = events;

  ListBuilder<Event>? _eventsParticipated;
  ListBuilder<Event> get eventsParticipated =>
      _$this._eventsParticipated ??= ListBuilder<Event>();
  set eventsParticipated(ListBuilder<Event>? eventsParticipated) =>
      _$this._eventsParticipated = eventsParticipated;

  UserBuilder() {
    User._defaults(this);
  }

  UserBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _guid = $v.guid;
      _username = $v.username;
      _gender = $v.gender;
      _age = $v.age;
      _height = $v.height;
      _weight = $v.weight;
      _alcoholConsumption = $v.alcoholConsumption;
      _events = $v.events.toBuilder();
      _eventsParticipated = $v.eventsParticipated.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(User other) {
    _$v = other as _$User;
  }

  @override
  void update(void Function(UserBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  User build() => _build();

  _$User _build() {
    _$User _$result;
    try {
      _$result = _$v ??
          _$User._(
            guid: BuiltValueNullFieldError.checkNotNull(guid, r'User', 'guid'),
            username: BuiltValueNullFieldError.checkNotNull(
                username, r'User', 'username'),
            gender: BuiltValueNullFieldError.checkNotNull(
                gender, r'User', 'gender'),
            age: BuiltValueNullFieldError.checkNotNull(age, r'User', 'age'),
            height: BuiltValueNullFieldError.checkNotNull(
                height, r'User', 'height'),
            weight: BuiltValueNullFieldError.checkNotNull(
                weight, r'User', 'weight'),
            alcoholConsumption: BuiltValueNullFieldError.checkNotNull(
                alcoholConsumption, r'User', 'alcoholConsumption'),
            events: events.build(),
            eventsParticipated: eventsParticipated.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'events';
        events.build();
        _$failedField = 'eventsParticipated';
        eventsParticipated.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(r'User', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
