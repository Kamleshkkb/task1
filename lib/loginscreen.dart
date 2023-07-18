import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:task1/createscreen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController email=TextEditingController();
  TextEditingController password=TextEditingController();
  FirebaseAuth _auth=FirebaseAuth.instance;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Login Screen"),),
      body: Column(
        children: [
          Padding(
             padding: const EdgeInsets.all(8.0),
             child: TextField(
              controller: email,
               decoration: InputDecoration(
                hintText: "email",
                border: OutlineInputBorder()
              ),
                     ),
           ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: password,
              decoration: InputDecoration(
                hintText: "password",
                border: OutlineInputBorder()
              ),
            ),
          ),
          ElevatedButton(onPressed: ()async{
          
                if(email.text.isNotEmpty && password.text.isNotEmpty){
                  try {
                   await  _auth.signInWithEmailAndPassword(email: email.text, password: password.text);
                   showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              title: Text("Login Successfully"),
            );
          });
                  } catch (e) {

                    print(e);
                    showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              title: Text("error occured $e"),
            );
          });
                  }
               
                }
            
          }, child: Text("Login")),
          ElevatedButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>CreateScreen()));
          }, child: Text("Create account")),
        ],
      ),
    );
  }
}