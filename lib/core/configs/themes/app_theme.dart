import 'package:flutter/material.dart';
import 'package:spotify/core/configs/themes/app_color.dart';

class AppTheme{
  static final lightTheme=ThemeData(
    primaryColor: AppColors.primary,
    fontFamily: 'Satoshi',
    brightness: Brightness.light,
    scaffoldBackgroundColor: AppColors.lightBackground,
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.primary,
        foregroundColor: Colors.white,
        textStyle: TextStyle(
          fontWeight:FontWeight.bold,
          fontSize: 20,

        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30)
        )
      )
    )
  );



  static final darkTheme=ThemeData(
      primaryColor: AppColors.primary,
      brightness: Brightness.dark,
      fontFamily: 'Satoshi',
      scaffoldBackgroundColor: AppColors.darkBackground,
      elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
              backgroundColor: AppColors.primary,
              textStyle: TextStyle(
                fontWeight:FontWeight.bold,
                fontSize: 20,

              ),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30)
              )
          )
      )
  );
}