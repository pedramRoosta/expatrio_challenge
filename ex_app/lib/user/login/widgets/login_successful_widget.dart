import 'package:ex_app/common/constants.dart';
import 'package:flutter/material.dart';

class LoginSuccessfulWidget extends StatelessWidget {
  const LoginSuccessfulWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Text(
          StringConstants.successfulLoginMessage,
          style: TextStyle(
            fontSize: 20,
          ),
        ),
        Text(
          StringConstants.successfulLoginExtraMessage,
          style: TextStyle(
            color: Colors.black,
          ),
        ),
      ],
    );
  }
}
