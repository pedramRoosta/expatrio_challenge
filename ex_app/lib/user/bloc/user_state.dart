part of 'user_bloc.dart';

@freezed
class UserState with _$UserState {
  const UserState._();

  factory UserState({
    @Default(null) User? user,
    @Default(false) bool isLoading,
    @Default(null) String? userError,
  }) = _UserState;

  bool get isLoggedIn {
    return user?.userId != null;
  }
}
