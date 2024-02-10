import 'package:bloc_test/bloc_test.dart';
import 'package:ex_app/user/bloc/user_bloc.dart';
import 'package:ex_app/user/models/user/user.dart';

class UserBlocMock extends MockBloc<UserEvent, UserState> implements UserBloc {}

class MockData {
  static const user = User(
    userId: 1,
    userUuid: 'userUuid',
    lastName: 'roosta',
    firstName: 'pedram',
    fullName: 'pedram roosta',
    email: 'pediroosta@gmail.com',
    role: 'role',
    isAdmin: false,
  );
}
