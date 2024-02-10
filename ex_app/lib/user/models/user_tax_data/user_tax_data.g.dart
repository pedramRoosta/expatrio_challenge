// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_tax_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserTaxDataImpl _$$UserTaxDataImplFromJson(Map<String, dynamic> json) =>
    _$UserTaxDataImpl(
      usPerson: json['usPerson'] as bool? ?? false,
      primaryTaxResidence: json['primaryTaxResidence'] == null
          ? null
          : UserTax.fromJson(
              json['primaryTaxResidence'] as Map<String, dynamic>),
      secondaryTaxResidence: (json['secondaryTaxResidence'] as List<dynamic>?)
          ?.map((e) => UserTax.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$UserTaxDataImplToJson(_$UserTaxDataImpl instance) =>
    <String, dynamic>{
      'usPerson': instance.usPerson,
      'primaryTaxResidence': instance.primaryTaxResidence,
      'secondaryTaxResidence': instance.secondaryTaxResidence,
    };

_$UserTaxImpl _$$UserTaxImplFromJson(Map<String, dynamic> json) =>
    _$UserTaxImpl(
      country: json['country'] as String,
      id: json['id'] as String,
    );

Map<String, dynamic> _$$UserTaxImplToJson(_$UserTaxImpl instance) =>
    <String, dynamic>{
      'country': instance.country,
      'id': instance.id,
    };
