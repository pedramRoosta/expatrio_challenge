// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_tax_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserTaxDataImpl _$$UserTaxDataImplFromJson(Map<String, dynamic> json) =>
    _$UserTaxDataImpl(
      primaryUserTax: json['primaryUserTax'] == null
          ? null
          : UserTax.fromJson(json['primaryUserTax'] as Map<String, dynamic>),
      secondaryUserTax: (json['secondaryUserTax'] as List<dynamic>?)
          ?.map((e) => UserTax.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$UserTaxDataImplToJson(_$UserTaxDataImpl instance) =>
    <String, dynamic>{
      'primaryUserTax': instance.primaryUserTax,
      'secondaryUserTax': instance.secondaryUserTax,
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
