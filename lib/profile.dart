

import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(
        
      title: Text("Profile",style: TextStyle(fontSize: 20,),),
      centerTitle: true,
      //backgroundColor: Color.fromARGB(255, 253, 197, 123) ,
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CircleAvatar(
              backgroundColor:Colors.blue ,
              foregroundColor: Colors.white,
              radius: 50,
              child: Icon(
                Icons.account_circle,
                size: 80,
              ),
            ),
            SizedBox(height: 16),
            Text(
              'Nandana',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8),
            ListTile(
              leading: Icon(Icons.email),
              title: Text('Nandana@gmail.com'),
            ),
            ListTile(
              leading: Icon(Icons.phone),
              title: Text('123456789'),
            ),
          ],
        ),
      ),
    );
  }
}
