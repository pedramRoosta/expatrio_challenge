import 'package:flutter/material.dart';

class LoginSuccessfulWidget extends StatelessWidget {
  const LoginSuccessfulWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Text(
          'Successful Login',
          style: TextStyle(
            fontSize: 20,
          ),
        ),
        Text(
          'You will be redirected to your dashboard',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
      ],
    );
  }
}
