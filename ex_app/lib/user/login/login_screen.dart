import 'package:ex_app/common/constants.dart';
import 'package:ex_app/common/modal_helper.dart';
import 'package:ex_app/service/router.dart';
import 'package:ex_app/user/bloc/user_bloc.dart';
import 'package:ex_app/user/login/widgets/login_form.dart';
import 'package:ex_app/user/login/widgets/login_successful_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          BlocListener<UserBloc, UserState>(
            listener: (context, state) {
              if (state.user != null) {
                ModalHelper.show(
                    context: context,
                    child: const LoginSuccessfulWidget(),
                    onAccept: () => context.go(Routes.editTax.path),
                    acceptButtonText: 'GOT IT');
              } else if (state.userError != null) {
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                  content: Text(state.userError!),
                ));
              }
            },
            child: Container(),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Image.asset(
              AssetConstants.studyingGirl.path,
            ),
          ),
          SafeArea(
            child: Container(
              margin: const EdgeInsets.symmetric(
                vertical: 40.0,
                horizontal: 50,
              ),
              child: Column(
                children: [
                  Image.asset(
                    AssetConstants.logo.path,
                    width: 250,
                  ),
                  const LoginForm(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
