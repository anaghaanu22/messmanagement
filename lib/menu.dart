import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';

class MenuPage extends StatefulWidget {
  const MenuPage({super.key});

  @override
  State<MenuPage> createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Menu"),
        centerTitle: true,
       // backgroundColor: Color.fromARGB(255, 253, 197, 123) ,
      ),
      body: Center(
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Text("Today Menu",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
            ),
            Padding(
              padding: const EdgeInsets.only(left:15.0),
              child: Text("BreakFast",style: TextStyle(fontSize: 15),),
            ),
              ListTile(
                leading:Image.asset("assets/puttu-kadala-kerala-vegetarian-recipes.jpg") ,
                title: Text("Putt , Kadala"),
                trailing: Text("Price:35/-"),
              ),
              SizedBox(height: 15,),
              Padding(
              padding: const EdgeInsets.only(left:15.0),
              child: Text("Lunch",style: TextStyle(fontSize: 15),),
            ),
            ListTile(
              leading: Image.asset("assets/unnamed.jpg",),
              title: Padding(
                padding: const EdgeInsets.only(left:30.0),
                child: Text("Meal"),
                
              ),
              trailing: Text("Price:65/-"),
            ),
            SizedBox(height: 15,),
              Padding(
              padding: const EdgeInsets.only(left:15.0),
              child: Text("Dinner",style: TextStyle(fontSize: 15),),
            ),
            ListTile(
              leading: Image.asset("assets/1-30.jpg",),
              title: Padding(
                padding: const EdgeInsets.only(left:10.0),
                child: Text("GheeRice,Chicken"),
                
              ),
              trailing: Text("Price:85/-"),
            ),
            SizedBox(height: 15,),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
              IconButton(onPressed: (){}, icon: Icon(Icons.thumb_up)),
               IconButton(onPressed: (){}, icon: Icon(Icons.thumb_down))
            ],)
           
          ]
            )
          
        ),
      
    );
  }
}