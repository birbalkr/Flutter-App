

import 'package:flutter/material.dart';

class TElevatedButtonThem{
  TElevatedButtonThem._();

  static final lightOutlineButtonTheme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(),
        foregroundColor: Colors.white,
        backgroundColor: Colors.black54,
        side: BorderSide(color: Colors.black54),
        padding: EdgeInsets.symmetric(vertical: 16)
    ),
  );

  static final darkOutlineButtonTheme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(),
        foregroundColor: Colors.black54,
        backgroundColor: Colors.white,
        side: BorderSide(color: Colors.white),
        padding: EdgeInsets.symmetric(vertical: 16)
    ),
  );
}