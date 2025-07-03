// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'shopping.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Shopping extends Shopping {
  @override
  final String guid;
  @override
  final String image;
  @override
  final num quantity;
  @override
  final String name;
  @override
  final Event event;

  factory _$Shopping([void Function(ShoppingBuilder)? updates]) =>
      (ShoppingBuilder()..update(updates))._build();

  _$Shopping._(
      {required this.guid,
      required this.image,
      required this.quantity,
      required this.name,
      required this.event})
      : super._();
  @override
  Shopping rebuild(void Function(ShoppingBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ShoppingBuilder toBuilder() => ShoppingBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Shopping &&
        guid == other.guid &&
        image == other.image &&
        quantity == other.quantity &&
        name == other.name &&
        event == other.event;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, guid.hashCode);
    _$hash = $jc(_$hash, image.hashCode);
    _$hash = $jc(_$hash, quantity.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, event.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Shopping')
          ..add('guid', guid)
          ..add('image', image)
          ..add('quantity', quantity)
          ..add('name', name)
          ..add('event', event))
        .toString();
  }
}

class ShoppingBuilder implements Builder<Shopping, ShoppingBuilder> {
  _$Shopping? _$v;

  String? _guid;
  String? get guid => _$this._guid;
  set guid(String? guid) => _$this._guid = guid;

  String? _image;
  String? get image => _$this._image;
  set image(String? image) => _$this._image = image;

  num? _quantity;
  num? get quantity => _$this._quantity;
  set quantity(num? quantity) => _$this._quantity = quantity;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  EventBuilder? _event;
  EventBuilder get event => _$this._event ??= EventBuilder();
  set event(EventBuilder? event) => _$this._event = event;

  ShoppingBuilder() {
    Shopping._defaults(this);
  }

  ShoppingBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _guid = $v.guid;
      _image = $v.image;
      _quantity = $v.quantity;
      _name = $v.name;
      _event = $v.event.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Shopping other) {
    _$v = other as _$Shopping;
  }

  @override
  void update(void Function(ShoppingBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Shopping build() => _build();

  _$Shopping _build() {
    _$Shopping _$result;
    try {
      _$result = _$v ??
          _$Shopping._(
            guid: BuiltValueNullFieldError.checkNotNull(
                guid, r'Shopping', 'guid'),
            image: BuiltValueNullFieldError.checkNotNull(
                image, r'Shopping', 'image'),
            quantity: BuiltValueNullFieldError.checkNotNull(
                quantity, r'Shopping', 'quantity'),
            name: BuiltValueNullFieldError.checkNotNull(
                name, r'Shopping', 'name'),
            event: event.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'event';
        event.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'Shopping', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
