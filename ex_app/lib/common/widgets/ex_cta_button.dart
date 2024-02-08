import 'package:flutter/material.dart';

class ExCtaButton extends StatelessWidget {
  const ExCtaButton({
    required this.title,
    this.onPressed,
    super.key,
  });

  final void Function()? onPressed;
  final String title;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15.0),
      child: SizedBox(
        width: double.maxFinite,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color.fromARGB(255, 67, 172, 161),
            foregroundColor: Colors.white,
          ),
          onPressed: onPressed,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 13.0),
            child: Text(title),
          ),
        ),
      ),
    );
  }
}
