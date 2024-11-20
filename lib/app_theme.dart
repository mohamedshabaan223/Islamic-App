import 'package:flutter/material.dart';

class AppTheme {
  static const Color  primayLight = Color(0xFFB7935F);
   static const Color  black = Color(0xFF242424);
    static const Color  white = Color(0xFFF8F8F8);
     static const Color  primayDark = Color(0xFF141A2E);
     static const Color  gold = Color(0xFFFACC1D);
  static ThemeData lightMode = ThemeData(
    primaryColor: primayLight,
     appBarTheme: AppBarTheme(
      backgroundColor: Colors.transparent,
      foregroundColor: black,
      centerTitle: true,
      titleTextStyle: TextStyle(fontSize: 30,
      fontWeight: FontWeight.bold,
      color: black,
      ),
    ),
    textTheme: TextTheme(
      headlineLarge: TextStyle(
        fontSize: 25,
        fontWeight: FontWeight.w600,
        color: black,
      ),
      titleLarge: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.w400,
        color: black,
      )
    ),
    dividerTheme: DividerThemeData(
      color: primayLight,
      thickness: 2.5,
      
    ),
    scaffoldBackgroundColor: Colors.transparent,
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      type: BottomNavigationBarType.fixed,
      backgroundColor: primayLight,
      selectedItemColor:black,
      unselectedItemColor: white,

    )
    
    
  );
  
  static ThemeData darkMode = ThemeData(
    primaryColor: primayDark,
     appBarTheme: AppBarTheme(
      foregroundColor: white,
      backgroundColor: Colors.transparent,
      centerTitle: true,
      titleTextStyle: TextStyle(fontSize: 30,
      fontWeight: FontWeight.bold,
      color:white,
      ),
    ),
    textTheme: TextTheme(
      headlineLarge: TextStyle(
        fontSize: 25,
        fontWeight: FontWeight.w600,
        color: white,
      ),
      titleLarge: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.w400,
        color: gold,
      )
    ),
    dividerTheme: DividerThemeData(
      color: gold,
      thickness: 2.5,
      
    ),
    scaffoldBackgroundColor: Colors.transparent,
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      type: BottomNavigationBarType.fixed,
      backgroundColor: primayDark,
      selectedItemColor:gold,
      unselectedItemColor: white,

    )
    
    
  );
  
  
}