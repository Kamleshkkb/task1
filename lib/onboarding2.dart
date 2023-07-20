import 'package:flutter/material.dart';
import 'package:task1/createscreen.dart';
import 'package:task1/loginscreen.dart';
import 'package:task1/onboarding3.dart';

class OnBoarding2 extends StatefulWidget {
  const OnBoarding2({super.key});

  @override
  State<OnBoarding2> createState() => _OnBoarding2State();
}

class _OnBoarding2State extends State<OnBoarding2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Column(
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
              image:AssetImage('assets/images/2.Onboarding 22.png') ),
          ),
          Align(
            alignment: Alignment.centerRight,
            child: TextButton(onPressed: (){
                   Navigator.pushReplacement(context, MaterialPageRoute(builder: (_)=>LoginScreen()));
                  },child: Text("Skip",style: TextStyle(color: Colors.black),),),
          ),
                    Align(
            alignment: Alignment.centerLeft,
            child: IconButton(
            
            onPressed: (){
              Navigator.pop(context);
            }, icon: Icon(Icons.arrow_circle_left_outlined)),
        
          ),
            ],
          ),
          Text("Create Habits & Follow them ",style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold),),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              
              "Take control of your daily habits and watch your progress soar with LifePilot, designed to help you cultivate a life of success and fulfillment",maxLines: 4,textAlign: TextAlign.center,style: TextStyle(
                
                height: 1.5,
                fontWeight: FontWeight.w200
              ),),
          ),
           GestureDetector(
               onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (_)=>Onboarding3()));
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
        child: Image(image: AssetImage('assets/images/2.Onboarding 2.png')),
      ),

      Positioned(
        top: 40,
        left: 20,
        child: Container(
          color: Colors.white,
          child: IconButton(
            
            onPressed: (){
              Navigator.pop(context);
            }, icon: Icon(Icons.arrow_circle_left_outlined)),
        )),
            Positioned(
              bottom: 50,
              // top: 300,
              left: 114,
              height: 50,
              width: 150,
              child: GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (_)=>Onboarding3()));
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