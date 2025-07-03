// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_hosting_request_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CreateHostingRequestDto extends CreateHostingRequestDto {
  @override
  final String user;
  @override
  final String hosting;

  factory _$CreateHostingRequestDto(
          [void Function(CreateHostingRequestDtoBuilder)? updates]) =>
      (CreateHostingRequestDtoBuilder()..update(updates))._build();

  _$CreateHostingRequestDto._({required this.user, required this.hosting})
      : super._();
  @override
  CreateHostingRequestDto rebuild(
          void Function(CreateHostingRequestDtoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CreateHostingRequestDtoBuilder toBuilder() =>
      CreateHostingRequestDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreateHostingRequestDto &&
        user == other.user &&
        hosting == other.hosting;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, user.hashCode);
    _$hash = $jc(_$hash, hosting.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CreateHostingRequestDto')
          ..add('user', user)
          ..add('hosting', hosting))
        .toString();
  }
}

class CreateHostingRequestDtoBuilder
    implements
        Builder<CreateHostingRequestDto, CreateHostingRequestDtoBuilder> {
  _$CreateHostingRequestDto? _$v;

  String? _user;
  String? get user => _$this._user;
  set user(String? user) => _$this._user = user;

  String? _hosting;
  String? get hosting => _$this._hosting;
  set hosting(String? hosting) => _$this._hosting = hosting;

  CreateHostingRequestDtoBuilder() {
    CreateHostingRequestDto._defaults(this);
  }

  CreateHostingRequestDtoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _user = $v.user;
      _hosting = $v.hosting;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CreateHostingRequestDto other) {
    _$v = other as _$CreateHostingRequestDto;
  }

  @override
  void update(void Function(CreateHostingRequestDtoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CreateHostingRequestDto build() => _build();

  _$CreateHostingRequestDto _build() {
    final _$result = _$v ??
        _$CreateHostingRequestDto._(
          user: BuiltValueNullFieldError.checkNotNull(
              user, r'CreateHostingRequestDto', 'user'),
          hosting: BuiltValueNullFieldError.checkNotNull(
              hosting, r'CreateHostingRequestDto', 'hosting'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
