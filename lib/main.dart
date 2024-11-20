import 'package:flutter/material.dart';
import 'package:islami_app/app_theme.dart';
import 'package:islami_app/hadeth/hadeth_content_screen.dart';
import 'package:islami_app/home_screen.dart';
import 'package:islami_app/quran/quran_content_screen.dart';
import 'package:islami_app/settings/setting_provider.dart';
import 'package:provider/provider.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

void main() {
  runApp(
  
ChangeNotifierProvider(
  create: (context) => SettingProvider()
  ,child: IslamiApp()));
}
class IslamiApp extends StatelessWidget {
  const IslamiApp({super.key});

  @override
  Widget build(BuildContext context) {
    SettingProvider settingProvider = Provider.of<SettingProvider>(context);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes:
      {HomeScreen.routeName:(_) => HomeScreen(),
      QuranContentScreen.routeName:(context) => QuranContentScreen(),
      HadethContentScreen.routeName:(__) =>HadethContentScreen(),
     },
      initialRoute: HomeScreen.routeName,
      theme:AppTheme.lightMode,
      darkTheme: AppTheme.darkMode,
      themeMode: settingProvider.themeMode,
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
     
  locale: Locale(settingProvider.code),
    ); 
  }
}
