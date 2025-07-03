// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_event_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CreateEventDto extends CreateEventDto {
  @override
  final String title;
  @override
  final String location;
  @override
  final num? latitude;
  @override
  final num? longitude;
  @override
  final num date;
  @override
  final String organizer;

  factory _$CreateEventDto([void Function(CreateEventDtoBuilder)? updates]) =>
      (CreateEventDtoBuilder()..update(updates))._build();

  _$CreateEventDto._(
      {required this.title,
      required this.location,
      this.latitude,
      this.longitude,
      required this.date,
      required this.organizer})
      : super._();
  @override
  CreateEventDto rebuild(void Function(CreateEventDtoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CreateEventDtoBuilder toBuilder() => CreateEventDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreateEventDto &&
        title == other.title &&
        location == other.location &&
        latitude == other.latitude &&
        longitude == other.longitude &&
        date == other.date &&
        organizer == other.organizer;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jc(_$hash, location.hashCode);
    _$hash = $jc(_$hash, latitude.hashCode);
    _$hash = $jc(_$hash, longitude.hashCode);
    _$hash = $jc(_$hash, date.hashCode);
    _$hash = $jc(_$hash, organizer.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CreateEventDto')
          ..add('title', title)
          ..add('location', location)
          ..add('latitude', latitude)
          ..add('longitude', longitude)
          ..add('date', date)
          ..add('organizer', organizer))
        .toString();
  }
}

class CreateEventDtoBuilder
    implements Builder<CreateEventDto, CreateEventDtoBuilder> {
  _$CreateEventDto? _$v;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  String? _location;
  String? get location => _$this._location;
  set location(String? location) => _$this._location = location;

  num? _latitude;
  num? get latitude => _$this._latitude;
  set latitude(num? latitude) => _$this._latitude = latitude;

  num? _longitude;
  num? get longitude => _$this._longitude;
  set longitude(num? longitude) => _$this._longitude = longitude;

  num? _date;
  num? get date => _$this._date;
  set date(num? date) => _$this._date = date;

  String? _organizer;
  String? get organizer => _$this._organizer;
  set organizer(String? organizer) => _$this._organizer = organizer;

  CreateEventDtoBuilder() {
    CreateEventDto._defaults(this);
  }

  CreateEventDtoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _title = $v.title;
      _location = $v.location;
      _latitude = $v.latitude;
      _longitude = $v.longitude;
      _date = $v.date;
      _organizer = $v.organizer;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CreateEventDto other) {
    _$v = other as _$CreateEventDto;
  }

  @override
  void update(void Function(CreateEventDtoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CreateEventDto build() => _build();

  _$CreateEventDto _build() {
    final _$result = _$v ??
        _$CreateEventDto._(
          title: BuiltValueNullFieldError.checkNotNull(
              title, r'CreateEventDto', 'title'),
          location: BuiltValueNullFieldError.checkNotNull(
              location, r'CreateEventDto', 'location'),
          latitude: latitude,
          longitude: longitude,
          date: BuiltValueNullFieldError.checkNotNull(
              date, r'CreateEventDto', 'date'),
          organizer: BuiltValueNullFieldError.checkNotNull(
              organizer, r'CreateEventDto', 'organizer'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
