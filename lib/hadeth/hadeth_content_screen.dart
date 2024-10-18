import 'package:flutter/material.dart';
import 'package:islami_app/app_theme.dart';
import 'package:islami_app/hadeth/hadeth_class.dart';

class HadethContentScreen extends StatelessWidget {
 static const String routeName='/hadeth-content';

  @override
  Widget build(BuildContext context) {
    Hadeth hadeth =ModalRoute.of(context)!.settings.arguments as Hadeth;
    return Container(
      decoration: BoxDecoration(image: DecorationImage(image: AssetImage('assets/images/bg3.png'))),
      child: Scaffold(
        appBar: AppBar(title: Text(hadeth.title , 
        style: Theme.of(context).textTheme.headlineLarge,),),
        body: Container(
        margin: EdgeInsets.symmetric(horizontal: 25,
         vertical:MediaQuery.sizeOf(context).height* 0.07 ),
         padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: AppTheme.white,
          borderRadius: BorderRadius.circular(25),
        ),
        
              child: ListView.builder(itemBuilder: (context , index) =>Text(
                hadeth.content[index],
                style: Theme.of(context).textTheme.titleLarge,
                textAlign: TextAlign.center,
              ),
              itemCount: hadeth.content.length,),
            ),
          
        
        ),
      );
  }
}