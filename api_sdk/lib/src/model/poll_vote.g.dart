// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'poll_vote.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PollVote extends PollVote {
  @override
  final String guid;
  @override
  final User user;
  @override
  final Poll poll;
  @override
  final PollOption option;

  factory _$PollVote([void Function(PollVoteBuilder)? updates]) =>
      (PollVoteBuilder()..update(updates))._build();

  _$PollVote._(
      {required this.guid,
      required this.user,
      required this.poll,
      required this.option})
      : super._();
  @override
  PollVote rebuild(void Function(PollVoteBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PollVoteBuilder toBuilder() => PollVoteBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PollVote &&
        guid == other.guid &&
        user == other.user &&
        poll == other.poll &&
        option == other.option;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, guid.hashCode);
    _$hash = $jc(_$hash, user.hashCode);
    _$hash = $jc(_$hash, poll.hashCode);
    _$hash = $jc(_$hash, option.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PollVote')
          ..add('guid', guid)
          ..add('user', user)
          ..add('poll', poll)
          ..add('option', option))
        .toString();
  }
}

class PollVoteBuilder implements Builder<PollVote, PollVoteBuilder> {
  _$PollVote? _$v;

  String? _guid;
  String? get guid => _$this._guid;
  set guid(String? guid) => _$this._guid = guid;

  UserBuilder? _user;
  UserBuilder get user => _$this._user ??= UserBuilder();
  set user(UserBuilder? user) => _$this._user = user;

  PollBuilder? _poll;
  PollBuilder get poll => _$this._poll ??= PollBuilder();
  set poll(PollBuilder? poll) => _$this._poll = poll;

  PollOptionBuilder? _option;
  PollOptionBuilder get option => _$this._option ??= PollOptionBuilder();
  set option(PollOptionBuilder? option) => _$this._option = option;

  PollVoteBuilder() {
    PollVote._defaults(this);
  }

  PollVoteBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _guid = $v.guid;
      _user = $v.user.toBuilder();
      _poll = $v.poll.toBuilder();
      _option = $v.option.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PollVote other) {
    _$v = other as _$PollVote;
  }

  @override
  void update(void Function(PollVoteBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PollVote build() => _build();

  _$PollVote _build() {
    _$PollVote _$result;
    try {
      _$result = _$v ??
          _$PollVote._(
            guid: BuiltValueNullFieldError.checkNotNull(
                guid, r'PollVote', 'guid'),
            user: user.build(),
            poll: poll.build(),
            option: option.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'user';
        user.build();
        _$failedField = 'poll';
        poll.build();
        _$failedField = 'option';
        option.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'PollVote', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
