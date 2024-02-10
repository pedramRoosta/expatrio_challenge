import 'package:ex_app/user/login/login_screen.dart';
import 'package:ex_app/screen_template/base_screen.dart';
import 'package:ex_app/user/bloc/user_bloc.dart';
import 'package:ex_app/user/screen/user_dashboard.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

final router = GoRouter(
  initialLocation: Routes.login.path,
  routes: [
    ShellRoute(
      routes: shellRoutes,
      builder: (context, state, child) {
        return BaseScreen(child: child);
      },
    ),
    GoRoute(
      path: '/login',
      builder: (context, state) => const LoginScreen(),
    ),
  ],
  redirect: (context, state) async {
    final isUserLoggedIn = context.read<UserBloc>().state.isLoggedIn;
    if (isUserLoggedIn) {
      return Routes.editTax.path;
    }
    return Routes.login.path;
  },
);

enum Routes {
  login('/login'),
  editTax('/home');

  const Routes(this.path);
  final String path;
}

final shellRoutes = [
  GoRoute(
    path: '/home',
    builder: (context, state) => const EditTaxScreen(),
  ),
];
