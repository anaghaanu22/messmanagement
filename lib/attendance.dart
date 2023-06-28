import 'package:flutter/material.dart';
import 'package:mess_management/bottomnavigation.dart';


class Attendance extends StatefulWidget {
  const Attendance({super.key});

  @override
  State<Attendance> createState() => _AttendanceState();
}

class _AttendanceState extends State<Attendance> {
  String? selectedOption;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: (){
          // Navigator.push(context, MaterialPageRoute(builder: (context)=>PageHome()));
           Navigator.pop(context);
        }, icon: Icon(Icons.arrow_back)),
      ),
      body: SafeArea(child: Center(
        child: Column(
          children: [
            SizedBox(height: 75,),
            Text("Please Mark Your Interest For Date:",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
            Text("30/06/2023"),
            SizedBox(height: 15,),
             RadioListTile<String>(
              title: Text('I am Interested'),
              value: 'Option 1',
              groupValue: selectedOption,
              onChanged: (value) {
                setState(() {
                  selectedOption = value;
                });
              },
            ),
            RadioListTile<String>(
              title: Text('I am Not Interested'),
              value: 'Option 2',
              groupValue: selectedOption,
              onChanged: (value) {
                setState(() {
                  selectedOption = value;
                });
              },
            ),
            SizedBox(height: 10,),
            ElevatedButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>PageHome()));}, child: Text("Mark Interest"))
          ],
        ),
      )),
    );
  }
}