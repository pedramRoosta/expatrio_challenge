part of 'user_bloc.dart';

@freezed
class UserEvent with _$UserEvent {
  const factory UserEvent.login({
    required String email,
    required String password,
  }) = UserEventLogin;
}
