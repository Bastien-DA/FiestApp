// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_request_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CreateRequestDto extends CreateRequestDto {
  @override
  final String user;
  @override
  final String course;

  factory _$CreateRequestDto(
          [void Function(CreateRequestDtoBuilder)? updates]) =>
      (CreateRequestDtoBuilder()..update(updates))._build();

  _$CreateRequestDto._({required this.user, required this.course}) : super._();
  @override
  CreateRequestDto rebuild(void Function(CreateRequestDtoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CreateRequestDtoBuilder toBuilder() =>
      CreateRequestDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreateRequestDto &&
        user == other.user &&
        course == other.course;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, user.hashCode);
    _$hash = $jc(_$hash, course.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CreateRequestDto')
          ..add('user', user)
          ..add('course', course))
        .toString();
  }
}

class CreateRequestDtoBuilder
    implements Builder<CreateRequestDto, CreateRequestDtoBuilder> {
  _$CreateRequestDto? _$v;

  String? _user;
  String? get user => _$this._user;
  set user(String? user) => _$this._user = user;

  String? _course;
  String? get course => _$this._course;
  set course(String? course) => _$this._course = course;

  CreateRequestDtoBuilder() {
    CreateRequestDto._defaults(this);
  }

  CreateRequestDtoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _user = $v.user;
      _course = $v.course;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CreateRequestDto other) {
    _$v = other as _$CreateRequestDto;
  }

  @override
  void update(void Function(CreateRequestDtoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CreateRequestDto build() => _build();

  _$CreateRequestDto _build() {
    final _$result = _$v ??
        _$CreateRequestDto._(
          user: BuiltValueNullFieldError.checkNotNull(
              user, r'CreateRequestDto', 'user'),
          course: BuiltValueNullFieldError.checkNotNull(
              course, r'CreateRequestDto', 'course'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
