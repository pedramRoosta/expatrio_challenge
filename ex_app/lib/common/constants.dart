import 'package:flutter/material.dart';

enum AssetConstants {
  logo('assets/images/logo.png'),
  cryingGirl('assets/images/crying_girl.svg'),
  studyingGirl('assets/images/studying_girl.png');

  const AssetConstants(this.path);
  final String path;
}

class ColorConst {
  static const primaryColor = Color.fromARGB(255, 67, 172, 161);
}
