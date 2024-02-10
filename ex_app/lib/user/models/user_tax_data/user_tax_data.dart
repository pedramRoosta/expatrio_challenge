import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_tax_data.freezed.dart';
part 'user_tax_data.g.dart';

@freezed
class UserTaxData with _$UserTaxData {
  const UserTaxData._();

  const factory UserTaxData({
    @Default(false) bool usPerson,
    UserTax? primaryTaxResidence,
    List<UserTax>? secondaryTaxResidence,
  }) = _UserTaxData;

  factory UserTaxData.fromJson(Map<String, Object?> json) =>
      _$UserTaxDataFromJson(json);
}

@freezed
class UserTax with _$UserTax {
  const UserTax._();

  const factory UserTax({
    required String country,
    required String id,
  }) = _UserTax;
  factory UserTax.fromJson(Map<String, Object?> json) =>
      _$UserTaxFromJson(json);
}
