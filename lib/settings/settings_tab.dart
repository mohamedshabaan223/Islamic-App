import 'package:flutter/material.dart';
import 'package:islami_app/app_theme.dart';
import 'package:islami_app/language.dart';
import 'package:islami_app/settings/setting_provider.dart';
import 'package:provider/provider.dart';

class SettingsTab extends StatefulWidget {
  @override
  State<SettingsTab> createState() => _SettingsTabState();
}

class _SettingsTabState extends State<SettingsTab> {
  List<Language> languages=[
    Language(languageName: 'English', LanguageCode: 'en'),
    Language(languageName: 'العربيه', LanguageCode: 'ar'),
  ];

  @override
  Widget build(BuildContext context) {
    SettingProvider settingProvider = Provider.of<SettingProvider>(context);
    return Scaffold(
     body: Padding(
       padding: const EdgeInsets.all(20.0),
       child: Column(children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Dark Theme' , style: Theme.of(context).textTheme.headlineLarge,),
            Switch(
              activeTrackColor:AppTheme.gold ,
              

             value: settingProvider.themeMode == ThemeMode.dark, 
            onChanged: (isDark) =>
            settingProvider.changeTheme(isDark ? ThemeMode.dark : ThemeMode.light),),
            
          ],
        ),
        SizedBox(height: 10,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
          Text('Select Language ' , style: Theme.of(context).textTheme.headlineLarge,),
          DropdownButtonHideUnderline(
            child: DropdownButton<Language>(
              value: languages.firstWhere((Language) => 
              Language.LanguageCode == settingProvider.code),
              items: 
              languages.map((Language) => 
              DropdownMenuItem(
          
                value: Language,
                child: Text(Language.languageName ,
                 style: Theme.of(context).textTheme.titleLarge,))).toList(),
               onChanged: (selectLanguage) {
                if(selectLanguage != null){
                 settingProvider.changeLanguage(selectLanguage.LanguageCode);
                }
                  
               },
               
               borderRadius: BorderRadius.circular(20),
               dropdownColor: settingProvider.isDark ? AppTheme.primayDark : AppTheme.white,
               ),
          )
        ],)
       ],),
     ),
    );
  }
}