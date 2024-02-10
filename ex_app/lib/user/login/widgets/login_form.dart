import 'package:ex_app/common/constants.dart';
import 'package:ex_app/common/widgets/ex_cta_button.dart';
import 'package:ex_app/common/widgets/ex_text_form_field.dart';
import 'package:ex_app/user/bloc/user_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final _formKey = GlobalKey<FormBuilderState>();
  final emailTextController = TextEditingController();
  final passwordTextController = TextEditingController();
  bool _isFormValid = false;
  @override
  Widget build(BuildContext context) {
    return FormBuilder(
      key: _formKey,
      onChanged: () {
        _isFormValid = _formKey.currentState?.validate() ?? false;
        setState(() {});
      },
      child: Column(
        children: <Widget>[
          ExTextField(
            key: const Key(KeyConstants.loginEmailField),
            name: StringConstants.email,
            controller: emailTextController,
            textFieldType: TextFieldType.email,
            validationMessage: StringConstants.validEmailMessage,
          ),
          ExTextField(
            key: const Key(KeyConstants.loginPasswordField),
            name: 'password',
            controller: passwordTextController,
            textFieldType: TextFieldType.password,
          ),
          ExCtaButton(
            key: const Key(KeyConstants.loginBtn),
            title: StringConstants.loginBtn,
            onPressed: _isFormValid
                ? () {
                    if (_formKey.currentState!.validate()) {
                      context.read<UserBloc>().add(
                            UserEvent.login(
                              email: emailTextController.text,
                              password: passwordTextController.text,
                            ),
                          );
                    }
                  }
                : null,
          ),
          ExCtaButton(
            title: 'SET CREDENTIALS (just for testing)',
            onPressed: () {
              emailTextController.text = 'tito+bs792@expatrio.com';
              passwordTextController.text = 'nemampojma';
              setState(() {});
            },
          )
        ],
      ),
    );
  }
}
