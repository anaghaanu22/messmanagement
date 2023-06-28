import 'package:flutter/material.dart';
import 'package:mess_management/bottomnavigation.dart';


class Rate extends StatefulWidget {
  const Rate({super.key});

  @override
  State<Rate> createState() => _RateState();
}

class _RateState extends State<Rate> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Review"),
        centerTitle: true,
        leading: IconButton(onPressed: (){
          
          Navigator.pop(context);
        }, icon: Icon(Icons.arrow_back)),
      ),
      body: Center(child: Column(
        children: [
          Container(
            height: 350,
            width: 350,
            child: Column(children: [
              Text("Please give your Review",style: TextStyle(fontSize: 25,),
               ),
               Container(
                height: 100,
                width: 100,
                child: Image.asset("assets/pngtree-four-star-rating-sign-png-image_6026608.png"),
               ),
               OutlinedButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>PageHome()));}, child: Text("Submit"))
        ],
      ),
          )
        ]
      
      ),
      )
    
    );
  }
}