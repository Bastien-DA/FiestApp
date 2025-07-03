// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_user_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const CreateUserDtoGenderEnum _$createUserDtoGenderEnum_male =
    const CreateUserDtoGenderEnum._('male');
const CreateUserDtoGenderEnum _$createUserDtoGenderEnum_female =
    const CreateUserDtoGenderEnum._('female');
const CreateUserDtoGenderEnum _$createUserDtoGenderEnum_unknownDefaultOpenApi =
    const CreateUserDtoGenderEnum._('unknownDefaultOpenApi');

CreateUserDtoGenderEnum _$createUserDtoGenderEnumValueOf(String name) {
  switch (name) {
    case 'male':
      return _$createUserDtoGenderEnum_male;
    case 'female':
      return _$createUserDtoGenderEnum_female;
    case 'unknownDefaultOpenApi':
      return _$createUserDtoGenderEnum_unknownDefaultOpenApi;
    default:
      return _$createUserDtoGenderEnum_unknownDefaultOpenApi;
  }
}

final BuiltSet<CreateUserDtoGenderEnum> _$createUserDtoGenderEnumValues =
    BuiltSet<CreateUserDtoGenderEnum>(const <CreateUserDtoGenderEnum>[
  _$createUserDtoGenderEnum_male,
  _$createUserDtoGenderEnum_female,
  _$createUserDtoGenderEnum_unknownDefaultOpenApi,
]);

const CreateUserDtoAlcoholConsumptionEnum
    _$createUserDtoAlcoholConsumptionEnum_occasional =
    const CreateUserDtoAlcoholConsumptionEnum._('occasional');
const CreateUserDtoAlcoholConsumptionEnum
    _$createUserDtoAlcoholConsumptionEnum_regular =
    const CreateUserDtoAlcoholConsumptionEnum._('regular');
const CreateUserDtoAlcoholConsumptionEnum
    _$createUserDtoAlcoholConsumptionEnum_veteran =
    const CreateUserDtoAlcoholConsumptionEnum._('veteran');
const CreateUserDtoAlcoholConsumptionEnum
    _$createUserDtoAlcoholConsumptionEnum_unknownDefaultOpenApi =
    const CreateUserDtoAlcoholConsumptionEnum._('unknownDefaultOpenApi');

CreateUserDtoAlcoholConsumptionEnum
    _$createUserDtoAlcoholConsumptionEnumValueOf(String name) {
  switch (name) {
    case 'occasional':
      return _$createUserDtoAlcoholConsumptionEnum_occasional;
    case 'regular':
      return _$createUserDtoAlcoholConsumptionEnum_regular;
    case 'veteran':
      return _$createUserDtoAlcoholConsumptionEnum_veteran;
    case 'unknownDefaultOpenApi':
      return _$createUserDtoAlcoholConsumptionEnum_unknownDefaultOpenApi;
    default:
      return _$createUserDtoAlcoholConsumptionEnum_unknownDefaultOpenApi;
  }
}

final BuiltSet<CreateUserDtoAlcoholConsumptionEnum>
    _$createUserDtoAlcoholConsumptionEnumValues = BuiltSet<
        CreateUserDtoAlcoholConsumptionEnum>(const <CreateUserDtoAlcoholConsumptionEnum>[
  _$createUserDtoAlcoholConsumptionEnum_occasional,
  _$createUserDtoAlcoholConsumptionEnum_regular,
  _$createUserDtoAlcoholConsumptionEnum_veteran,
  _$createUserDtoAlcoholConsumptionEnum_unknownDefaultOpenApi,
]);

Serializer<CreateUserDtoGenderEnum> _$createUserDtoGenderEnumSerializer =
    _$CreateUserDtoGenderEnumSerializer();
Serializer<CreateUserDtoAlcoholConsumptionEnum>
    _$createUserDtoAlcoholConsumptionEnumSerializer =
    _$CreateUserDtoAlcoholConsumptionEnumSerializer();

class _$CreateUserDtoGenderEnumSerializer
    implements PrimitiveSerializer<CreateUserDtoGenderEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'male': 'Male',
    'female': 'Female',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'Male': 'male',
    'Female': 'female',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[CreateUserDtoGenderEnum];
  @override
  final String wireName = 'CreateUserDtoGenderEnum';

  @override
  Object serialize(Serializers serializers, CreateUserDtoGenderEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  CreateUserDtoGenderEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      CreateUserDtoGenderEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$CreateUserDtoAlcoholConsumptionEnumSerializer
    implements PrimitiveSerializer<CreateUserDtoAlcoholConsumptionEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'occasional': 'Occasional',
    'regular': 'Regular',
    'veteran': 'Veteran',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'Occasional': 'occasional',
    'Regular': 'regular',
    'Veteran': 'veteran',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[
    CreateUserDtoAlcoholConsumptionEnum
  ];
  @override
  final String wireName = 'CreateUserDtoAlcoholConsumptionEnum';

  @override
  Object serialize(
          Serializers serializers, CreateUserDtoAlcoholConsumptionEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  CreateUserDtoAlcoholConsumptionEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      CreateUserDtoAlcoholConsumptionEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$CreateUserDto extends CreateUserDto {
  @override
  final String username;
  @override
  final CreateUserDtoGenderEnum gender;
  @override
  final num age;
  @override
  final num height;
  @override
  final num weight;
  @override
  final CreateUserDtoAlcoholConsumptionEnum alcoholConsumption;
  @override
  final Uint8List? file;

  factory _$CreateUserDto([void Function(CreateUserDtoBuilder)? updates]) =>
      (CreateUserDtoBuilder()..update(updates))._build();

  _$CreateUserDto._(
      {required this.username,
      required this.gender,
      required this.age,
      required this.height,
      required this.weight,
      required this.alcoholConsumption,
      this.file})
      : super._();
  @override
  CreateUserDto rebuild(void Function(CreateUserDtoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CreateUserDtoBuilder toBuilder() => CreateUserDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreateUserDto &&
        username == other.username &&
        gender == other.gender &&
        age == other.age &&
        height == other.height &&
        weight == other.weight &&
        alcoholConsumption == other.alcoholConsumption &&
        file == other.file;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, username.hashCode);
    _$hash = $jc(_$hash, gender.hashCode);
    _$hash = $jc(_$hash, age.hashCode);
    _$hash = $jc(_$hash, height.hashCode);
    _$hash = $jc(_$hash, weight.hashCode);
    _$hash = $jc(_$hash, alcoholConsumption.hashCode);
    _$hash = $jc(_$hash, file.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CreateUserDto')
          ..add('username', username)
          ..add('gender', gender)
          ..add('age', age)
          ..add('height', height)
          ..add('weight', weight)
          ..add('alcoholConsumption', alcoholConsumption)
          ..add('file', file))
        .toString();
  }
}

class CreateUserDtoBuilder
    implements Builder<CreateUserDto, CreateUserDtoBuilder> {
  _$CreateUserDto? _$v;

  String? _username;
  String? get username => _$this._username;
  set username(String? username) => _$this._username = username;

  CreateUserDtoGenderEnum? _gender;
  CreateUserDtoGenderEnum? get gender => _$this._gender;
  set gender(CreateUserDtoGenderEnum? gender) => _$this._gender = gender;

  num? _age;
  num? get age => _$this._age;
  set age(num? age) => _$this._age = age;

  num? _height;
  num? get height => _$this._height;
  set height(num? height) => _$this._height = height;

  num? _weight;
  num? get weight => _$this._weight;
  set weight(num? weight) => _$this._weight = weight;

  CreateUserDtoAlcoholConsumptionEnum? _alcoholConsumption;
  CreateUserDtoAlcoholConsumptionEnum? get alcoholConsumption =>
      _$this._alcoholConsumption;
  set alcoholConsumption(
          CreateUserDtoAlcoholConsumptionEnum? alcoholConsumption) =>
      _$this._alcoholConsumption = alcoholConsumption;

  Uint8List? _file;
  Uint8List? get file => _$this._file;
  set file(Uint8List? file) => _$this._file = file;

  CreateUserDtoBuilder() {
    CreateUserDto._defaults(this);
  }

  CreateUserDtoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _username = $v.username;
      _gender = $v.gender;
      _age = $v.age;
      _height = $v.height;
      _weight = $v.weight;
      _alcoholConsumption = $v.alcoholConsumption;
      _file = $v.file;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CreateUserDto other) {
    _$v = other as _$CreateUserDto;
  }

  @override
  void update(void Function(CreateUserDtoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CreateUserDto build() => _build();

  _$CreateUserDto _build() {
    final _$result = _$v ??
        _$CreateUserDto._(
          username: BuiltValueNullFieldError.checkNotNull(
              username, r'CreateUserDto', 'username'),
          gender: BuiltValueNullFieldError.checkNotNull(
              gender, r'CreateUserDto', 'gender'),
          age: BuiltValueNullFieldError.checkNotNull(
              age, r'CreateUserDto', 'age'),
          height: BuiltValueNullFieldError.checkNotNull(
              height, r'CreateUserDto', 'height'),
          weight: BuiltValueNullFieldError.checkNotNull(
              weight, r'CreateUserDto', 'weight'),
          alcoholConsumption: BuiltValueNullFieldError.checkNotNull(
              alcoholConsumption, r'CreateUserDto', 'alcoholConsumption'),
          file: file,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
