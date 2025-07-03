// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_poll_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CreatePollDto extends CreatePollDto {
  @override
  final String question;
  @override
  final String event;
  @override
  final BuiltList<String> options;

  factory _$CreatePollDto([void Function(CreatePollDtoBuilder)? updates]) =>
      (CreatePollDtoBuilder()..update(updates))._build();

  _$CreatePollDto._(
      {required this.question, required this.event, required this.options})
      : super._();
  @override
  CreatePollDto rebuild(void Function(CreatePollDtoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CreatePollDtoBuilder toBuilder() => CreatePollDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreatePollDto &&
        question == other.question &&
        event == other.event &&
        options == other.options;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, question.hashCode);
    _$hash = $jc(_$hash, event.hashCode);
    _$hash = $jc(_$hash, options.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CreatePollDto')
          ..add('question', question)
          ..add('event', event)
          ..add('options', options))
        .toString();
  }
}

class CreatePollDtoBuilder
    implements Builder<CreatePollDto, CreatePollDtoBuilder> {
  _$CreatePollDto? _$v;

  String? _question;
  String? get question => _$this._question;
  set question(String? question) => _$this._question = question;

  String? _event;
  String? get event => _$this._event;
  set event(String? event) => _$this._event = event;

  ListBuilder<String>? _options;
  ListBuilder<String> get options => _$this._options ??= ListBuilder<String>();
  set options(ListBuilder<String>? options) => _$this._options = options;

  CreatePollDtoBuilder() {
    CreatePollDto._defaults(this);
  }

  CreatePollDtoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _question = $v.question;
      _event = $v.event;
      _options = $v.options.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CreatePollDto other) {
    _$v = other as _$CreatePollDto;
  }

  @override
  void update(void Function(CreatePollDtoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CreatePollDto build() => _build();

  _$CreatePollDto _build() {
    _$CreatePollDto _$result;
    try {
      _$result = _$v ??
          _$CreatePollDto._(
            question: BuiltValueNullFieldError.checkNotNull(
                question, r'CreatePollDto', 'question'),
            event: BuiltValueNullFieldError.checkNotNull(
                event, r'CreatePollDto', 'event'),
            options: options.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'options';
        options.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'CreatePollDto', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
