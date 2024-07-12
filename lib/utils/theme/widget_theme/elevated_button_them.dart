

import 'package:flutter/material.dart';

class TElevatedButtonThem{
  TElevatedButtonThem._();

  static final lightOutlineButtonTheme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
        shape: const RoundedRectangleBorder(),
        foregroundColor: Colors.white,
        backgroundColor: Colors.black54,
        side: const BorderSide(color: Colors.black54),
        padding: const EdgeInsets.symmetric(vertical: 16)
    ),
  );

  static final darkOutlineButtonTheme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
        shape: const RoundedRectangleBorder(),
        foregroundColor: Colors.black54,
        backgroundColor: Colors.white,
        side: const BorderSide(color: Colors.white),
        padding: const EdgeInsets.symmetric(vertical: 16)
    ),
  );
}