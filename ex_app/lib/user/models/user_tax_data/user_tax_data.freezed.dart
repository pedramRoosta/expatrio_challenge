// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_tax_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UserTaxData _$UserTaxDataFromJson(Map<String, dynamic> json) {
  return _UserTaxData.fromJson(json);
}

/// @nodoc
mixin _$UserTaxData {
  bool get usPerson => throw _privateConstructorUsedError;
  UserTax? get primaryTaxResidence => throw _privateConstructorUsedError;
  List<UserTax>? get secondaryTaxResidence =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserTaxDataCopyWith<UserTaxData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserTaxDataCopyWith<$Res> {
  factory $UserTaxDataCopyWith(
          UserTaxData value, $Res Function(UserTaxData) then) =
      _$UserTaxDataCopyWithImpl<$Res, UserTaxData>;
  @useResult
  $Res call(
      {bool usPerson,
      UserTax? primaryTaxResidence,
      List<UserTax>? secondaryTaxResidence});

  $UserTaxCopyWith<$Res>? get primaryTaxResidence;
}

/// @nodoc
class _$UserTaxDataCopyWithImpl<$Res, $Val extends UserTaxData>
    implements $UserTaxDataCopyWith<$Res> {
  _$UserTaxDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? usPerson = null,
    Object? primaryTaxResidence = freezed,
    Object? secondaryTaxResidence = freezed,
  }) {
    return _then(_value.copyWith(
      usPerson: null == usPerson
          ? _value.usPerson
          : usPerson // ignore: cast_nullable_to_non_nullable
              as bool,
      primaryTaxResidence: freezed == primaryTaxResidence
          ? _value.primaryTaxResidence
          : primaryTaxResidence // ignore: cast_nullable_to_non_nullable
              as UserTax?,
      secondaryTaxResidence: freezed == secondaryTaxResidence
          ? _value.secondaryTaxResidence
          : secondaryTaxResidence // ignore: cast_nullable_to_non_nullable
              as List<UserTax>?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UserTaxCopyWith<$Res>? get primaryTaxResidence {
    if (_value.primaryTaxResidence == null) {
      return null;
    }

    return $UserTaxCopyWith<$Res>(_value.primaryTaxResidence!, (value) {
      return _then(_value.copyWith(primaryTaxResidence: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$UserTaxDataImplCopyWith<$Res>
    implements $UserTaxDataCopyWith<$Res> {
  factory _$$UserTaxDataImplCopyWith(
          _$UserTaxDataImpl value, $Res Function(_$UserTaxDataImpl) then) =
      __$$UserTaxDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool usPerson,
      UserTax? primaryTaxResidence,
      List<UserTax>? secondaryTaxResidence});

  @override
  $UserTaxCopyWith<$Res>? get primaryTaxResidence;
}

/// @nodoc
class __$$UserTaxDataImplCopyWithImpl<$Res>
    extends _$UserTaxDataCopyWithImpl<$Res, _$UserTaxDataImpl>
    implements _$$UserTaxDataImplCopyWith<$Res> {
  __$$UserTaxDataImplCopyWithImpl(
      _$UserTaxDataImpl _value, $Res Function(_$UserTaxDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? usPerson = null,
    Object? primaryTaxResidence = freezed,
    Object? secondaryTaxResidence = freezed,
  }) {
    return _then(_$UserTaxDataImpl(
      usPerson: null == usPerson
          ? _value.usPerson
          : usPerson // ignore: cast_nullable_to_non_nullable
              as bool,
      primaryTaxResidence: freezed == primaryTaxResidence
          ? _value.primaryTaxResidence
          : primaryTaxResidence // ignore: cast_nullable_to_non_nullable
              as UserTax?,
      secondaryTaxResidence: freezed == secondaryTaxResidence
          ? _value._secondaryTaxResidence
          : secondaryTaxResidence // ignore: cast_nullable_to_non_nullable
              as List<UserTax>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserTaxDataImpl extends _UserTaxData {
  const _$UserTaxDataImpl(
      {this.usPerson = false,
      this.primaryTaxResidence,
      final List<UserTax>? secondaryTaxResidence})
      : _secondaryTaxResidence = secondaryTaxResidence,
        super._();

  factory _$UserTaxDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserTaxDataImplFromJson(json);

  @override
  @JsonKey()
  final bool usPerson;
  @override
  final UserTax? primaryTaxResidence;
  final List<UserTax>? _secondaryTaxResidence;
  @override
  List<UserTax>? get secondaryTaxResidence {
    final value = _secondaryTaxResidence;
    if (value == null) return null;
    if (_secondaryTaxResidence is EqualUnmodifiableListView)
      return _secondaryTaxResidence;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'UserTaxData(usPerson: $usPerson, primaryTaxResidence: $primaryTaxResidence, secondaryTaxResidence: $secondaryTaxResidence)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserTaxDataImpl &&
            (identical(other.usPerson, usPerson) ||
                other.usPerson == usPerson) &&
            (identical(other.primaryTaxResidence, primaryTaxResidence) ||
                other.primaryTaxResidence == primaryTaxResidence) &&
            const DeepCollectionEquality()
                .equals(other._secondaryTaxResidence, _secondaryTaxResidence));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, usPerson, primaryTaxResidence,
      const DeepCollectionEquality().hash(_secondaryTaxResidence));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserTaxDataImplCopyWith<_$UserTaxDataImpl> get copyWith =>
      __$$UserTaxDataImplCopyWithImpl<_$UserTaxDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserTaxDataImplToJson(
      this,
    );
  }
}

abstract class _UserTaxData extends UserTaxData {
  const factory _UserTaxData(
      {final bool usPerson,
      final UserTax? primaryTaxResidence,
      final List<UserTax>? secondaryTaxResidence}) = _$UserTaxDataImpl;
  const _UserTaxData._() : super._();

  factory _UserTaxData.fromJson(Map<String, dynamic> json) =
      _$UserTaxDataImpl.fromJson;

  @override
  bool get usPerson;
  @override
  UserTax? get primaryTaxResidence;
  @override
  List<UserTax>? get secondaryTaxResidence;
  @override
  @JsonKey(ignore: true)
  _$$UserTaxDataImplCopyWith<_$UserTaxDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

UserTax _$UserTaxFromJson(Map<String, dynamic> json) {
  return _UserTax.fromJson(json);
}

/// @nodoc
mixin _$UserTax {
  String get country => throw _privateConstructorUsedError;
  String get id => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserTaxCopyWith<UserTax> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserTaxCopyWith<$Res> {
  factory $UserTaxCopyWith(UserTax value, $Res Function(UserTax) then) =
      _$UserTaxCopyWithImpl<$Res, UserTax>;
  @useResult
  $Res call({String country, String id});
}

/// @nodoc
class _$UserTaxCopyWithImpl<$Res, $Val extends UserTax>
    implements $UserTaxCopyWith<$Res> {
  _$UserTaxCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? country = null,
    Object? id = null,
  }) {
    return _then(_value.copyWith(
      country: null == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserTaxImplCopyWith<$Res> implements $UserTaxCopyWith<$Res> {
  factory _$$UserTaxImplCopyWith(
          _$UserTaxImpl value, $Res Function(_$UserTaxImpl) then) =
      __$$UserTaxImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String country, String id});
}

/// @nodoc
class __$$UserTaxImplCopyWithImpl<$Res>
    extends _$UserTaxCopyWithImpl<$Res, _$UserTaxImpl>
    implements _$$UserTaxImplCopyWith<$Res> {
  __$$UserTaxImplCopyWithImpl(
      _$UserTaxImpl _value, $Res Function(_$UserTaxImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? country = null,
    Object? id = null,
  }) {
    return _then(_$UserTaxImpl(
      country: null == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserTaxImpl extends _UserTax {
  const _$UserTaxImpl({required this.country, required this.id}) : super._();

  factory _$UserTaxImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserTaxImplFromJson(json);

  @override
  final String country;
  @override
  final String id;

  @override
  String toString() {
    return 'UserTax(country: $country, id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserTaxImpl &&
            (identical(other.country, country) || other.country == country) &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, country, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserTaxImplCopyWith<_$UserTaxImpl> get copyWith =>
      __$$UserTaxImplCopyWithImpl<_$UserTaxImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserTaxImplToJson(
      this,
    );
  }
}

abstract class _UserTax extends UserTax {
  const factory _UserTax(
      {required final String country,
      required final String id}) = _$UserTaxImpl;
  const _UserTax._() : super._();

  factory _UserTax.fromJson(Map<String, dynamic> json) = _$UserTaxImpl.fromJson;

  @override
  String get country;
  @override
  String get id;
  @override
  @JsonKey(ignore: true)
  _$$UserTaxImplCopyWith<_$UserTaxImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
