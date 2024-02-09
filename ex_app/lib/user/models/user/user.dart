import 'package:ex_app/user/models/user_tax_data/user_tax_data.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.freezed.dart';
part 'user.g.dart';

@freezed
class User with _$User {
  const User._();

  const factory User({
    required int userId,
    required String userUuid,
    required String lastName,
    required String firstName,
    required String fullName,
    required String email,
    required String role,
    required bool isAdmin,
    UserTaxData? userTaxData,
    @Default([]) List<String> consoleRoles,
  }) = _User;

  factory User.fromJson(Map<String, Object?> json) => _$UserFromJson(json);
}
