import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami_app/hadeth/hadeth_class.dart';
import 'package:islami_app/hadeth/hadeth_content_screen.dart';
import 'package:islami_app/loading_circular.dart';

class HadethTab extends StatefulWidget {
  @override
  State<HadethTab> createState() => _HadethTabState();
}

class _HadethTabState extends State<HadethTab> {
  List<Hadeth> ahadeth =[];

  @override
  Widget build(BuildContext context) {
    loadingHadethFile();
    return Container(
      decoration: BoxDecoration(image: DecorationImage(image: AssetImage('assets/images/bg3.png'))),
      child: Scaffold(body: Column(children: [
        Padding(
          padding: const EdgeInsets.all(30.0),
          child: Image.asset('assets/images/hadith_header.png'),
        ),
        Divider(),
        Text('احاديث', style: Theme.of(context).textTheme.headlineLarge,),
        Divider(),
        Expanded(child:
        ahadeth.isEmpty?
        LoadingCircular()
         :ListView.separated(itemBuilder: (context, index) =>InkWell(
          onTap: ()=>Navigator.of(context).pushNamed(HadethContentScreen.routeName,
          arguments: ahadeth[index]),
          child:
         Text(ahadeth[index].title,style: Theme.of(context).textTheme.titleLarge!.copyWith(fontWeight: FontWeight.w800),
         textAlign: TextAlign.center,),
         
         ),itemCount: ahadeth.length,
         separatorBuilder: (context , index) => SizedBox(height: 10,),
         ))
      ],),));
  }

  Future<void> loadingHadethFile() async {
    String hadethStrings = await rootBundle.loadString('assets/text/ahadeth.txt');
    List<String> ahadethStrings =hadethStrings.split('#');
    ahadeth =ahadethStrings.map((hadethString){
    List<String> hadethLines=hadethString.trim().split('\n');
      String title = hadethLines.first;
      List<String> content=hadethLines.sublist(1, hadethLines.length);
      return Hadeth(title, content);
    }).toList();
   setState(() {
     
   });
    
  }
}