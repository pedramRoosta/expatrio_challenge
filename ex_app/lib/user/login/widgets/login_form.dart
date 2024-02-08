import 'package:ex_app/common/widgets/ex_cta_button.dart';
import 'package:ex_app/common/widgets/ex_text_form_field.dart';
import 'package:ex_app/user/bloc/user_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final _formKey = GlobalKey<FormState>();
  final emailTextController = TextEditingController();
  final passwordTextController = TextEditingController();
  bool _isFormValid = false;
  @override
  Widget build(BuildContext context) {
    emailTextController.text = 'tito+bs792@expatrio.com';
    passwordTextController.text = 'nemampojma';
    return Form(
      key: _formKey,
      onChanged: () {
        setState(() {
          _isFormValid = _formKey.currentState?.validate() ?? false;
        });
      },
      child: Column(
        children: <Widget>[
          ExTextFormField(
            controller: emailTextController,
            textFieldType: TextFieldType.email,
            validationMessage: 'Please enter a valid email address.',
          ),
          ExTextFormField(
            controller: passwordTextController,
            textFieldType: TextFieldType.password,
          ),
          ExCtaButton(
            title: 'LOGIN',
            onPressed: _isFormValid
                ? () {
                    if (_formKey.currentState!.validate()) {
                      // If the form is valid, display a snackbar. In the real world,
                      // you'd often call a server or save the information in a database.
                      context.read<UserBloc>().add(
                            UserEvent.login(
                              email: emailTextController.text,
                              password: passwordTextController.text,
                            ),
                          );
                    }
                  }
                : null,
          )
        ],
      ),
    );
  }
}
