import 'package:ex_app/common/util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

enum TextFieldType { email, password, text }

class ExTextField extends StatefulWidget {
  const ExTextField({
    required this.name,
    this.onChange,
    this.controller,
    this.textFieldType = TextFieldType.text,
    this.keyboardType,
    this.validationMessage = 'Please check your data and try again.',
    this.initialValue,
    this.title,
    super.key,
  });

  final TextEditingController? controller;
  final TextInputType? keyboardType;
  final TextFieldType textFieldType;
  final String validationMessage;
  final String? initialValue;
  final String? title;
  final String name;
  final void Function(String?)? onChange;
  @override
  State<ExTextField> createState() => _ExTextFieldState();
}

class _ExTextFieldState extends State<ExTextField> {
  bool _passwordVisible = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (widget.textFieldType != TextFieldType.text)
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
        if (widget.title != null)
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: Text(
              widget.title!,
              style: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        FormBuilderTextField(
          onChanged: widget.onChange,
          name: widget.name,
          initialValue: widget.initialValue,
          controller: widget.controller,
          keyboardType: widget.keyboardType,
          obscureText: widget.textFieldType == TextFieldType.password &&
              !_passwordVisible,
          validator: (value) {
            if (widget.textFieldType == TextFieldType.email) {
              return Util.emailValidator(value);
            } else if (widget.textFieldType == TextFieldType.password) {
              return Util.passwordValidator(value);
            } else {
              if (value == null || value.isEmpty) {
                return 'Please enter your data';
              }
              return null;
            }
          },
          decoration: InputDecoration(
            suffixIcon: widget.textFieldType == TextFieldType.password
                ? IconButton(
                    icon: Icon(
                      // Based on passwordVisible state choose the icon
                      _passwordVisible
                          ? Icons.visibility
                          : Icons.visibility_off,
                      color: Theme.of(context).primaryColorDark,
                    ),
                    onPressed: () {
                      setState(() {
                        _passwordVisible = !_passwordVisible;
                      });
                    },
                  )
                : null,
            isDense: true,
            border: const OutlineInputBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(7),
              ),
            ),
          ),
        ),
      ],
    );
  }

  IconData? getIcon() {
    switch (widget.textFieldType) {
      case TextFieldType.email:
        return Icons.email_outlined;
      case TextFieldType.password:
        return Icons.lock_clock_outlined;
      case TextFieldType.text:
        return null;
    }
  }

  String getTitle() {
    switch (widget.textFieldType) {
      case TextFieldType.email:
        return 'EMAIL ADDRESS';
      case TextFieldType.password:
        return 'PASSWORD';
      case TextFieldType.text:
        return '';
    }
  }
}
