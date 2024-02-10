import 'package:ex_app/common/constants.dart';
import 'package:ex_app/user/bloc/user_bloc.dart';
import 'package:ex_app/user/login/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

import 'mocks.dart';

void main() {
  testWidgets('Verify email,password and login button are present in the UI.',
      (WidgetTester tester) async {
    final userBlocMock = UserBlocMock();
    when(() => userBlocMock.state).thenReturn(
      UserState(user: MockData.user),
    );
    await pumpWidget(
      tester,
      const LoginScreen(),
      userBlocMock,
    );

    expect(find.byKey(const Key(KeyConstants.loginEmailField)), findsOneWidget);
    expect(
        find.byKey(const Key(KeyConstants.loginPasswordField)), findsOneWidget);
    expect(find.byKey(const Key(KeyConstants.loginBtn)), findsOneWidget);
  });
}

Future<void> pumpWidget(
  WidgetTester tester,
  Widget widget,
  UserBloc userbloc,
) async {
  await tester.pumpWidget(
    MaterialApp(
      home: BlocProvider(
        create: (context) => userbloc,
        child: widget,
      ),
    ),
  );
  await tester.pumpAndSettle();
}
