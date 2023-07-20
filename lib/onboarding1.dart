import 'package:flutter/material.dart';
import 'package:task1/createscreen.dart';
import 'package:task1/loginscreen.dart';
import 'package:task1/onboarding2.dart';

class OnBoarding1 extends StatefulWidget {
  const OnBoarding1({super.key});

  @override
  State<OnBoarding1> createState() => _OnBoarding1State();
}

class _OnBoarding1State extends State<OnBoarding1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      // appBar: AppBar(
      //   backgroundColor: Colors.transparent,

      //   actions: [
          // TextButton(onPressed: (){
          //        Navigator.pushReplacement(context, MaterialPageRoute(builder: (_)=>LoginScreen()));
          //       },child: Text("Skip",style: TextStyle(color: Colors.black),),)
      //   ],
      // ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
        //  SizedBox(height: 40,),
          Stack(
           
            children: [
              Container(
            width: MediaQuery.of(context).size.width,
            height: 400,
            child: Image(
              fit: BoxFit.cover,
              image:AssetImage('assets/images/1.Onboarding 11.png') ),
          ),
          Align(
            alignment: Alignment.centerRight,
            child: TextButton(onPressed: (){
                   Navigator.pushReplacement(context, MaterialPageRoute(builder: (_)=>LoginScreen()));
                  },child: Text("Skip",style: TextStyle(color: Colors.black),),),
          ),
            ],
          ),
          Text("Welcome to LifePilot",style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold),),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              
              "Streamline your tasks, harness your focus, and achieve remarkable result with LifePilot, the all-in-one solution for organizing your life and maximizing your productivity",maxLines: 4,textAlign: TextAlign.center,style: TextStyle(
                
                height: 1.5,
                fontWeight: FontWeight.w200
              ),),
          ),
           GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (_)=>OnBoarding2()));
                },

                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                                       height: 50,
                              width: 150,
                        color: Colors.cyan,
                        child: Icon(
                          
                          Icons.arrow_forward,color: Colors.white,
                          
                          ),
                      ),
                ),
              ),

          
          
        ],
      )
      
      
     /* Stack(

        children: [
            Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Image(image: AssetImage('assets/images/1.Onboarding 1.png')),
      ),
            Positioned(
              bottom: 50,
              // top: 300,
              left: 114,
              height: 50,
              width: 150,
              child: GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (_)=>OnBoarding2()));
                },
                child: Container(
                      color: Colors.cyan,
                      child: Icon(Icons.arrow_forward),
                    ),
              ),
            ),
            Positioned(
              top: 40,

              left: 297,
              child:Container(
                color: Colors.white,
                
                child: TextButton(onPressed: (){
                 Navigator.pushReplacement(context, MaterialPageRoute(builder: (_)=>LoginScreen()));
                },child: Text("Skip",style: TextStyle(color: Colors.black),),))
            ),
        
        
        ],
      ),*/
    );
  }
}