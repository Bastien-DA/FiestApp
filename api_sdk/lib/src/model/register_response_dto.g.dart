// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'register_response_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$RegisterResponseDto extends RegisterResponseDto {
  @override
  final String accessToken;
  @override
  final User user;

  factory _$RegisterResponseDto(
          [void Function(RegisterResponseDtoBuilder)? updates]) =>
      (RegisterResponseDtoBuilder()..update(updates))._build();

  _$RegisterResponseDto._({required this.accessToken, required this.user})
      : super._();
  @override
  RegisterResponseDto rebuild(
          void Function(RegisterResponseDtoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RegisterResponseDtoBuilder toBuilder() =>
      RegisterResponseDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RegisterResponseDto &&
        accessToken == other.accessToken &&
        user == other.user;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, accessToken.hashCode);
    _$hash = $jc(_$hash, user.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'RegisterResponseDto')
          ..add('accessToken', accessToken)
          ..add('user', user))
        .toString();
  }
}

class RegisterResponseDtoBuilder
    implements Builder<RegisterResponseDto, RegisterResponseDtoBuilder> {
  _$RegisterResponseDto? _$v;

  String? _accessToken;
  String? get accessToken => _$this._accessToken;
  set accessToken(String? accessToken) => _$this._accessToken = accessToken;

  UserBuilder? _user;
  UserBuilder get user => _$this._user ??= UserBuilder();
  set user(UserBuilder? user) => _$this._user = user;

  RegisterResponseDtoBuilder() {
    RegisterResponseDto._defaults(this);
  }

  RegisterResponseDtoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _accessToken = $v.accessToken;
      _user = $v.user.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RegisterResponseDto other) {
    _$v = other as _$RegisterResponseDto;
  }

  @override
  void update(void Function(RegisterResponseDtoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  RegisterResponseDto build() => _build();

  _$RegisterResponseDto _build() {
    _$RegisterResponseDto _$result;
    try {
      _$result = _$v ??
          _$RegisterResponseDto._(
            accessToken: BuiltValueNullFieldError.checkNotNull(
                accessToken, r'RegisterResponseDto', 'accessToken'),
            user: user.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'user';
        user.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'RegisterResponseDto', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
