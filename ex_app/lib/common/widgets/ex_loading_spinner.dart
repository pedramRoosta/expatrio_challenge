import 'package:flutter/material.dart';

class ExLoadingSpinner extends StatelessWidget {
  const ExLoadingSpinner({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey.withOpacity(0.5),
      child: const Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}
