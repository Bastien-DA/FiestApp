// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'poll.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Poll extends Poll {
  @override
  final String guid;
  @override
  final String question;
  @override
  final DateTime createdAt;
  @override
  final BuiltList<PollOption> options;
  @override
  final BuiltList<PollVote> votes;
  @override
  final Event event;

  factory _$Poll([void Function(PollBuilder)? updates]) =>
      (PollBuilder()..update(updates))._build();

  _$Poll._(
      {required this.guid,
      required this.question,
      required this.createdAt,
      required this.options,
      required this.votes,
      required this.event})
      : super._();
  @override
  Poll rebuild(void Function(PollBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PollBuilder toBuilder() => PollBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Poll &&
        guid == other.guid &&
        question == other.question &&
        createdAt == other.createdAt &&
        options == other.options &&
        votes == other.votes &&
        event == other.event;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, guid.hashCode);
    _$hash = $jc(_$hash, question.hashCode);
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jc(_$hash, options.hashCode);
    _$hash = $jc(_$hash, votes.hashCode);
    _$hash = $jc(_$hash, event.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Poll')
          ..add('guid', guid)
          ..add('question', question)
          ..add('createdAt', createdAt)
          ..add('options', options)
          ..add('votes', votes)
          ..add('event', event))
        .toString();
  }
}

class PollBuilder implements Builder<Poll, PollBuilder> {
  _$Poll? _$v;

  String? _guid;
  String? get guid => _$this._guid;
  set guid(String? guid) => _$this._guid = guid;

  String? _question;
  String? get question => _$this._question;
  set question(String? question) => _$this._question = question;

  DateTime? _createdAt;
  DateTime? get createdAt => _$this._createdAt;
  set createdAt(DateTime? createdAt) => _$this._createdAt = createdAt;

  ListBuilder<PollOption>? _options;
  ListBuilder<PollOption> get options =>
      _$this._options ??= ListBuilder<PollOption>();
  set options(ListBuilder<PollOption>? options) => _$this._options = options;

  ListBuilder<PollVote>? _votes;
  ListBuilder<PollVote> get votes => _$this._votes ??= ListBuilder<PollVote>();
  set votes(ListBuilder<PollVote>? votes) => _$this._votes = votes;

  EventBuilder? _event;
  EventBuilder get event => _$this._event ??= EventBuilder();
  set event(EventBuilder? event) => _$this._event = event;

  PollBuilder() {
    Poll._defaults(this);
  }

  PollBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _guid = $v.guid;
      _question = $v.question;
      _createdAt = $v.createdAt;
      _options = $v.options.toBuilder();
      _votes = $v.votes.toBuilder();
      _event = $v.event.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Poll other) {
    _$v = other as _$Poll;
  }

  @override
  void update(void Function(PollBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Poll build() => _build();

  _$Poll _build() {
    _$Poll _$result;
    try {
      _$result = _$v ??
          _$Poll._(
            guid: BuiltValueNullFieldError.checkNotNull(guid, r'Poll', 'guid'),
            question: BuiltValueNullFieldError.checkNotNull(
                question, r'Poll', 'question'),
            createdAt: BuiltValueNullFieldError.checkNotNull(
                createdAt, r'Poll', 'createdAt'),
            options: options.build(),
            votes: votes.build(),
            event: event.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'options';
        options.build();
        _$failedField = 'votes';
        votes.build();
        _$failedField = 'event';
        event.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(r'Poll', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
