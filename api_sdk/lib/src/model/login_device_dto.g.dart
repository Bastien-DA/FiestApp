// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_device_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$LoginDeviceDto extends LoginDeviceDto {
  @override
  final String deviceId;

  factory _$LoginDeviceDto([void Function(LoginDeviceDtoBuilder)? updates]) =>
      (LoginDeviceDtoBuilder()..update(updates))._build();

  _$LoginDeviceDto._({required this.deviceId}) : super._();
  @override
  LoginDeviceDto rebuild(void Function(LoginDeviceDtoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  LoginDeviceDtoBuilder toBuilder() => LoginDeviceDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is LoginDeviceDto && deviceId == other.deviceId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, deviceId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'LoginDeviceDto')
          ..add('deviceId', deviceId))
        .toString();
  }
}

class LoginDeviceDtoBuilder
    implements Builder<LoginDeviceDto, LoginDeviceDtoBuilder> {
  _$LoginDeviceDto? _$v;

  String? _deviceId;
  String? get deviceId => _$this._deviceId;
  set deviceId(String? deviceId) => _$this._deviceId = deviceId;

  LoginDeviceDtoBuilder() {
    LoginDeviceDto._defaults(this);
  }

  LoginDeviceDtoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _deviceId = $v.deviceId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(LoginDeviceDto other) {
    _$v = other as _$LoginDeviceDto;
  }

  @override
  void update(void Function(LoginDeviceDtoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  LoginDeviceDto build() => _build();

  _$LoginDeviceDto _build() {
    final _$result = _$v ??
        _$LoginDeviceDto._(
          deviceId: BuiltValueNullFieldError.checkNotNull(
              deviceId, r'LoginDeviceDto', 'deviceId'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
