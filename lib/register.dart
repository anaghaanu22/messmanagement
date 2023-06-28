import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:http/http.dart';

import 'package:mess_management/login.dart';

import 'connection.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  final _formKey = GlobalKey<FormState>();
  final name = TextEditingController();
  final email = TextEditingController();
  final mobile = TextEditingController();
  final password = TextEditingController();

  Future<void> addData() async {
    if (_formKey.currentState!.validate()) {
      var data = {
        'name': name.text,
        'email': email.text,
        'password': password.text,
      };
      var response = await post(Uri.parse('${Con.url}register.php'), body: data);
      var res = jsonDecode(response.body);
      if (res['message'] == 'Added') {
        Fluttertoast.showToast(msg: 'Registration Successful...');
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return Login();
        }));
      } else {
        Fluttertoast.showToast(msg: 'Something went wrong...!');
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Container(
    height: MediaQuery.of(context).size.height,
    child: Center(
      child: SingleChildScrollView(
        child: SafeArea(child: Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment. center,
            children: [
              Container(
                    height: 150,
                    width: 100,
                    child: Image.asset("assets/logo-design-template-ab0937cc7c9feed1e85ed1ef6894a7a3_screen-removebg-preview.png"),
                ),
            Padding(
              padding: const EdgeInsets.only(left:20.0,right: 20,),
              child: TextFormField(
                controller: name,
                decoration: InputDecoration(border: OutlineInputBorder(),
                hintText: "Name",
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left:20.0,right: 20,top: 10),
              child: TextFormField(
                controller: email,
                decoration: InputDecoration(border: OutlineInputBorder(),
                hintText: "Email",
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0,right: 20,top:10 ),
              child: TextFormField(
                controller: password,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "Password",
                ),
              ),
            ),
            Padding(
                   padding: const EdgeInsets.only(left: 20.0,right: 20,top: 10),
                   child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        foregroundColor: Colors.black,
                        
                        minimumSize: Size(350, 50),
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)) // Adjust the button size
                      ),
                      onPressed: () {
                       addData();
                      },
                      child: Text("REGISTER")),
                 ),
            TextButton(
              onPressed: () { Navigator.push(context, MaterialPageRoute(builder: (context)=>Login()));},
                  child: Text(
                            "Already Having An Account,\nLogin here...",
                               style: TextStyle(
                         color: Color.fromARGB(255, 1, 100, 2),
                              ),
                          ),
                        ),
        
          ]),
        ),),
      )),
      ),
    );
  }
}