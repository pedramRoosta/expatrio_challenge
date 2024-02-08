import 'dart:math';

import 'package:bloc/bloc.dart';
import 'package:ex_app/service/user_service.dart';
import 'package:ex_app/user/models/user.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get_it/get_it.dart';
part 'user_event.dart';
part 'user_state.dart';
part 'user_bloc.freezed.dart';

class UserBloc extends Bloc<UserEvent, UserState> {
  final userService = GetIt.I.get<IUserService>();
  UserBloc() : super(UserState()) {
    on<UserEventLogin>(_login);
  }

  void _login(
    UserEvent event,
    Emitter<UserState> emit,
  ) async {
    try {
      final user = await userService.login(
        email: event.email,
        password: event.password,
      );
      emit(
        state.copyWith(
          user: user,
        ),
      );
    } catch (e) {
      debugPrint('dojo errol');
      emit(
        state.copyWith(userError: 'Error logging in. Please try again.'),
      );
    }
  }
}
