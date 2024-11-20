import 'package:flutter/material.dart';
import 'package:islami_app/app_theme.dart';
import 'package:islami_app/settings/setting_provider.dart';
import 'package:provider/provider.dart';

class SebhaTab extends StatefulWidget {
  @override
  State<SebhaTab> createState() => _SebhaTabState();
}

class _SebhaTabState extends State<SebhaTab> {
 
  int counter =0;
  int index = 0 ; 
  double angle = 0;
  List<String> zekr = [
    'سبحان الله',
    ' الحمد الله ',
    ' الله اكبر'
  ];

  
  @override
  Widget build(BuildContext context) {
    SettingProvider settingProvider = Provider.of<SettingProvider>(context);
     double width = MediaQuery.of(context).size.width ;
     double height = MediaQuery.of(context).size.height;
    return Scaffold(
        body: Padding(
          padding: const EdgeInsets.only(left: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center
            ,children: [Stack(
              alignment: Alignment.topCenter,
                children: [
                  Padding(
                    padding:  EdgeInsets.only(left: width * 0.08),
                    child: Image.asset(settingProvider.isDark? 'assets/images/head of seb7a.png' :
                    'assets/images/head of seb7a-light.png'),
                  ),
                  Padding(
                    padding:  EdgeInsets.only(top: height * 0.033),
                    child: InkWell(
                      onTap: oncliked,
                      child: Transform.rotate(
                        angle: angle,
                        child: Image.asset(
                          settingProvider.isDark?'assets/images/seb7a-dark.png' 
                        : 'assets/images/seb7a-light.png'),
                      )),
                  )
                ],
              ),
              SizedBox(height: height*0.02),
             Text('عدد التسبيحات',
             style: Theme.of(context).textTheme.headlineLarge,
             ),
             SizedBox(height: height *0.03,),
             Container(
              padding: EdgeInsets.symmetric(horizontal: 20 , vertical: 10),
              decoration: BoxDecoration(
                color: settingProvider.isDark ? AppTheme.primayDark : AppTheme.primayLight.withOpacity(0.57),
                borderRadius: BorderRadius.circular(25)
              ),
              child: Text(counter.toString() ,
              style: Theme.of(context).textTheme.titleLarge?.copyWith(color: AppTheme.white),),
             
             ),
              SizedBox(height: height*0.03),
              
              ElevatedButton(onPressed: oncliked, child: Text(zekr[index] , style: Theme.of(context).textTheme.headlineLarge?.copyWith(color: AppTheme.white),) ,
              style:ElevatedButton.styleFrom(
                backgroundColor:settingProvider.isDark ? AppTheme.gold :AppTheme.primayLight
              ) ,
              ),
              ]),
           
              ),
              );           
        
  }
  void oncliked(){
   if (counter < 33){
    counter++;
   }else{
    counter=0;
    index++;
    if(index == zekr.length){
      index =0;
     
    }
   }
    angle +=15;
   setState(() {
   });
   
  }
}