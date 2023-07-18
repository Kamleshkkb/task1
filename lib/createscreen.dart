import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class CreateScreen extends StatefulWidget {
  const CreateScreen({super.key});

  @override
  State<CreateScreen> createState() => _CreateScreenState();
}

class _CreateScreenState extends State<CreateScreen> {
    TextEditingController email=TextEditingController();
  TextEditingController password=TextEditingController();
  FirebaseAuth _auth=FirebaseAuth.instance;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Create Screen")),
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
            try {
              if(email.text.isNotEmpty && password.text.isNotEmpty){
               await _auth.createUserWithEmailAndPassword(email: email.text, password: password.text);
                 showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              title: Text("Account Create successfully"),
            );
          });
              }
            } catch (e) {
                          showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              title: Text("error occured $e"),
            );
          });
            }
              
          }, child: Text("Create")),
          ElevatedButton(onPressed: (){
            Navigator.pop(context);
          }, child: Text("login")),

        ],
      ),
    );
  }
}