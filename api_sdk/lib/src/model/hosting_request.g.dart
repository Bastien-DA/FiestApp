// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hosting_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const HostingRequestStatusEnum _$hostingRequestStatusEnum_pending =
    const HostingRequestStatusEnum._('pending');
const HostingRequestStatusEnum _$hostingRequestStatusEnum_accepted =
    const HostingRequestStatusEnum._('accepted');
const HostingRequestStatusEnum _$hostingRequestStatusEnum_rejected =
    const HostingRequestStatusEnum._('rejected');
const HostingRequestStatusEnum
    _$hostingRequestStatusEnum_unknownDefaultOpenApi =
    const HostingRequestStatusEnum._('unknownDefaultOpenApi');

HostingRequestStatusEnum _$hostingRequestStatusEnumValueOf(String name) {
  switch (name) {
    case 'pending':
      return _$hostingRequestStatusEnum_pending;
    case 'accepted':
      return _$hostingRequestStatusEnum_accepted;
    case 'rejected':
      return _$hostingRequestStatusEnum_rejected;
    case 'unknownDefaultOpenApi':
      return _$hostingRequestStatusEnum_unknownDefaultOpenApi;
    default:
      return _$hostingRequestStatusEnum_unknownDefaultOpenApi;
  }
}

final BuiltSet<HostingRequestStatusEnum> _$hostingRequestStatusEnumValues =
    BuiltSet<HostingRequestStatusEnum>(const <HostingRequestStatusEnum>[
  _$hostingRequestStatusEnum_pending,
  _$hostingRequestStatusEnum_accepted,
  _$hostingRequestStatusEnum_rejected,
  _$hostingRequestStatusEnum_unknownDefaultOpenApi,
]);

Serializer<HostingRequestStatusEnum> _$hostingRequestStatusEnumSerializer =
    _$HostingRequestStatusEnumSerializer();

class _$HostingRequestStatusEnumSerializer
    implements PrimitiveSerializer<HostingRequestStatusEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'pending': 'pending',
    'accepted': 'accepted',
    'rejected': 'rejected',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'pending': 'pending',
    'accepted': 'accepted',
    'rejected': 'rejected',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[HostingRequestStatusEnum];
  @override
  final String wireName = 'HostingRequestStatusEnum';

  @override
  Object serialize(Serializers serializers, HostingRequestStatusEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  HostingRequestStatusEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      HostingRequestStatusEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$HostingRequest extends HostingRequest {
  @override
  final String guid;
  @override
  final User user;
  @override
  final Hosting hosting;
  @override
  final HostingRequestStatusEnum status;

  factory _$HostingRequest([void Function(HostingRequestBuilder)? updates]) =>
      (HostingRequestBuilder()..update(updates))._build();

  _$HostingRequest._(
      {required this.guid,
      required this.user,
      required this.hosting,
      required this.status})
      : super._();
  @override
  HostingRequest rebuild(void Function(HostingRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  HostingRequestBuilder toBuilder() => HostingRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is HostingRequest &&
        guid == other.guid &&
        user == other.user &&
        hosting == other.hosting &&
        status == other.status;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, guid.hashCode);
    _$hash = $jc(_$hash, user.hashCode);
    _$hash = $jc(_$hash, hosting.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'HostingRequest')
          ..add('guid', guid)
          ..add('user', user)
          ..add('hosting', hosting)
          ..add('status', status))
        .toString();
  }
}

class HostingRequestBuilder
    implements Builder<HostingRequest, HostingRequestBuilder> {
  _$HostingRequest? _$v;

  String? _guid;
  String? get guid => _$this._guid;
  set guid(String? guid) => _$this._guid = guid;

  UserBuilder? _user;
  UserBuilder get user => _$this._user ??= UserBuilder();
  set user(UserBuilder? user) => _$this._user = user;

  HostingBuilder? _hosting;
  HostingBuilder get hosting => _$this._hosting ??= HostingBuilder();
  set hosting(HostingBuilder? hosting) => _$this._hosting = hosting;

  HostingRequestStatusEnum? _status;
  HostingRequestStatusEnum? get status => _$this._status;
  set status(HostingRequestStatusEnum? status) => _$this._status = status;

  HostingRequestBuilder() {
    HostingRequest._defaults(this);
  }

  HostingRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _guid = $v.guid;
      _user = $v.user.toBuilder();
      _hosting = $v.hosting.toBuilder();
      _status = $v.status;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(HostingRequest other) {
    _$v = other as _$HostingRequest;
  }

  @override
  void update(void Function(HostingRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  HostingRequest build() => _build();

  _$HostingRequest _build() {
    _$HostingRequest _$result;
    try {
      _$result = _$v ??
          _$HostingRequest._(
            guid: BuiltValueNullFieldError.checkNotNull(
                guid, r'HostingRequest', 'guid'),
            user: user.build(),
            hosting: hosting.build(),
            status: BuiltValueNullFieldError.checkNotNull(
                status, r'HostingRequest', 'status'),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'user';
        user.build();
        _$failedField = 'hosting';
        hosting.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'HostingRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
