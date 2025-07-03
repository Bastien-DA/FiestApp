// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_shopping_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CreateShoppingDto extends CreateShoppingDto {
  @override
  final String image;
  @override
  final num quantity;
  @override
  final String name;
  @override
  final String event;

  factory _$CreateShoppingDto(
          [void Function(CreateShoppingDtoBuilder)? updates]) =>
      (CreateShoppingDtoBuilder()..update(updates))._build();

  _$CreateShoppingDto._(
      {required this.image,
      required this.quantity,
      required this.name,
      required this.event})
      : super._();
  @override
  CreateShoppingDto rebuild(void Function(CreateShoppingDtoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CreateShoppingDtoBuilder toBuilder() =>
      CreateShoppingDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreateShoppingDto &&
        image == other.image &&
        quantity == other.quantity &&
        name == other.name &&
        event == other.event;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, image.hashCode);
    _$hash = $jc(_$hash, quantity.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, event.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CreateShoppingDto')
          ..add('image', image)
          ..add('quantity', quantity)
          ..add('name', name)
          ..add('event', event))
        .toString();
  }
}

class CreateShoppingDtoBuilder
    implements Builder<CreateShoppingDto, CreateShoppingDtoBuilder> {
  _$CreateShoppingDto? _$v;

  String? _image;
  String? get image => _$this._image;
  set image(String? image) => _$this._image = image;

  num? _quantity;
  num? get quantity => _$this._quantity;
  set quantity(num? quantity) => _$this._quantity = quantity;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _event;
  String? get event => _$this._event;
  set event(String? event) => _$this._event = event;

  CreateShoppingDtoBuilder() {
    CreateShoppingDto._defaults(this);
  }

  CreateShoppingDtoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _image = $v.image;
      _quantity = $v.quantity;
      _name = $v.name;
      _event = $v.event;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CreateShoppingDto other) {
    _$v = other as _$CreateShoppingDto;
  }

  @override
  void update(void Function(CreateShoppingDtoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CreateShoppingDto build() => _build();

  _$CreateShoppingDto _build() {
    final _$result = _$v ??
        _$CreateShoppingDto._(
          image: BuiltValueNullFieldError.checkNotNull(
              image, r'CreateShoppingDto', 'image'),
          quantity: BuiltValueNullFieldError.checkNotNull(
              quantity, r'CreateShoppingDto', 'quantity'),
          name: BuiltValueNullFieldError.checkNotNull(
              name, r'CreateShoppingDto', 'name'),
          event: BuiltValueNullFieldError.checkNotNull(
              event, r'CreateShoppingDto', 'event'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
