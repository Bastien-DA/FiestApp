// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_expense_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CreateExpenseDto extends CreateExpenseDto {
  @override
  final String label;
  @override
  final num amountInCent;
  @override
  final String user;
  @override
  final String event;

  factory _$CreateExpenseDto(
          [void Function(CreateExpenseDtoBuilder)? updates]) =>
      (CreateExpenseDtoBuilder()..update(updates))._build();

  _$CreateExpenseDto._(
      {required this.label,
      required this.amountInCent,
      required this.user,
      required this.event})
      : super._();
  @override
  CreateExpenseDto rebuild(void Function(CreateExpenseDtoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CreateExpenseDtoBuilder toBuilder() =>
      CreateExpenseDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreateExpenseDto &&
        label == other.label &&
        amountInCent == other.amountInCent &&
        user == other.user &&
        event == other.event;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, label.hashCode);
    _$hash = $jc(_$hash, amountInCent.hashCode);
    _$hash = $jc(_$hash, user.hashCode);
    _$hash = $jc(_$hash, event.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CreateExpenseDto')
          ..add('label', label)
          ..add('amountInCent', amountInCent)
          ..add('user', user)
          ..add('event', event))
        .toString();
  }
}

class CreateExpenseDtoBuilder
    implements Builder<CreateExpenseDto, CreateExpenseDtoBuilder> {
  _$CreateExpenseDto? _$v;

  String? _label;
  String? get label => _$this._label;
  set label(String? label) => _$this._label = label;

  num? _amountInCent;
  num? get amountInCent => _$this._amountInCent;
  set amountInCent(num? amountInCent) => _$this._amountInCent = amountInCent;

  String? _user;
  String? get user => _$this._user;
  set user(String? user) => _$this._user = user;

  String? _event;
  String? get event => _$this._event;
  set event(String? event) => _$this._event = event;

  CreateExpenseDtoBuilder() {
    CreateExpenseDto._defaults(this);
  }

  CreateExpenseDtoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _label = $v.label;
      _amountInCent = $v.amountInCent;
      _user = $v.user;
      _event = $v.event;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CreateExpenseDto other) {
    _$v = other as _$CreateExpenseDto;
  }

  @override
  void update(void Function(CreateExpenseDtoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CreateExpenseDto build() => _build();

  _$CreateExpenseDto _build() {
    final _$result = _$v ??
        _$CreateExpenseDto._(
          label: BuiltValueNullFieldError.checkNotNull(
              label, r'CreateExpenseDto', 'label'),
          amountInCent: BuiltValueNullFieldError.checkNotNull(
              amountInCent, r'CreateExpenseDto', 'amountInCent'),
          user: BuiltValueNullFieldError.checkNotNull(
              user, r'CreateExpenseDto', 'user'),
          event: BuiltValueNullFieldError.checkNotNull(
              event, r'CreateExpenseDto', 'event'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
