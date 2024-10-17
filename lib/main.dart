import 'package:flutter/material.dart';
import 'package:islami_app/app_theme.dart';
import 'package:islami_app/home_screen.dart';
import 'package:islami_app/quran/quran_content_screen.dart';

void main() {
  runApp( IslamiApp());
}
class IslamiApp extends StatelessWidget {
  const IslamiApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes:
      {HomeScreen.routeName:(_) => HomeScreen(),
      QuranContentScreen.routeName:(context) => QuranContentScreen(),
     },
      initialRoute: HomeScreen.routeName,
      theme:AppTheme.lightMode,
    );
  }
}
