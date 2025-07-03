// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'course_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const CourseRequestStatusEnum _$courseRequestStatusEnum_pending =
    const CourseRequestStatusEnum._('pending');
const CourseRequestStatusEnum _$courseRequestStatusEnum_accepted =
    const CourseRequestStatusEnum._('accepted');
const CourseRequestStatusEnum _$courseRequestStatusEnum_rejected =
    const CourseRequestStatusEnum._('rejected');
const CourseRequestStatusEnum _$courseRequestStatusEnum_unknownDefaultOpenApi =
    const CourseRequestStatusEnum._('unknownDefaultOpenApi');

CourseRequestStatusEnum _$courseRequestStatusEnumValueOf(String name) {
  switch (name) {
    case 'pending':
      return _$courseRequestStatusEnum_pending;
    case 'accepted':
      return _$courseRequestStatusEnum_accepted;
    case 'rejected':
      return _$courseRequestStatusEnum_rejected;
    case 'unknownDefaultOpenApi':
      return _$courseRequestStatusEnum_unknownDefaultOpenApi;
    default:
      return _$courseRequestStatusEnum_unknownDefaultOpenApi;
  }
}

final BuiltSet<CourseRequestStatusEnum> _$courseRequestStatusEnumValues =
    BuiltSet<CourseRequestStatusEnum>(const <CourseRequestStatusEnum>[
  _$courseRequestStatusEnum_pending,
  _$courseRequestStatusEnum_accepted,
  _$courseRequestStatusEnum_rejected,
  _$courseRequestStatusEnum_unknownDefaultOpenApi,
]);

Serializer<CourseRequestStatusEnum> _$courseRequestStatusEnumSerializer =
    _$CourseRequestStatusEnumSerializer();

class _$CourseRequestStatusEnumSerializer
    implements PrimitiveSerializer<CourseRequestStatusEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'pending': 'pending',
    'accepted': 'accepted',
    'rejected': 'rejected',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'pending': 'pending',
    'accepted': 'accepted',
    'rejected': 'rejected',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[CourseRequestStatusEnum];
  @override
  final String wireName = 'CourseRequestStatusEnum';

  @override
  Object serialize(Serializers serializers, CourseRequestStatusEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  CourseRequestStatusEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      CourseRequestStatusEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$CourseRequest extends CourseRequest {
  @override
  final String guid;
  @override
  final User user;
  @override
  final Course course;
  @override
  final CourseRequestStatusEnum status;

  factory _$CourseRequest([void Function(CourseRequestBuilder)? updates]) =>
      (CourseRequestBuilder()..update(updates))._build();

  _$CourseRequest._(
      {required this.guid,
      required this.user,
      required this.course,
      required this.status})
      : super._();
  @override
  CourseRequest rebuild(void Function(CourseRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CourseRequestBuilder toBuilder() => CourseRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CourseRequest &&
        guid == other.guid &&
        user == other.user &&
        course == other.course &&
        status == other.status;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, guid.hashCode);
    _$hash = $jc(_$hash, user.hashCode);
    _$hash = $jc(_$hash, course.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CourseRequest')
          ..add('guid', guid)
          ..add('user', user)
          ..add('course', course)
          ..add('status', status))
        .toString();
  }
}

class CourseRequestBuilder
    implements Builder<CourseRequest, CourseRequestBuilder> {
  _$CourseRequest? _$v;

  String? _guid;
  String? get guid => _$this._guid;
  set guid(String? guid) => _$this._guid = guid;

  UserBuilder? _user;
  UserBuilder get user => _$this._user ??= UserBuilder();
  set user(UserBuilder? user) => _$this._user = user;

  CourseBuilder? _course;
  CourseBuilder get course => _$this._course ??= CourseBuilder();
  set course(CourseBuilder? course) => _$this._course = course;

  CourseRequestStatusEnum? _status;
  CourseRequestStatusEnum? get status => _$this._status;
  set status(CourseRequestStatusEnum? status) => _$this._status = status;

  CourseRequestBuilder() {
    CourseRequest._defaults(this);
  }

  CourseRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _guid = $v.guid;
      _user = $v.user.toBuilder();
      _course = $v.course.toBuilder();
      _status = $v.status;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CourseRequest other) {
    _$v = other as _$CourseRequest;
  }

  @override
  void update(void Function(CourseRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CourseRequest build() => _build();

  _$CourseRequest _build() {
    _$CourseRequest _$result;
    try {
      _$result = _$v ??
          _$CourseRequest._(
            guid: BuiltValueNullFieldError.checkNotNull(
                guid, r'CourseRequest', 'guid'),
            user: user.build(),
            course: course.build(),
            status: BuiltValueNullFieldError.checkNotNull(
                status, r'CourseRequest', 'status'),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'user';
        user.build();
        _$failedField = 'course';
        course.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'CourseRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
