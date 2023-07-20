import 'package:flutter/material.dart';
import 'package:task1/createscreen.dart';

class Onboarding3 extends StatefulWidget {
  const Onboarding3({super.key});

  @override
  State<Onboarding3> createState() => _Onboarding3State();
}

class _Onboarding3State extends State<Onboarding3> {
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
              image:AssetImage('assets/images/3.Onboarding 33.png') ),
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
          Text("Create To Do List",style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold),),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
           
           "Take charge of your time like never before, with LifePilot intuitive features that enables you to effortlessly prioritize, track, & optimize your schedule for unmatched productivity",maxLines: 4,textAlign: TextAlign.center,style: TextStyle(
                
                height: 1.5,
                fontWeight: FontWeight.w200
              ),),
          ),
           GestureDetector(
                 onTap: (){
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (_)=>CreateScreen()));
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
        child: Image(image: AssetImage('assets/images/3.Onboarding 3.png')),
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
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (_)=>CreateScreen()));
                },
                child: Container(
                      color: Colors.cyan,
                      child: Icon(Icons.arrow_forward),
                    ),
              ),
            ),
            
        
        
        ],
      ),*/

    );
  }
}