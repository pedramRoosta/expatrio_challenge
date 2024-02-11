import 'package:bloc_test/bloc_test.dart';
import 'package:ex_app/service/secure_storage.dart';
import 'package:ex_app/service/user_service.dart';
import 'package:ex_app/user/bloc/user_bloc.dart';
import 'package:ex_app/user/models/user/user.dart';
import 'package:ex_app/user/models/user_tax_data/user_tax_data.dart';
import 'package:mocktail/mocktail.dart';

class UserBlocMock extends MockBloc<UserEvent, UserState> implements UserBloc {}

class UserServiceMock extends Mock implements IUserService {}

class SecureStorageMock extends Mock implements ISecureStorageService {}

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
  static const taxData = UserTaxData(
    usPerson: true,
    primaryTaxResidence: UserTax(
      country: 'US',
      id: '13',
    ),
    secondaryTaxResidence: [],
  );
}
