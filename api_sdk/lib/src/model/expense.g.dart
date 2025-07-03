// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'expense.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Expense extends Expense {
  @override
  final String guid;
  @override
  final String label;
  @override
  final num amountInCent;
  @override
  final User user;
  @override
  final Event event;

  factory _$Expense([void Function(ExpenseBuilder)? updates]) =>
      (ExpenseBuilder()..update(updates))._build();

  _$Expense._(
      {required this.guid,
      required this.label,
      required this.amountInCent,
      required this.user,
      required this.event})
      : super._();
  @override
  Expense rebuild(void Function(ExpenseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ExpenseBuilder toBuilder() => ExpenseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Expense &&
        guid == other.guid &&
        label == other.label &&
        amountInCent == other.amountInCent &&
        user == other.user &&
        event == other.event;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, guid.hashCode);
    _$hash = $jc(_$hash, label.hashCode);
    _$hash = $jc(_$hash, amountInCent.hashCode);
    _$hash = $jc(_$hash, user.hashCode);
    _$hash = $jc(_$hash, event.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Expense')
          ..add('guid', guid)
          ..add('label', label)
          ..add('amountInCent', amountInCent)
          ..add('user', user)
          ..add('event', event))
        .toString();
  }
}

class ExpenseBuilder implements Builder<Expense, ExpenseBuilder> {
  _$Expense? _$v;

  String? _guid;
  String? get guid => _$this._guid;
  set guid(String? guid) => _$this._guid = guid;

  String? _label;
  String? get label => _$this._label;
  set label(String? label) => _$this._label = label;

  num? _amountInCent;
  num? get amountInCent => _$this._amountInCent;
  set amountInCent(num? amountInCent) => _$this._amountInCent = amountInCent;

  UserBuilder? _user;
  UserBuilder get user => _$this._user ??= UserBuilder();
  set user(UserBuilder? user) => _$this._user = user;

  EventBuilder? _event;
  EventBuilder get event => _$this._event ??= EventBuilder();
  set event(EventBuilder? event) => _$this._event = event;

  ExpenseBuilder() {
    Expense._defaults(this);
  }

  ExpenseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _guid = $v.guid;
      _label = $v.label;
      _amountInCent = $v.amountInCent;
      _user = $v.user.toBuilder();
      _event = $v.event.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Expense other) {
    _$v = other as _$Expense;
  }

  @override
  void update(void Function(ExpenseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Expense build() => _build();

  _$Expense _build() {
    _$Expense _$result;
    try {
      _$result = _$v ??
          _$Expense._(
            guid:
                BuiltValueNullFieldError.checkNotNull(guid, r'Expense', 'guid'),
            label: BuiltValueNullFieldError.checkNotNull(
                label, r'Expense', 'label'),
            amountInCent: BuiltValueNullFieldError.checkNotNull(
                amountInCent, r'Expense', 'amountInCent'),
            user: user.build(),
            event: event.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'user';
        user.build();
        _$failedField = 'event';
        event.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'Expense', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
