import 'package:flutter/material.dart';
import 'package:mess_management/profile.dart';
import 'package:mess_management/rate.dart';


import 'attendance.dart';
import 'menu.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(actions: [
        IconButton(onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=>Profile()));
        }, icon: Icon(Icons.person))
      ],
      title: Text("Ambujam Mess",style: TextStyle(fontSize: 20,),),
      centerTitle: true,
     // backgroundColor: Color.fromARGB(255, 253, 197, 123) ,
      ),
      body: Center(
        child: ListView(children: [
          
           Padding(
             padding: const EdgeInsets.only(top: 25.0),
             child: Center(child: Text("Serving Now:",style: TextStyle(fontSize: 20),)),
           ),
           SizedBox(height: 10,),
            Center(child: Text("Sev Tamatar,Roti,Moong Dal,Fry Rice",style: TextStyle( color: Color.fromARGB(255, 196, 195, 195)),)),
          Padding(
            padding: const EdgeInsets.only(left:15.0,right: 15,top: 35),
            child: Card(
              child: ListTile(
                title: Text(" Menu"),
                trailing: Icon(Icons.arrow_forward_ios),
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>MenuPage()));
                },
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left:15.0,right: 15),
            child: Card(
              child: ListTile(
                title: Text("Mark Interest"),
                 trailing: Icon(Icons.arrow_forward_ios),
                 onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Attendance()));
                 },
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left:15.0,right: 15),
            child: Card(
              child: ListTile(
                title: Text("Rate"),
                 trailing: Icon(Icons.arrow_forward_ios),
                 onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Rate()));
                 },
              ),
            ),
          )

        ]),
      ),
    );
  }
}