// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'poll_option.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PollOption extends PollOption {
  @override
  final String guid;
  @override
  final String label;
  @override
  final Poll poll;
  @override
  final BuiltList<PollVote> votes;

  factory _$PollOption([void Function(PollOptionBuilder)? updates]) =>
      (PollOptionBuilder()..update(updates))._build();

  _$PollOption._(
      {required this.guid,
      required this.label,
      required this.poll,
      required this.votes})
      : super._();
  @override
  PollOption rebuild(void Function(PollOptionBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PollOptionBuilder toBuilder() => PollOptionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PollOption &&
        guid == other.guid &&
        label == other.label &&
        poll == other.poll &&
        votes == other.votes;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, guid.hashCode);
    _$hash = $jc(_$hash, label.hashCode);
    _$hash = $jc(_$hash, poll.hashCode);
    _$hash = $jc(_$hash, votes.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PollOption')
          ..add('guid', guid)
          ..add('label', label)
          ..add('poll', poll)
          ..add('votes', votes))
        .toString();
  }
}

class PollOptionBuilder implements Builder<PollOption, PollOptionBuilder> {
  _$PollOption? _$v;

  String? _guid;
  String? get guid => _$this._guid;
  set guid(String? guid) => _$this._guid = guid;

  String? _label;
  String? get label => _$this._label;
  set label(String? label) => _$this._label = label;

  PollBuilder? _poll;
  PollBuilder get poll => _$this._poll ??= PollBuilder();
  set poll(PollBuilder? poll) => _$this._poll = poll;

  ListBuilder<PollVote>? _votes;
  ListBuilder<PollVote> get votes => _$this._votes ??= ListBuilder<PollVote>();
  set votes(ListBuilder<PollVote>? votes) => _$this._votes = votes;

  PollOptionBuilder() {
    PollOption._defaults(this);
  }

  PollOptionBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _guid = $v.guid;
      _label = $v.label;
      _poll = $v.poll.toBuilder();
      _votes = $v.votes.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PollOption other) {
    _$v = other as _$PollOption;
  }

  @override
  void update(void Function(PollOptionBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PollOption build() => _build();

  _$PollOption _build() {
    _$PollOption _$result;
    try {
      _$result = _$v ??
          _$PollOption._(
            guid: BuiltValueNullFieldError.checkNotNull(
                guid, r'PollOption', 'guid'),
            label: BuiltValueNullFieldError.checkNotNull(
                label, r'PollOption', 'label'),
            poll: poll.build(),
            votes: votes.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'poll';
        poll.build();
        _$failedField = 'votes';
        votes.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'PollOption', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
