// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_hosting_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CreateHostingDto extends CreateHostingDto {
  @override
  final String host;
  @override
  final String event;
  @override
  final num seats;

  factory _$CreateHostingDto(
          [void Function(CreateHostingDtoBuilder)? updates]) =>
      (CreateHostingDtoBuilder()..update(updates))._build();

  _$CreateHostingDto._(
      {required this.host, required this.event, required this.seats})
      : super._();
  @override
  CreateHostingDto rebuild(void Function(CreateHostingDtoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CreateHostingDtoBuilder toBuilder() =>
      CreateHostingDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreateHostingDto &&
        host == other.host &&
        event == other.event &&
        seats == other.seats;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, host.hashCode);
    _$hash = $jc(_$hash, event.hashCode);
    _$hash = $jc(_$hash, seats.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CreateHostingDto')
          ..add('host', host)
          ..add('event', event)
          ..add('seats', seats))
        .toString();
  }
}

class CreateHostingDtoBuilder
    implements Builder<CreateHostingDto, CreateHostingDtoBuilder> {
  _$CreateHostingDto? _$v;

  String? _host;
  String? get host => _$this._host;
  set host(String? host) => _$this._host = host;

  String? _event;
  String? get event => _$this._event;
  set event(String? event) => _$this._event = event;

  num? _seats;
  num? get seats => _$this._seats;
  set seats(num? seats) => _$this._seats = seats;

  CreateHostingDtoBuilder() {
    CreateHostingDto._defaults(this);
  }

  CreateHostingDtoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _host = $v.host;
      _event = $v.event;
      _seats = $v.seats;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CreateHostingDto other) {
    _$v = other as _$CreateHostingDto;
  }

  @override
  void update(void Function(CreateHostingDtoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CreateHostingDto build() => _build();

  _$CreateHostingDto _build() {
    final _$result = _$v ??
        _$CreateHostingDto._(
          host: BuiltValueNullFieldError.checkNotNull(
              host, r'CreateHostingDto', 'host'),
          event: BuiltValueNullFieldError.checkNotNull(
              event, r'CreateHostingDto', 'event'),
          seats: BuiltValueNullFieldError.checkNotNull(
              seats, r'CreateHostingDto', 'seats'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
