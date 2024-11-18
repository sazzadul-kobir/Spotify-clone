import 'package:flutter/material.dart';
import 'package:spotify/core/configs/themes/app_color.dart';

class AppTheme{
  static final lightTheme=ThemeData(
    primaryColor: AppColors.primary,
    fontFamily: 'Satoshi',
    brightness: Brightness.light,
    scaffoldBackgroundColor: AppColors.lightBackground,

      inputDecorationTheme: InputDecorationTheme(
        hintStyle: TextStyle(
          color: Color(0xff383838),
          fontWeight: FontWeight.w500
        ),
        filled: true,
        fillColor: Colors.transparent,
        contentPadding: EdgeInsets.all(20),
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            borderSide: BorderSide(
                color: Colors.black,
                width: 0.4
            )
        ),
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            borderSide: BorderSide(
                color: Colors.black,
                width: 0.4
            )
        ),
      ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.primary,
        foregroundColor: Colors.white,

        textStyle: TextStyle(
          fontWeight:FontWeight.bold,
          fontSize: 16,

        ),
        elevation: 0,
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

      inputDecorationTheme: InputDecorationTheme(
        hintStyle: TextStyle(
          color: Color(0xffA7A7A7),
          fontWeight: FontWeight.w500
        ),
          filled: true,
          fillColor: Colors.transparent,
          contentPadding: EdgeInsets.all(20),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
            borderSide: BorderSide(
              color: Colors.white,
              width: 0.4
            )
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            borderSide: BorderSide(
                color: Colors.white,
                width: 0.4
            )
        ),
      ),

      elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
              backgroundColor: AppColors.primary,
              foregroundColor: Colors.white,
              textStyle: TextStyle(
                fontWeight:FontWeight.bold,
                fontSize: 16,

              ),
              elevation: 0,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30)
              )
          )
      )
  );
}