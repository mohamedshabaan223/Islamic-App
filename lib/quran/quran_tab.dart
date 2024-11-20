import 'package:flutter/material.dart';
import 'package:islami_app/quran/quran_content_screen.dart';
import 'package:islami_app/settings/setting_provider.dart';
import 'package:provider/provider.dart';

class QuranTab extends StatelessWidget {
  List<String> suraName=["الفاتحه","البقرة","آل عمران","النساء","المائدة","الأنعام","الأعراف","الأنفال","التوبة","يونس","هود"
    ,"يوسف","الرعد","إبراهيم","الحجر","النحل","الإسراء","الكهف","مريم","طه","الأنبياء","الحج","المؤمنون"
    ,"النّور","الفرقان","الشعراء","النّمل","القصص","العنكبوت","الرّوم","لقمان","السجدة","الأحزاب","سبأ"
    ,"فاطر","يس","الصافات","ص","الزمر","غافر","فصّلت","الشورى","الزخرف","الدّخان","الجاثية","الأحقاف"
    ,"محمد","الفتح","الحجرات","ق","الذاريات","الطور","النجم","القمر","الرحمن","الواقعة","الحديد","المجادلة"
    ,"الحشر","الممتحنة","الصف","الجمعة","المنافقون","التغابن","الطلاق","التحريم","الملك","القلم","الحاقة","المعارج"
    ,"نوح","الجن","المزّمّل","المدّثر","القيامة","الإنسان","المرسلات","النبأ","النازعات","عبس","التكوير","الإنفطار"
    ,"المطفّفين","الإنشقاق","البروج","الطارق","الأعلى","الغاشية","الفجر","البلد","الشمس","الليل","الضحى","الشرح"
    ,"التين","العلق","القدر","البينة","الزلزلة","العاديات","القارعة","التكاثر","العصر",
    "الهمزة","الفيل","قريش","الماعون","الكوثر","الكافرون","النصر","المسد","الإخلاص","الفلق","الناس"
  ];

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        body: Column(children: [
          Image.asset('assets/images/quran_header_icn.png'),
          Divider(),
          Text('اسم السورة',
          style: Theme.of(context).textTheme.headlineLarge,),
          Divider(),
          Expanded(child: 
          ListView.separated(itemBuilder:(context,index)=>
          InkWell(
            onTap: (){
              Navigator.of(context).pushNamed(QuranContentScreen.routeName,
              arguments: SuraContent(name: suraName[index], index: index));
            },
            child: Text(suraName[index],
            style: Theme.of(context).textTheme.headlineLarge,
            textAlign: TextAlign.center,
            ),
          ),
          itemCount: suraName.length,
          separatorBuilder:(context, index) =>SizedBox(height: 10,),
          ),
          )
        ],),
      );
}}
class SuraContent{
  String name;
  int index;
  SuraContent({required this.name , required this.index});
}