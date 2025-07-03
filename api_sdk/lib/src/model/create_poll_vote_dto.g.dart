// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_poll_vote_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CreatePollVoteDto extends CreatePollVoteDto {
  @override
  final String user;
  @override
  final String poll;
  @override
  final String option;

  factory _$CreatePollVoteDto(
          [void Function(CreatePollVoteDtoBuilder)? updates]) =>
      (CreatePollVoteDtoBuilder()..update(updates))._build();

  _$CreatePollVoteDto._(
      {required this.user, required this.poll, required this.option})
      : super._();
  @override
  CreatePollVoteDto rebuild(void Function(CreatePollVoteDtoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CreatePollVoteDtoBuilder toBuilder() =>
      CreatePollVoteDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreatePollVoteDto &&
        user == other.user &&
        poll == other.poll &&
        option == other.option;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, user.hashCode);
    _$hash = $jc(_$hash, poll.hashCode);
    _$hash = $jc(_$hash, option.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CreatePollVoteDto')
          ..add('user', user)
          ..add('poll', poll)
          ..add('option', option))
        .toString();
  }
}

class CreatePollVoteDtoBuilder
    implements Builder<CreatePollVoteDto, CreatePollVoteDtoBuilder> {
  _$CreatePollVoteDto? _$v;

  String? _user;
  String? get user => _$this._user;
  set user(String? user) => _$this._user = user;

  String? _poll;
  String? get poll => _$this._poll;
  set poll(String? poll) => _$this._poll = poll;

  String? _option;
  String? get option => _$this._option;
  set option(String? option) => _$this._option = option;

  CreatePollVoteDtoBuilder() {
    CreatePollVoteDto._defaults(this);
  }

  CreatePollVoteDtoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _user = $v.user;
      _poll = $v.poll;
      _option = $v.option;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CreatePollVoteDto other) {
    _$v = other as _$CreatePollVoteDto;
  }

  @override
  void update(void Function(CreatePollVoteDtoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CreatePollVoteDto build() => _build();

  _$CreatePollVoteDto _build() {
    final _$result = _$v ??
        _$CreatePollVoteDto._(
          user: BuiltValueNullFieldError.checkNotNull(
              user, r'CreatePollVoteDto', 'user'),
          poll: BuiltValueNullFieldError.checkNotNull(
              poll, r'CreatePollVoteDto', 'poll'),
          option: BuiltValueNullFieldError.checkNotNull(
              option, r'CreatePollVoteDto', 'option'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
