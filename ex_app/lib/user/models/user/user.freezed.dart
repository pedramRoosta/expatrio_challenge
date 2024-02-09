// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

User _$UserFromJson(Map<String, dynamic> json) {
  return _User.fromJson(json);
}

/// @nodoc
mixin _$User {
  int get userId => throw _privateConstructorUsedError;
  String get userUuid => throw _privateConstructorUsedError;
  String get lastName => throw _privateConstructorUsedError;
  String get firstName => throw _privateConstructorUsedError;
  String get fullName => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String get role => throw _privateConstructorUsedError;
  bool get isAdmin => throw _privateConstructorUsedError;
  UserTaxData? get userTaxData => throw _privateConstructorUsedError;
  List<String> get consoleRoles => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserCopyWith<User> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserCopyWith<$Res> {
  factory $UserCopyWith(User value, $Res Function(User) then) =
      _$UserCopyWithImpl<$Res, User>;
  @useResult
  $Res call(
      {int userId,
      String userUuid,
      String lastName,
      String firstName,
      String fullName,
      String email,
      String role,
      bool isAdmin,
      UserTaxData? userTaxData,
      List<String> consoleRoles});

  $UserTaxDataCopyWith<$Res>? get userTaxData;
}

/// @nodoc
class _$UserCopyWithImpl<$Res, $Val extends User>
    implements $UserCopyWith<$Res> {
  _$UserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? userUuid = null,
    Object? lastName = null,
    Object? firstName = null,
    Object? fullName = null,
    Object? email = null,
    Object? role = null,
    Object? isAdmin = null,
    Object? userTaxData = freezed,
    Object? consoleRoles = null,
  }) {
    return _then(_value.copyWith(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      userUuid: null == userUuid
          ? _value.userUuid
          : userUuid // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: null == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      fullName: null == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      role: null == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String,
      isAdmin: null == isAdmin
          ? _value.isAdmin
          : isAdmin // ignore: cast_nullable_to_non_nullable
              as bool,
      userTaxData: freezed == userTaxData
          ? _value.userTaxData
          : userTaxData // ignore: cast_nullable_to_non_nullable
              as UserTaxData?,
      consoleRoles: null == consoleRoles
          ? _value.consoleRoles
          : consoleRoles // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UserTaxDataCopyWith<$Res>? get userTaxData {
    if (_value.userTaxData == null) {
      return null;
    }

    return $UserTaxDataCopyWith<$Res>(_value.userTaxData!, (value) {
      return _then(_value.copyWith(userTaxData: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$UserImplCopyWith<$Res> implements $UserCopyWith<$Res> {
  factory _$$UserImplCopyWith(
          _$UserImpl value, $Res Function(_$UserImpl) then) =
      __$$UserImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int userId,
      String userUuid,
      String lastName,
      String firstName,
      String fullName,
      String email,
      String role,
      bool isAdmin,
      UserTaxData? userTaxData,
      List<String> consoleRoles});

  @override
  $UserTaxDataCopyWith<$Res>? get userTaxData;
}

/// @nodoc
class __$$UserImplCopyWithImpl<$Res>
    extends _$UserCopyWithImpl<$Res, _$UserImpl>
    implements _$$UserImplCopyWith<$Res> {
  __$$UserImplCopyWithImpl(_$UserImpl _value, $Res Function(_$UserImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? userUuid = null,
    Object? lastName = null,
    Object? firstName = null,
    Object? fullName = null,
    Object? email = null,
    Object? role = null,
    Object? isAdmin = null,
    Object? userTaxData = freezed,
    Object? consoleRoles = null,
  }) {
    return _then(_$UserImpl(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      userUuid: null == userUuid
          ? _value.userUuid
          : userUuid // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: null == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      fullName: null == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      role: null == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String,
      isAdmin: null == isAdmin
          ? _value.isAdmin
          : isAdmin // ignore: cast_nullable_to_non_nullable
              as bool,
      userTaxData: freezed == userTaxData
          ? _value.userTaxData
          : userTaxData // ignore: cast_nullable_to_non_nullable
              as UserTaxData?,
      consoleRoles: null == consoleRoles
          ? _value._consoleRoles
          : consoleRoles // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserImpl extends _User {
  const _$UserImpl(
      {required this.userId,
      required this.userUuid,
      required this.lastName,
      required this.firstName,
      required this.fullName,
      required this.email,
      required this.role,
      required this.isAdmin,
      this.userTaxData,
      final List<String> consoleRoles = const []})
      : _consoleRoles = consoleRoles,
        super._();

  factory _$UserImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserImplFromJson(json);

  @override
  final int userId;
  @override
  final String userUuid;
  @override
  final String lastName;
  @override
  final String firstName;
  @override
  final String fullName;
  @override
  final String email;
  @override
  final String role;
  @override
  final bool isAdmin;
  @override
  final UserTaxData? userTaxData;
  final List<String> _consoleRoles;
  @override
  @JsonKey()
  List<String> get consoleRoles {
    if (_consoleRoles is EqualUnmodifiableListView) return _consoleRoles;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_consoleRoles);
  }

  @override
  String toString() {
    return 'User(userId: $userId, userUuid: $userUuid, lastName: $lastName, firstName: $firstName, fullName: $fullName, email: $email, role: $role, isAdmin: $isAdmin, userTaxData: $userTaxData, consoleRoles: $consoleRoles)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserImpl &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.userUuid, userUuid) ||
                other.userUuid == userUuid) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.fullName, fullName) ||
                other.fullName == fullName) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.role, role) || other.role == role) &&
            (identical(other.isAdmin, isAdmin) || other.isAdmin == isAdmin) &&
            (identical(other.userTaxData, userTaxData) ||
                other.userTaxData == userTaxData) &&
            const DeepCollectionEquality()
                .equals(other._consoleRoles, _consoleRoles));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      userId,
      userUuid,
      lastName,
      firstName,
      fullName,
      email,
      role,
      isAdmin,
      userTaxData,
      const DeepCollectionEquality().hash(_consoleRoles));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserImplCopyWith<_$UserImpl> get copyWith =>
      __$$UserImplCopyWithImpl<_$UserImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserImplToJson(
      this,
    );
  }
}

abstract class _User extends User {
  const factory _User(
      {required final int userId,
      required final String userUuid,
      required final String lastName,
      required final String firstName,
      required final String fullName,
      required final String email,
      required final String role,
      required final bool isAdmin,
      final UserTaxData? userTaxData,
      final List<String> consoleRoles}) = _$UserImpl;
  const _User._() : super._();

  factory _User.fromJson(Map<String, dynamic> json) = _$UserImpl.fromJson;

  @override
  int get userId;
  @override
  String get userUuid;
  @override
  String get lastName;
  @override
  String get firstName;
  @override
  String get fullName;
  @override
  String get email;
  @override
  String get role;
  @override
  bool get isAdmin;
  @override
  UserTaxData? get userTaxData;
  @override
  List<String> get consoleRoles;
  @override
  @JsonKey(ignore: true)
  _$$UserImplCopyWith<_$UserImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
