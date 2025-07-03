// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hosting.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Hosting extends Hosting {
  @override
  final String guid;
  @override
  final num seats;
  @override
  final User host;
  @override
  final Event event;
  @override
  final BuiltList<HostingRequest> requests;
  @override
  final BuiltList<User> acceptedGuests;

  factory _$Hosting([void Function(HostingBuilder)? updates]) =>
      (HostingBuilder()..update(updates))._build();

  _$Hosting._(
      {required this.guid,
      required this.seats,
      required this.host,
      required this.event,
      required this.requests,
      required this.acceptedGuests})
      : super._();
  @override
  Hosting rebuild(void Function(HostingBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  HostingBuilder toBuilder() => HostingBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Hosting &&
        guid == other.guid &&
        seats == other.seats &&
        host == other.host &&
        event == other.event &&
        requests == other.requests &&
        acceptedGuests == other.acceptedGuests;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, guid.hashCode);
    _$hash = $jc(_$hash, seats.hashCode);
    _$hash = $jc(_$hash, host.hashCode);
    _$hash = $jc(_$hash, event.hashCode);
    _$hash = $jc(_$hash, requests.hashCode);
    _$hash = $jc(_$hash, acceptedGuests.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Hosting')
          ..add('guid', guid)
          ..add('seats', seats)
          ..add('host', host)
          ..add('event', event)
          ..add('requests', requests)
          ..add('acceptedGuests', acceptedGuests))
        .toString();
  }
}

class HostingBuilder implements Builder<Hosting, HostingBuilder> {
  _$Hosting? _$v;

  String? _guid;
  String? get guid => _$this._guid;
  set guid(String? guid) => _$this._guid = guid;

  num? _seats;
  num? get seats => _$this._seats;
  set seats(num? seats) => _$this._seats = seats;

  UserBuilder? _host;
  UserBuilder get host => _$this._host ??= UserBuilder();
  set host(UserBuilder? host) => _$this._host = host;

  EventBuilder? _event;
  EventBuilder get event => _$this._event ??= EventBuilder();
  set event(EventBuilder? event) => _$this._event = event;

  ListBuilder<HostingRequest>? _requests;
  ListBuilder<HostingRequest> get requests =>
      _$this._requests ??= ListBuilder<HostingRequest>();
  set requests(ListBuilder<HostingRequest>? requests) =>
      _$this._requests = requests;

  ListBuilder<User>? _acceptedGuests;
  ListBuilder<User> get acceptedGuests =>
      _$this._acceptedGuests ??= ListBuilder<User>();
  set acceptedGuests(ListBuilder<User>? acceptedGuests) =>
      _$this._acceptedGuests = acceptedGuests;

  HostingBuilder() {
    Hosting._defaults(this);
  }

  HostingBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _guid = $v.guid;
      _seats = $v.seats;
      _host = $v.host.toBuilder();
      _event = $v.event.toBuilder();
      _requests = $v.requests.toBuilder();
      _acceptedGuests = $v.acceptedGuests.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Hosting other) {
    _$v = other as _$Hosting;
  }

  @override
  void update(void Function(HostingBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Hosting build() => _build();

  _$Hosting _build() {
    _$Hosting _$result;
    try {
      _$result = _$v ??
          _$Hosting._(
            guid:
                BuiltValueNullFieldError.checkNotNull(guid, r'Hosting', 'guid'),
            seats: BuiltValueNullFieldError.checkNotNull(
                seats, r'Hosting', 'seats'),
            host: host.build(),
            event: event.build(),
            requests: requests.build(),
            acceptedGuests: acceptedGuests.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'host';
        host.build();
        _$failedField = 'event';
        event.build();
        _$failedField = 'requests';
        requests.build();
        _$failedField = 'acceptedGuests';
        acceptedGuests.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'Hosting', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
