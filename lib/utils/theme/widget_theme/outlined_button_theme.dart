
import 'package:flutter/material.dart';

class TOutlinedButtonTheme{
  TOutlinedButtonTheme._();

  static final lightOutlineButtonTheme = OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
        shape: const RoundedRectangleBorder(),
        foregroundColor: Colors.black,
        side: const BorderSide(color: Colors.black87),
        padding: const EdgeInsets.symmetric(vertical: 16)
    ),

  );

  static final darkOutlineButtonTheme = OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
        shape: const RoundedRectangleBorder(),
        foregroundColor: Colors.white,
        side: const BorderSide(color: Colors.white),
        padding: const EdgeInsets.symmetric(vertical: 16)
    ),
  );

}