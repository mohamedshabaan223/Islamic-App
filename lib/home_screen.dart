import 'package:flutter/material.dart';
import 'package:islami_app/hadeth/hadeth_tab.dart';
import 'package:islami_app/quran/quran_content_screen.dart';
import 'package:islami_app/quran/quran_tab.dart';
import 'package:islami_app/radio/radio_tab.dart';
import 'package:islami_app/sebha/sebha_tab.dart';
import 'package:islami_app/settings/setting_provider.dart';
import 'package:islami_app/settings/settings_tab.dart';
import 'package:provider/provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class HomeScreen extends StatefulWidget {
static const String routeName='/home';


  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Widget> tabes=[
    QuranTab(),
    HadethTab(),
    RadioTab(),
    SebhaTab(),
    SettingsTab(),
  ];
  int currentIndex=0;
  @override
  Widget build(BuildContext context) {
      SettingProvider settingProvider = Provider.of<SettingProvider>(context);
      return Container(
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage('assets/images/${settingProvider.backgroundImage}.png'),
          fit: BoxFit.fill)
        ),
        child: Scaffold(
          body: tabes[currentIndex],
          appBar: AppBar(title: Text(AppLocalizations.of(context)!.islami)),
          bottomNavigationBar: BottomNavigationBar(
            currentIndex:currentIndex,
            onTap:(index){
             currentIndex =index;
             setState(() {
               
             });
            }
            ,items: [
            BottomNavigationBarItem(icon: ImageIcon(AssetImage('assets/images/quran.png')),
            label:AppLocalizations.of(context)!.quran,
          ), BottomNavigationBarItem(icon: ImageIcon(AssetImage('assets/images/hadeth.png')),
            label:AppLocalizations.of(context)!.hadeth,
          ), BottomNavigationBarItem(icon: ImageIcon(AssetImage('assets/images/radio.png')),
            label:AppLocalizations.of(context)!.radio,
          ), BottomNavigationBarItem(icon: ImageIcon(AssetImage('assets/images/sebha.png')),
            label:AppLocalizations.of(context)!.sebha,
          ), BottomNavigationBarItem(icon:Icon(Icons.settings_outlined),
          label: AppLocalizations.of(context)!.settings),
          ]),
            ),
      );
  }
}