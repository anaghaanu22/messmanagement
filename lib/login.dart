import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:http/http.dart';



import 'package:mess_management/register.dart';

import 'bottomnavigation.dart';
import 'connection.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final _formKey = GlobalKey<FormState>();
  final email = TextEditingController();
  final password = TextEditingController();
  Future<void> getData() async {
    if (_formKey.currentState!.validate()) {
      var data = {
        'email': email.text,
        'password': password.text,
      };
      var response = await post(Uri.parse('${Con.url}login.php'), body: data);
      print(response.body);
      var res = jsonDecode(response.body);
      if (res['message'] == 'login') {
        Fluttertoast.showToast(msg: 'Login Successfully...');
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => PageHome()),
        );
      } else {
        Fluttertoast.showToast(msg: 'Something went wrong...!');
      }
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: Center(
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                  height: 150,
                  width: 100,
                  child: Image.asset("assets/logo-design-template-ab0937cc7c9feed1e85ed1ef6894a7a3_screen-removebg-preview.png"),
              ),
              Padding(
                padding: const EdgeInsets.only(left:20.0,right: 20,bottom: 15),
                child: TextFormField(
                  controller: email,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: "Email",
                  ),
                  validator: (value) {
                      if (value!.isEmpty) {
                        return 'Please enter your email';
                      }
                      return null;
                    },
                  ),
                
              ),
              Padding(
                padding: const EdgeInsets.only(left:20.0,right: 20),
                child: TextFormField(
                  controller: password,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: "Password",
                  ),
                   validator: (value) {
                      if (value!.isEmpty) {
                        return 'Please enter your password';
                      }
                      return null;
                    },
                  ),
                ),
              
               Padding(
                 padding: const EdgeInsets.only(left:20.0,right: 20,top: 10),
                 child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      foregroundColor: Colors.black,
                      
                      minimumSize: Size(350, 50),
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)) // Adjust the button size
                    ),
                    onPressed: () {getData();},
                    child: Text("LOGIN")),
               ),
              TextButton(
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>Register()));
                      },
                          child: Text(
                               "No Account yet? Create one",
                                   style: TextStyle(
                                     color: Color.fromARGB(255, 1, 100, 2),
                         ),
                         ),
                        )
            ],
          ),
        ),
      )),
    );
  }
}