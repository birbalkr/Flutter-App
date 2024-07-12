
import 'package:flutter/material.dart';

class TOutlinedButtonTheme{
  TOutlinedButtonTheme._();

  static final lightOutlineButtonTheme = OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
        shape: RoundedRectangleBorder(),
        foregroundColor: Colors.black,
        side: BorderSide(color: Colors.black87),
        padding: EdgeInsets.symmetric(vertical: 16)
    ),

  );

  static final darkOutlineButtonTheme = OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
        shape: RoundedRectangleBorder(),
        foregroundColor: Colors.white,
        side: BorderSide(color: Colors.white),
        padding: EdgeInsets.symmetric(vertical: 16)
    ),
  );

}