import 'package:bloc_test/bloc_test.dart';
import 'package:ex_app/service/secure_storage.dart';
import 'package:ex_app/service/user_service.dart';
import 'package:ex_app/user/bloc/user_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:get_it/get_it.dart';
import 'package:mocktail/mocktail.dart';

import 'mocks.dart';

void main() {
  final mockuserService = UserServiceMock();
  final mocksecureStorage = SecureStorageMock();

  group('customer bloc tests', () {
    setUpAll(() async {
      GetIt.I.registerSingleton<IUserService>(mockuserService);
      GetIt.I.registerSingleton<ISecureStorageService>(mocksecureStorage);

      await GetIt.I.allReady();
    });

    tearDownAll(() {
      GetIt.I.reset();
    });

    blocTest<UserBloc, UserState>(
      'If userService login method returns a user, login is susccessful',
      setUp: () {
        when(
          () => mockuserService.login(
            email: any(named: 'email'),
            password: any(named: 'password'),
          ),
        ).thenAnswer((_) async {
          return MockData.user;
        });

        when(() => mockuserService.getUserTaxData(userId: MockData.user.userId))
            .thenAnswer((_) async {
          return MockData.taxData;
        });
      },
      build: () => UserBloc(),
      seed: () => UserState(),
      act: (bloc) => bloc.add(
        const UserEvent.login(
          email: 'email',
          password: 'password',
        ),
      ),
      expect: () => [
        UserState(isLoading: true, userError: null),
        UserState(
          isLoading: false,
          user: MockData.user.copyWith(userTaxData: MockData.taxData),
        ),
      ],
    );

    blocTest<UserBloc, UserState>(
      'If userService login method returns an exception, login should return an error',
      setUp: () {
        when(
          () => mockuserService.login(
            email: any(named: 'email'),
            password: any(named: 'password'),
          ),
        ).thenThrow((_) async {
          Exception('error');
        });
      },
      build: () => UserBloc(),
      seed: () => UserState(),
      act: (bloc) => bloc.add(
        const UserEvent.login(
          email: 'email',
          password: 'password',
        ),
      ),
      expect: () => [
        UserState(isLoading: true, userError: null),
        UserState(
          isLoading: false,
          userError: 'Error logging in. Please try again.',
        ),
      ],
    );

    blocTest<UserBloc, UserState>(
      'UpdateTaxInfo event should update the user tax data',
      setUp: () {
        when(
          () => mockuserService.updateUserTaxData(
            userId: any(named: 'userId'),
            data: any(named: 'data'),
          ),
        ).thenAnswer((_) async {});
        when(
          () => mockuserService.getUserTaxData(
            userId: any(named: 'userId'),
          ),
        ).thenAnswer((_) async {
          return MockData.taxData;
        });
      },
      build: () => UserBloc(),
      seed: () => UserState(user: MockData.user),
      act: (bloc) => bloc.add(
        const UserEvent.updateTaxInfo(taxData: {}),
      ),
      expect: () => [
        UserState(
          isLoading: true,
          userError: null,
          user: MockData.user,
        ),
        UserState(
          isLoading: false,
          user: MockData.user.copyWith(
            userTaxData: MockData.taxData,
          ),
        ),
      ],
    );
    blocTest<UserBloc, UserState>(
      'UpdateTaxInfo returns an error if the update fails',
      setUp: () {
        when(
          () => mockuserService.updateUserTaxData(
            userId: any(named: 'userId'),
            data: any(named: 'data'),
          ),
        ).thenThrow((_) async {
          Exception('error');
        });
        when(
          () => mockuserService.getUserTaxData(
            userId: any(named: 'userId'),
          ),
        ).thenThrow((_) async {
          Exception('error');
        });
      },
      build: () => UserBloc(),
      seed: () => UserState(user: MockData.user),
      act: (bloc) => bloc.add(
        const UserEvent.updateTaxInfo(taxData: {}),
      ),
      expect: () => [
        UserState(
          isLoading: true,
          userError: null,
          user: MockData.user,
        ),
        UserState(
          isLoading: false,
          userError: 'Error updating the tax info. Please try again.',
          user: MockData.user,
        ),
      ],
    );
  });
}
