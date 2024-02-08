import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.freezed.dart';

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
    @Default([]) List<String> consoleRoles,
  }) = _User;
}
