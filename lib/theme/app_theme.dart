import 'package:flutter/material.dart';

class AppTheme {

  static Color primary = Colors.amber.shade800;

  //dark theme
  static final ThemeData darkTheme = ThemeData.dark().copyWith(

    //color primario
    primaryColor: primary,

    //AppBar Theme
    appBarTheme: AppBarTheme(
      color: primary, 
      elevation: 7
    ),

    //TextButton
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(
        primary: primary,
      ),
    ),

    //floatingActionButton
    floatingActionButtonTheme: FloatingActionButtonThemeData(
      backgroundColor: primary,
      elevation: 3,
    ),

    //ElevatedButton
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        primary: primary,
        shape: const StadiumBorder(),
        elevation: 3,
      ),
    ),

    //Input Text
    inputDecorationTheme: InputDecorationTheme(

      floatingLabelStyle: TextStyle( color: primary ),
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(color: primary),
        borderRadius: const BorderRadius.only(bottomLeft: Radius.circular(10), topRight: Radius.circular(10),),
      ),

      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(color: primary),
        borderRadius: const BorderRadius.only(bottomLeft: Radius.circular(10), topRight: Radius.circular(10),),
      ),

      border: const OutlineInputBorder(
        borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10), topRight: Radius.circular(10),),
      ),

    ),

  );


  //light theme 
  static final ThemeData lightTheme = ThemeData.light().copyWith(

    //color primario
    primaryColor: primary,

    //AppBar Theme
    appBarTheme: AppBarTheme(
      color: primary, 
      elevation: 7,
    ),
    //TextButton
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(
        primary: primary
      ),
    ),

    //floatingActionButton
    floatingActionButtonTheme: FloatingActionButtonThemeData(
      backgroundColor: primary,
      elevation: 3,
    ),

    //ElevatedButton
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        primary: primary,
        shape: const StadiumBorder(),
        elevation: 3,
      ),
    ),

    inputDecorationTheme: InputDecorationTheme(

      floatingLabelStyle: TextStyle( color: primary ),
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(color: primary),
        borderRadius: const BorderRadius.only(bottomLeft: Radius.circular(10), topRight: Radius.circular(10),),
      ),

      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(color: primary),
        borderRadius: const BorderRadius.only(bottomLeft: Radius.circular(10), topRight: Radius.circular(10),),
      ),

      border: const OutlineInputBorder(
        borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10), topRight: Radius.circular(10),),
      ),
      
    ),
  );
}
