// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$UserEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password) login,
    required TResult Function(Map<String, dynamic> taxData) updateTaxInfo,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String password)? login,
    TResult? Function(Map<String, dynamic> taxData)? updateTaxInfo,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password)? login,
    TResult Function(Map<String, dynamic> taxData)? updateTaxInfo,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UserEventLogin value) login,
    required TResult Function(UserEventUpdateTaxInfo value) updateTaxInfo,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UserEventLogin value)? login,
    TResult? Function(UserEventUpdateTaxInfo value)? updateTaxInfo,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserEventLogin value)? login,
    TResult Function(UserEventUpdateTaxInfo value)? updateTaxInfo,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserEventCopyWith<$Res> {
  factory $UserEventCopyWith(UserEvent value, $Res Function(UserEvent) then) =
      _$UserEventCopyWithImpl<$Res, UserEvent>;
}

/// @nodoc
class _$UserEventCopyWithImpl<$Res, $Val extends UserEvent>
    implements $UserEventCopyWith<$Res> {
  _$UserEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$UserEventLoginImplCopyWith<$Res> {
  factory _$$UserEventLoginImplCopyWith(_$UserEventLoginImpl value,
          $Res Function(_$UserEventLoginImpl) then) =
      __$$UserEventLoginImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String email, String password});
}

/// @nodoc
class __$$UserEventLoginImplCopyWithImpl<$Res>
    extends _$UserEventCopyWithImpl<$Res, _$UserEventLoginImpl>
    implements _$$UserEventLoginImplCopyWith<$Res> {
  __$$UserEventLoginImplCopyWithImpl(
      _$UserEventLoginImpl _value, $Res Function(_$UserEventLoginImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
  }) {
    return _then(_$UserEventLoginImpl(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UserEventLoginImpl implements UserEventLogin {
  const _$UserEventLoginImpl({required this.email, required this.password});

  @override
  final String email;
  @override
  final String password;

  @override
  String toString() {
    return 'UserEvent.login(email: $email, password: $password)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserEventLoginImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserEventLoginImplCopyWith<_$UserEventLoginImpl> get copyWith =>
      __$$UserEventLoginImplCopyWithImpl<_$UserEventLoginImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password) login,
    required TResult Function(Map<String, dynamic> taxData) updateTaxInfo,
  }) {
    return login(email, password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String password)? login,
    TResult? Function(Map<String, dynamic> taxData)? updateTaxInfo,
  }) {
    return login?.call(email, password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password)? login,
    TResult Function(Map<String, dynamic> taxData)? updateTaxInfo,
    required TResult orElse(),
  }) {
    if (login != null) {
      return login(email, password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UserEventLogin value) login,
    required TResult Function(UserEventUpdateTaxInfo value) updateTaxInfo,
  }) {
    return login(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UserEventLogin value)? login,
    TResult? Function(UserEventUpdateTaxInfo value)? updateTaxInfo,
  }) {
    return login?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserEventLogin value)? login,
    TResult Function(UserEventUpdateTaxInfo value)? updateTaxInfo,
    required TResult orElse(),
  }) {
    if (login != null) {
      return login(this);
    }
    return orElse();
  }
}

abstract class UserEventLogin implements UserEvent {
  const factory UserEventLogin(
      {required final String email,
      required final String password}) = _$UserEventLoginImpl;

  String get email;
  String get password;
  @JsonKey(ignore: true)
  _$$UserEventLoginImplCopyWith<_$UserEventLoginImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UserEventUpdateTaxInfoImplCopyWith<$Res> {
  factory _$$UserEventUpdateTaxInfoImplCopyWith(
          _$UserEventUpdateTaxInfoImpl value,
          $Res Function(_$UserEventUpdateTaxInfoImpl) then) =
      __$$UserEventUpdateTaxInfoImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Map<String, dynamic> taxData});
}

/// @nodoc
class __$$UserEventUpdateTaxInfoImplCopyWithImpl<$Res>
    extends _$UserEventCopyWithImpl<$Res, _$UserEventUpdateTaxInfoImpl>
    implements _$$UserEventUpdateTaxInfoImplCopyWith<$Res> {
  __$$UserEventUpdateTaxInfoImplCopyWithImpl(
      _$UserEventUpdateTaxInfoImpl _value,
      $Res Function(_$UserEventUpdateTaxInfoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? taxData = null,
  }) {
    return _then(_$UserEventUpdateTaxInfoImpl(
      taxData: null == taxData
          ? _value._taxData
          : taxData // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ));
  }
}

/// @nodoc

class _$UserEventUpdateTaxInfoImpl implements UserEventUpdateTaxInfo {
  const _$UserEventUpdateTaxInfoImpl(
      {required final Map<String, dynamic> taxData})
      : _taxData = taxData;

  final Map<String, dynamic> _taxData;
  @override
  Map<String, dynamic> get taxData {
    if (_taxData is EqualUnmodifiableMapView) return _taxData;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_taxData);
  }

  @override
  String toString() {
    return 'UserEvent.updateTaxInfo(taxData: $taxData)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserEventUpdateTaxInfoImpl &&
            const DeepCollectionEquality().equals(other._taxData, _taxData));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_taxData));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserEventUpdateTaxInfoImplCopyWith<_$UserEventUpdateTaxInfoImpl>
      get copyWith => __$$UserEventUpdateTaxInfoImplCopyWithImpl<
          _$UserEventUpdateTaxInfoImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password) login,
    required TResult Function(Map<String, dynamic> taxData) updateTaxInfo,
  }) {
    return updateTaxInfo(taxData);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String password)? login,
    TResult? Function(Map<String, dynamic> taxData)? updateTaxInfo,
  }) {
    return updateTaxInfo?.call(taxData);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password)? login,
    TResult Function(Map<String, dynamic> taxData)? updateTaxInfo,
    required TResult orElse(),
  }) {
    if (updateTaxInfo != null) {
      return updateTaxInfo(taxData);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UserEventLogin value) login,
    required TResult Function(UserEventUpdateTaxInfo value) updateTaxInfo,
  }) {
    return updateTaxInfo(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UserEventLogin value)? login,
    TResult? Function(UserEventUpdateTaxInfo value)? updateTaxInfo,
  }) {
    return updateTaxInfo?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserEventLogin value)? login,
    TResult Function(UserEventUpdateTaxInfo value)? updateTaxInfo,
    required TResult orElse(),
  }) {
    if (updateTaxInfo != null) {
      return updateTaxInfo(this);
    }
    return orElse();
  }
}

abstract class UserEventUpdateTaxInfo implements UserEvent {
  const factory UserEventUpdateTaxInfo(
          {required final Map<String, dynamic> taxData}) =
      _$UserEventUpdateTaxInfoImpl;

  Map<String, dynamic> get taxData;
  @JsonKey(ignore: true)
  _$$UserEventUpdateTaxInfoImplCopyWith<_$UserEventUpdateTaxInfoImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$UserState {
  User? get user => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  String? get userError => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UserStateCopyWith<UserState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserStateCopyWith<$Res> {
  factory $UserStateCopyWith(UserState value, $Res Function(UserState) then) =
      _$UserStateCopyWithImpl<$Res, UserState>;
  @useResult
  $Res call({User? user, bool isLoading, String? userError});

  $UserCopyWith<$Res>? get user;
}

/// @nodoc
class _$UserStateCopyWithImpl<$Res, $Val extends UserState>
    implements $UserStateCopyWith<$Res> {
  _$UserStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = freezed,
    Object? isLoading = null,
    Object? userError = freezed,
  }) {
    return _then(_value.copyWith(
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      userError: freezed == userError
          ? _value.userError
          : userError // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res>? get user {
    if (_value.user == null) {
      return null;
    }

    return $UserCopyWith<$Res>(_value.user!, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$UserStateImplCopyWith<$Res>
    implements $UserStateCopyWith<$Res> {
  factory _$$UserStateImplCopyWith(
          _$UserStateImpl value, $Res Function(_$UserStateImpl) then) =
      __$$UserStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({User? user, bool isLoading, String? userError});

  @override
  $UserCopyWith<$Res>? get user;
}

/// @nodoc
class __$$UserStateImplCopyWithImpl<$Res>
    extends _$UserStateCopyWithImpl<$Res, _$UserStateImpl>
    implements _$$UserStateImplCopyWith<$Res> {
  __$$UserStateImplCopyWithImpl(
      _$UserStateImpl _value, $Res Function(_$UserStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = freezed,
    Object? isLoading = null,
    Object? userError = freezed,
  }) {
    return _then(_$UserStateImpl(
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      userError: freezed == userError
          ? _value.userError
          : userError // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$UserStateImpl extends _UserState {
  _$UserStateImpl(
      {this.user = null, this.isLoading = false, this.userError = null})
      : super._();

  @override
  @JsonKey()
  final User? user;
  @override
  @JsonKey()
  final bool isLoading;
  @override
  @JsonKey()
  final String? userError;

  @override
  String toString() {
    return 'UserState(user: $user, isLoading: $isLoading, userError: $userError)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserStateImpl &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.userError, userError) ||
                other.userError == userError));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user, isLoading, userError);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserStateImplCopyWith<_$UserStateImpl> get copyWith =>
      __$$UserStateImplCopyWithImpl<_$UserStateImpl>(this, _$identity);
}

abstract class _UserState extends UserState {
  factory _UserState(
      {final User? user,
      final bool isLoading,
      final String? userError}) = _$UserStateImpl;
  _UserState._() : super._();

  @override
  User? get user;
  @override
  bool get isLoading;
  @override
  String? get userError;
  @override
  @JsonKey(ignore: true)
  _$$UserStateImplCopyWith<_$UserStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
