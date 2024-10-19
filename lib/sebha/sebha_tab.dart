import 'package:flutter/material.dart';
import 'package:islami_app/app_theme.dart';

class SebhaTab extends StatefulWidget {
  @override
  State<SebhaTab> createState() => _SebhaTabState();
}

class _SebhaTabState extends State<SebhaTab> {
  int counter =0;
  
  @override
  Widget build(BuildContext context) {
    
    return Container(
        decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage('assets/images/bg3.png'),
        fit: BoxFit.fill)
      ),
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.only(left: 50),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center
            ,children: [
           InkWell(onTap: () {
             counter ++;
             
             setState(() {
               
             });
           },
            child: Image.asset('assets/images/Group 10.png')),
           SizedBox(height: MediaQuery.sizeOf(context).height * 0.06,),
             Text('عدد التسبيحات',
             style: Theme.of(context).textTheme.headlineLarge,
             ),
             SizedBox(height: 20,),
             Container(
              padding: EdgeInsets.symmetric(horizontal: 20 , vertical: 10),
              decoration: BoxDecoration(
                color: AppTheme.primayLight,
                borderRadius: BorderRadius.circular(25)
              ),
              child: Text(counter.toString() ,
              style: Theme.of(context).textTheme.titleLarge,),
             
             ),
              SizedBox(height: 20,),
              

      
             Container(padding: EdgeInsets.symmetric(horizontal: 20 , vertical: 10),
              decoration: BoxDecoration(
                color: AppTheme.primayLight,
                borderRadius: BorderRadius.circular(25)
              ),
          

              child: Text("سبحان الله",
              
              style: Theme.of(context).textTheme.titleLarge!.copyWith(color: AppTheme.white),
              
              ),

                
                 )
          ],
                ),
        ),),);
  }
}