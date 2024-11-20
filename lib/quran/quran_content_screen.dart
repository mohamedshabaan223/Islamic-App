import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami_app/app_theme.dart';
import 'package:islami_app/loading_circular.dart';
import 'package:islami_app/quran/quran_tab.dart';
import 'package:islami_app/settings/setting_provider.dart';
import 'package:provider/provider.dart';

class QuranContentScreen extends StatefulWidget {
 static const String routeName='/sura-content';

  @override
  State<QuranContentScreen> createState() => _QuranContentScreenState();
}

class _QuranContentScreenState extends State<QuranContentScreen> {
  @override
  List<String> suraList=[];
  late SuraContent sura;

  Widget build(BuildContext context) {
    SettingProvider settingProvider = Provider.of<SettingProvider>(context);
 sura =ModalRoute.of(context)!.settings.arguments as SuraContent ;
  if(suraList.isEmpty) loadSuraFile();
 return Container(
      decoration: BoxDecoration(
        image: DecorationImage(image: 
       AssetImage('assets/images/${settingProvider.backgroundImage}.png'),
       fit: BoxFit.fill)
      ),
      child: Scaffold(
        appBar: AppBar(title: Text(
          'اسلامى',
          style: Theme.of(context).textTheme.headlineLarge,
          textAlign: TextAlign.center,
        ),),
        body: Container(
          margin: EdgeInsets.symmetric(horizontal: 25,
         vertical:MediaQuery.sizeOf(context).height* 0.07 ),
        decoration: BoxDecoration(
          color: settingProvider.isDark ? AppTheme.primayDark : AppTheme.white,
          borderRadius: BorderRadius.circular(25),
        ),
      child:  Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Text(sura.name , 
            style: Theme.of(context).textTheme.headlineLarge,
            textAlign: TextAlign.center,),
          ),
          Divider(indent: MediaQuery.sizeOf(context).width * 0.1,
          endIndent:MediaQuery.sizeOf(context).width * 0.1 ,),
          Expanded(
            child:suraList.isEmpty?
            LoadingCircular():
             ListView.builder(itemBuilder: (context , index) =>
               Text(suraList[index] ,
               style: Theme.of(context).textTheme.titleLarge,
               textAlign: TextAlign.center,),
               itemCount: suraList.length,
               
            ),
            
          )
        ],
      ),
      )
      ),);
  }

  Future<void> loadSuraFile() async {
    await Future.delayed(Duration(seconds: 2));
    String suraName = await rootBundle.loadString('assets/text/${sura.index+1}.txt');
    suraList=suraName.split('\n');
    setState(() {
      
    });
    
}}