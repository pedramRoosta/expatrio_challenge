part of 'user_bloc.dart';

@freezed
class UserEvent with _$UserEvent {
  const factory UserEvent.login({
    required String email,
    required String password,
  }) = UserEventLogin;

  const factory UserEvent.updateTaxInfo({
    required Map<String, dynamic> taxData,
  }) = UserEventUpdateTaxInfo;
}
