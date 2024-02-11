import 'package:bloc/bloc.dart';
import 'package:ex_app/common/constants.dart';
import 'package:ex_app/service/router.dart';
import 'package:ex_app/service/secure_storage.dart';
import 'package:ex_app/service/user_service.dart';
import 'package:ex_app/user/models/user/user.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';
part 'user_event.dart';
part 'user_state.dart';
part 'user_bloc.freezed.dart';

class UserBloc extends Bloc<UserEvent, UserState> {
  final userService = GetIt.I.get<IUserService>();
  final storageService = GetIt.I.get<ISecureStorageService>();
  UserBloc() : super(UserState()) {
    on<UserEventLogin>(_login);
    on<UserEventLogout>(_logout);
    on<UserEventUpdateTaxInfo>(_updateTaxInfo);
  }
  void _login(
    UserEventLogin event,
    Emitter<UserState> emit,
  ) async {
    emit(
      state.copyWith(
        isLoading: true,
        userError: null,
      ),
    );
    try {
      final user = await userService.login(
        email: event.email,
        password: event.password,
      );
      final userTaxData = await userService.getUserTaxData(userId: user.userId);
      emit(
        state.copyWith(
          isLoading: false,
          user: user.copyWith(userTaxData: userTaxData),
        ),
      );
    } catch (e) {
      emit(
        state.copyWith(
            userError: 'Error logging in. Please try again.', isLoading: false),
      );
    }
  }

  void _logout(
    UserEventLogout event,
    Emitter<UserState> emit,
  ) async {
    emit(
      state.copyWith(
        user: null,
      ),
    );
    AppConstants.rootNavigatorKey.currentContext!.go(Routes.login.path);
  }

  void _updateTaxInfo(
    UserEventUpdateTaxInfo event,
    Emitter<UserState> emit,
  ) async {
    try {
      emit(
        state.copyWith(
          isLoading: true,
          userError: null,
        ),
      );
      await userService.updateUserTaxData(
        userId: state.user!.userId,
        data: event.taxData,
      );
      final userTaxData =
          await userService.getUserTaxData(userId: state.user!.userId);
      emit(
        state.copyWith(
          isLoading: false,
          user: state.user!.copyWith(userTaxData: userTaxData),
        ),
      );
    } catch (e) {
      emit(
        state.copyWith(
            isLoading: false,
            userError: 'Error updating the tax info. Please try again.'),
      );
    }
  }
}
