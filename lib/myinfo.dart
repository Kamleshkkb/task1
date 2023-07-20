import 'package:flutter/material.dart';

class MyInfo extends StatefulWidget {
  const MyInfo({super.key});

  @override
  State<MyInfo> createState() => _MyInfoState();
}

class _MyInfoState extends State<MyInfo> {
  TextEditingController emailcontroller = TextEditingController();
  TextEditingController passwordcontroller = TextEditingController();
  TextEditingController confirmpasswordcontroller = TextEditingController();
  TextEditingController firstnamecontroller = TextEditingController();
  TextEditingController lastnamecontroller = TextEditingController();
  TextEditingController gendercontroller = TextEditingController();

  TextEditingController dateInput = TextEditingController(text: 'DD/MM/YYYY');
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
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 30,
            ),
            Row(
              children: [
                IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Icon(Icons.arrow_circle_left_outlined)),
                SizedBox(
                  width: 80,
                ),
                Text(
                  "My Information",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            CircleAvatar(
              radius: 50,
              child: Text("Image"),
            ),
            myTextfield('First Name', 'Ryan', firstnamecontroller),
            myTextfield('Last Name', 'Mahone', lastnamecontroller),
            myTextfield('Date of Birth', 'DD/MM/YYYY', dateInput),
            myTextfield('Gender', 'Male', gendercontroller),
            myTextfield('E-mail', 'info@gmail.com', emailcontroller),
          ],
        ),
      ),
    );
  }
}
