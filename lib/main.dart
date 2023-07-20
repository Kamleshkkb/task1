import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:task1/home.dart';
import 'package:task1/loginscreen.dart';
import 'package:task1/myinfo.dart';
import 'package:task1/splashscreen.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.transparent
      ),
      debugShowCheckedModeBanner: false,
      home: SplashScreen()
      
      
      // GoogleSignIn().currentUser != null ||
      //         FirebaseAuth.instance.currentUser != null
      //     ? Home()
      //     : LoginScreen(),
    );
  }
}
