import 'dart:math';

import 'package:bloc/bloc.dart';
import 'package:ex_app/user/models/user.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'user_event.dart';
part 'user_state.dart';
part 'user_bloc.freezed.dart';

class UserBloc extends Bloc<UserEvent, UserState> {
  // final UserRepository userRepository;

  UserBloc() : super(UserState()) {
    on<UserEventLogin>(_login);
  }

  void _login(
    UserEvent event,
    Emitter<UserState> emit,
  ) {
    emit(
      state.copyWith(
        user: User(
          userId: Random().nextInt(1000),
          userUuid: 'userUuid',
          lastName: 'lastName',
          firstName: 'firstName',
          fullName: 'fullName',
          email: 'email',
          role: 'role',
          isAdmin: false,
        ),
      ),
    );
  }
}
