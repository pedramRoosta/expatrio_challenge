import 'package:ex_app/service/router.dart';
import 'package:ex_app/service/service_locator.dart';
import 'package:ex_app/user/bloc/user_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  ServiceLocator.setup();
  runApp(
    BlocProvider(
      create: (context) => UserBloc(),
      child: const Home(),
    ),
  );
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Expatrio App',
      routerConfig: router,
    );
  }
}
