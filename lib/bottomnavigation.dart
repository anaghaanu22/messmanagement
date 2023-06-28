import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mess_management/vote.dart';


import 'homescreen.dart';



class PageHome extends StatefulWidget {
  const PageHome({Key? key}) : super(key: key);

  @override
  State<PageHome> createState() => _PageHomeState();
}

class _PageHomeState extends State<PageHome> {
  int currentindex=0;
  final pages=[
    HomeScreen(),
    Vote(),

    
    
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(

    body:pages[currentindex],
    bottomNavigationBar:
       BottomNavigationBar(
      currentIndex: currentindex,
      onTap: (newIndex){
        setState(() {
          currentindex=newIndex;
        });
      },
      items: [

        BottomNavigationBarItem(icon: Icon(Icons.home ),
            label: "Home",
           
        ),
        BottomNavigationBarItem(icon: Icon(Icons.rate_review_sharp,),
          label: "vote",
          
        ),
      
      ],
    ),
    );
  }
}
