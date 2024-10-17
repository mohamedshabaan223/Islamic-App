import 'package:flutter/material.dart';
import 'package:islami_app/hadeth/hadeth_tab.dart';
import 'package:islami_app/quran/quran_content_screen.dart';
import 'package:islami_app/quran/quran_tab.dart';
import 'package:islami_app/radio/radio_tab.dart';
import 'package:islami_app/sebha/sebha_tab.dart';
import 'package:islami_app/settings/settings_tab.dart';

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
      return Container(
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage('assets/images/bg3.png'),
          fit: BoxFit.fill)
        ),
        child: Scaffold(
          body: tabes[currentIndex],
          appBar: AppBar(title: Text('اسلامى'),),
          bottomNavigationBar: BottomNavigationBar(
            currentIndex:currentIndex,
            onTap:(index){
             currentIndex =index;
             setState(() {
               
             });
            }
            ,items: [
            BottomNavigationBarItem(icon: ImageIcon(AssetImage('assets/images/quran.png')),
            label:'quran'
          ), BottomNavigationBarItem(icon: ImageIcon(AssetImage('assets/images/hadeth.png')),
            label:'hadeth'
          ), BottomNavigationBarItem(icon: ImageIcon(AssetImage('assets/images/radio.png')),
            label:'radio'
          ), BottomNavigationBarItem(icon: ImageIcon(AssetImage('assets/images/sebha.png')),
            label:'sebha'
          ), BottomNavigationBarItem(icon:Icon(Icons.settings_outlined),
          label: 'settings'),
          ]),
            ),
      );
  }
}