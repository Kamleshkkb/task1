import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:task1/home.dart';
import 'package:task1/loginscreen.dart';
import 'package:task1/services.dart';

class CreateScreen extends StatefulWidget {
  const CreateScreen({super.key});

  @override
  State<CreateScreen> createState() => _CreateScreenState();
}

class _CreateScreenState extends State<CreateScreen> {
  TextEditingController emailcontroller = TextEditingController();
  TextEditingController passwordcontroller = TextEditingController();
  TextEditingController confirmpasswordcontroller = TextEditingController();
  TextEditingController firstnamecontroller = TextEditingController();
  TextEditingController lastnamecontroller = TextEditingController();
  TextEditingController dateInput = TextEditingController(text: 'DD/MM/YYYY');
  bool cp = false;
  bool p = false;
  bool t = false;

  String gender = '';
  FirebaseAuth _auth = FirebaseAuth.instance;

  myTextfield(
      String showtext, String hintText, TextEditingController controller) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            "$showtext",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextField(
            controller: controller,
            decoration: InputDecoration(
                hintText: hintText, border: OutlineInputBorder()),
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 30,
            ),
            Container(
              height: 200,
              color: Colors.black,
              width: MediaQuery.of(context).size.width,
              child: Image(
                  fit: BoxFit.cover,
                  image: AssetImage('assets/images/5.Sign Upp.png')),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: RichText(
                maxLines: 2,
                text: TextSpan(
                    text: 'Hello! ',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.greenAccent,
                      fontSize: 26,
                    ),
                    children: [
                      TextSpan(
                          text: 'Register to get started',
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold)),
                    ]),
              ),
            ),
            Stack(
              children: [
                CircleAvatar(
                  backgroundColor: Colors.blueGrey,
                  radius: 50,
                  child: Icon(
                    Icons.person,
                    size: 80,
                  ),
                ),
                Positioned(
                  bottom: -4,
                  left: 60,
                  child: CircleAvatar(
                    backgroundColor: Colors.green,
                    child: IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.camera_enhance,
                          color: Colors.white,
                        )),
                  ),
                )
              ],
            ),
            myTextfield('First Name', 'Ryan', firstnamecontroller),
            myTextfield('Last Name', 'Mahone', lastnamecontroller),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    child: Text(
                      "Date of Birth",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  )),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration:
                    BoxDecoration(border: Border.all(color: Colors.black38)),
                child: ListTile(
                    title: Text("${dateInput.text}"),
                    trailing: IconButton(
                      onPressed: () async {
                        DateTime? pickedDate = await showDatePicker(
                            context: context,
                            initialDate: DateTime.now(),
                            firstDate: DateTime(1950),
                            //DateTime.now() - not to allow to choose before today.
                            lastDate: DateTime(2100));

                        if (pickedDate != null) {
                          print(
                              pickedDate); //pickedDate output format => 2021-03-10 00:00:00.000
                          String formattedDate =
                              DateFormat('dd/MM/yyyy').format(pickedDate);
                          print(
                              formattedDate); //formatted date output using intl package =>  2021-03-16
                          setState(() {
                            dateInput.text =
                                formattedDate; //set output date to TextField value.
                          });
                        } else {}
                      },
                      icon: Icon(Icons.event_note),
                    )),
              ),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    child: Text(
                      "Gender",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  )),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration:
                    BoxDecoration(border: Border.all(color: Colors.black38)),
                child: ListTile(
                    title: Text("$gender"),
                    trailing: DropdownButton<String>(
                      items: <String>['Male', 'Female'].map((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                      onChanged: (value) {
                        setState(() {
                          gender = value!;
                        });
                      },
                    )),
              ),
            ),
            myTextfield('Email', 'info@gmail.com', emailcontroller),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    child: Text(
                      "Password",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  )),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                obscureText: p,
                controller: passwordcontroller,
                decoration: InputDecoration(
                    suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          p = !p;
                        });
                      },
                      icon: Icon(
                          p ? CupertinoIcons.eye_slash : CupertinoIcons.eye),
                    ),
                    hintText: 'Enter Your Password',
                    border: OutlineInputBorder()),
              ),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    child: Text(
                      "Confirm Password",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  )),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                obscureText: cp,
                controller: confirmpasswordcontroller,
                decoration: InputDecoration(
                    suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          cp = !cp;
                        });
                      },
                      icon: Icon(
                          cp ? CupertinoIcons.eye_slash : CupertinoIcons.eye),
                    ),
                    hintText: 'Enter Your Password',
                    border: OutlineInputBorder()),
              ),
            ),
            Row(
              children: [
                Checkbox(
                    value: t,
                    onChanged: (value) {
                      setState(() {
                        t = value!;
                      });
                    }),
                Flexible(
                  child: RichText(
                    text: TextSpan(
                        text: 'I agree to the DOB',
                        style: TextStyle(
                            overflow: TextOverflow.ellipsis,
                            color: Colors.black),
                        children: [
                          TextSpan(
                              text: ' Terms and Services',
                              style: TextStyle(
                                  overflow: TextOverflow.ellipsis,
                                  color: Colors.cyan)),
                          TextSpan(
                            text: ' and',
                            style: TextStyle(
                                overflow: TextOverflow.ellipsis,
                                color: Colors.black),
                          ),
                          TextSpan(
                              text: ' Privacy Policy',
                              style: TextStyle(
                                  overflow: TextOverflow.ellipsis,
                                  color: Colors.cyan)),
                        ]),
                    maxLines: 2,
                    softWrap: false,
                    overflow: TextOverflow.ellipsis,
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                  height: 50,
                  width: MediaQuery.of(context).size.width,
                  color: Colors.cyan,
                  child: TextButton(
                      onPressed: () {},
                      child: Text(
                        "Sign Up",
                        style: TextStyle(color: Colors.white),
                      ))),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Already have an account? "),
                TextButton(
                    onPressed: () {
                      Navigator.pushReplacement(context,
                          MaterialPageRoute(builder: (_) => LoginScreen()));
                    },
                    child: Text('Sign In')),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
