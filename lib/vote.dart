import 'package:flutter/material.dart';

class Vote extends StatefulWidget {
  const Vote({super.key});

  @override
  State<Vote> createState() => _VoteState();
}

class _VoteState extends State<Vote> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Ambujam Mess"),
        centerTitle: true,
      ),
      body: SafeArea(child: Center(child: 
      Padding(
        padding: const EdgeInsets.all(8.0),
        
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  height: 130,
                  width: 150,
                  
                    child: Column(children:[ Image.asset("assets/puttu-kadala-kerala-vegetarian-recipes.jpg"),
                    Text("BreakFast : Putt, Kadala"),
                  
                    ] 
                    ),
                  ),
                
                 Container(
                  height: 180,
                  width: 150,
                  child: Column(children:[ Image.asset("assets/unnamed.jpg"),
                  Text("Lunch : Meal"),
                  
                  ] 
                  ),
                ),
                Container(
                  height: 150,
                  width: 150,
                  child: Column(children:[ Image.asset("assets/1-30.jpg"),
                  Text("Dinner : GheeRice ,Chicken"),
                  
                  ] 
                  ),
                ),
                
                SizedBox(height: 10,),
                  ElevatedButton.icon(onPressed: (){}, icon: Icon(Icons.poll), label: Text("poll"))
              ],
            ),
          ),
        ),
      ),)
    
    );
  }
}