import 'package:ex_app/common/util.dart';
import 'package:flutter/material.dart';

enum TextFieldType { email, password, text }

class ExTextFormField extends StatelessWidget {
  const ExTextFormField({
    this.controller,
    this.textFieldType = TextFieldType.text,
    this.keyboardType,
    this.validationMessage = 'Please check your data and try again.',
    super.key,
  });

  final TextEditingController? controller;
  final TextInputType? keyboardType;
  final TextFieldType textFieldType;
  final String validationMessage;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Column(
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: Icon(
                  getIcon(),
                  size: 21,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: Text(
                  getTitle(),
                  style: const TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ],
          ),
          TextFormField(
            controller: controller,
            keyboardType: keyboardType,
            obscureText: textFieldType == TextFieldType.password,
            validator: (value) {
              if (textFieldType == TextFieldType.email) {
                return Util.emailValidator(value);
              } else {
                return Util.passwordValidator(value);
              }
            },
            decoration: const InputDecoration(
              isDense: true,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(7),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  IconData? getIcon() {
    switch (textFieldType) {
      case TextFieldType.email:
        return Icons.email_outlined;
      case TextFieldType.password:
        return Icons.lock_clock_outlined;
      case TextFieldType.text:
        return null;
    }
  }

  String getTitle() {
    switch (textFieldType) {
      case TextFieldType.email:
        return 'EMAIL ADDRESS';
      case TextFieldType.password:
        return 'PASSWORD';
      case TextFieldType.text:
        return '';
    }
  }
}
