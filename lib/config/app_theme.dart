import 'package:flutter/material.dart';

class PixelFieldTheme {

   static ThemeData primaryThemeData = themeData(pixelfieldColorScheme,pixelfieldTextTheme);


   static ColorScheme pixelfieldColorScheme = const ColorScheme(
    surface: Color(0xff0B1519),
    onSurface: Color(0xff0E1C21),
    brightness: Brightness.light, 
    primary: Color(0xff122329), 
    onPrimary: Colors.white, 
    primaryContainer: Color(0xffD49A00),
    secondary: Color(0xff899194), 
    onSecondary: Color(0xffE7E9EA), 
    //
    error: Color(0xff0B1519), 
    onError: Color(0xff0B1519)
    );

    
   static TextTheme pixelfieldTextTheme = const TextTheme(
     headlineLarge: TextStyle(
      fontSize: 34
     ),
     headlineMedium:TextStyle(
      fontSize: 32
     ),
     headlineSmall: TextStyle(
      fontSize: 18
     ),
     bodyLarge: TextStyle(
      fontSize: 16,
     ),
     bodyMedium: TextStyle(
      fontSize: 12,
     )
   ); 

   static ThemeData themeData(ColorScheme colorScheme,TextTheme textTheme) {
    return ThemeData(
      colorScheme: colorScheme,
      textTheme: textTheme
    );
  }
}