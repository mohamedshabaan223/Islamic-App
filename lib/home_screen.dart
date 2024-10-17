import 'package:flutter/material.dart';
import 'package:islami_app/hadeth/hadeth_content.dart';
import 'package:islami_app/quran/quran_content.dart';
import 'package:islami_app/radio/radio_content.dart';
import 'package:islami_app/sebha/sebha_content.dart';
import 'package:islami_app/settings/settings_content.dart';

class HomeScreen extends StatefulWidget {
static const String routeName='/home';


  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Widget> tabes=[
    QuranContent(),
    HadethContent(),
    RadioContent(),
    SebhaContent(),
    SettingsContent(),
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