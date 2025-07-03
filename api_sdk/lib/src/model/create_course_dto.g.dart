// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_course_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CreateCourseDto extends CreateCourseDto {
  @override
  final String driver;
  @override
  final String event;
  @override
  final num seats;

  factory _$CreateCourseDto([void Function(CreateCourseDtoBuilder)? updates]) =>
      (CreateCourseDtoBuilder()..update(updates))._build();

  _$CreateCourseDto._(
      {required this.driver, required this.event, required this.seats})
      : super._();
  @override
  CreateCourseDto rebuild(void Function(CreateCourseDtoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CreateCourseDtoBuilder toBuilder() => CreateCourseDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreateCourseDto &&
        driver == other.driver &&
        event == other.event &&
        seats == other.seats;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, driver.hashCode);
    _$hash = $jc(_$hash, event.hashCode);
    _$hash = $jc(_$hash, seats.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CreateCourseDto')
          ..add('driver', driver)
          ..add('event', event)
          ..add('seats', seats))
        .toString();
  }
}

class CreateCourseDtoBuilder
    implements Builder<CreateCourseDto, CreateCourseDtoBuilder> {
  _$CreateCourseDto? _$v;

  String? _driver;
  String? get driver => _$this._driver;
  set driver(String? driver) => _$this._driver = driver;

  String? _event;
  String? get event => _$this._event;
  set event(String? event) => _$this._event = event;

  num? _seats;
  num? get seats => _$this._seats;
  set seats(num? seats) => _$this._seats = seats;

  CreateCourseDtoBuilder() {
    CreateCourseDto._defaults(this);
  }

  CreateCourseDtoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _driver = $v.driver;
      _event = $v.event;
      _seats = $v.seats;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CreateCourseDto other) {
    _$v = other as _$CreateCourseDto;
  }

  @override
  void update(void Function(CreateCourseDtoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CreateCourseDto build() => _build();

  _$CreateCourseDto _build() {
    final _$result = _$v ??
        _$CreateCourseDto._(
          driver: BuiltValueNullFieldError.checkNotNull(
              driver, r'CreateCourseDto', 'driver'),
          event: BuiltValueNullFieldError.checkNotNull(
              event, r'CreateCourseDto', 'event'),
          seats: BuiltValueNullFieldError.checkNotNull(
              seats, r'CreateCourseDto', 'seats'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
