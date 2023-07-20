
import 'package:flutter/material.dart';
import 'package:task1/loginscreen.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var scaffoldKey = GlobalKey<ScaffoldState>();
  List arr=[true,false,false,false,false,false,false];
  @override
  Widget build(BuildContext context) {
    return

        

        Scaffold(
      key: scaffoldKey,
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () {
                    scaffoldKey.currentState?.openDrawer();
                  },
                  child: Container(
                    height: 25,
                    width: 25,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 4,
                          width: 25,
                          color: Colors.black45,
                        ),
                        Container(
                          height: 4,
                          width: 20,
                          color: Colors.black45,
                        ),
                        Container(
                          height: 4,
                          width: 15,
                          color: Colors.black45,
                        ),
                      ],
                    ),
                  ),
                ),
                IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.notifications_none_outlined)),
              ],
            ),
            Text(
              "Hi Ryan!",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Center(child: Text("Home"))
          ],
        ),
      ),
      drawer: Drawer(
        child: Expanded(
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              Stack(
                children: [
                  Container(
                    height: 200,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(35),
                          bottomRight: Radius.circular(35)),
                      boxShadow: const [
                        BoxShadow(
                            offset: Offset(0, 2),
                            blurRadius: 7,
                            color: Colors.grey)
                      ],
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            border: Border.all(
                              width: 3,
                              color: Color.fromARGB(255, 255, 193, 59),
                              style: BorderStyle.solid,
                            ),
                          ),
                          child: CircleAvatar(
                            radius: 50,
                            child: Text("image"),
                          ),
                        ),
                        Align(
                          alignment: Alignment.centerRight,
                          child: Container(
                            height: 100,
                            width: 150,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text(
                                  "Ryan Mahone",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20),
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'LV.3',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w100),
                                    ),
                                    Text('LV.4',
                                        style: TextStyle(
                                            fontWeight: FontWeight.w100)),
                                  ],
                                ),
                                LinearProgressIndicator(
                                  color:
                                      const Color.fromARGB(255, 255, 193, 59),
                                  backgroundColor: Colors.white,
                                  value: .5,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text('300XP',
                                        style: TextStyle(
                                            fontWeight: FontWeight.w100)),
                                    Text('400XP',
                                        style: TextStyle(
                                            fontWeight: FontWeight.w100)),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    left: 50,
                    bottom: 30,
                    child: Container(
                      child: CircleAvatar(
                        radius: 15,
                        backgroundColor: Color.fromARGB(255, 255, 193, 59),
                        child: Text(
                          "3",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    arr[0]=true;
                    arr[1]=false;
                    arr[2]=false;
                    arr[3]=false;
                    arr[4]=false;
                    arr[5]=false;
                    arr[6]=false;

                  });
                },
                child: Padding(
                  padding: const EdgeInsets.only(right: 30),
                  child: Container(
                    decoration: BoxDecoration(
                        color:arr[0]? Colors.greenAccent:Colors.transparent,
                        borderRadius: BorderRadius.only(
                            bottomRight: Radius.circular(10),
                            topRight: Radius.circular(10))),
                    child: ListTile(
                      title: Text(
                        "Kanban Board",
                        style: TextStyle(fontSize: 20),
                      ),
                      leading: Container(
                        height: 20,
                        width: 20,
                        child: Image(
                            fit: BoxFit.cover,
                            image: AssetImage('assets/images/icon1.png')),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              GestureDetector(
                onTap: () {
                setState(() {
                    arr[0]=false;
                    arr[1]=true;
                    arr[2]=false;
                    arr[3]=false;
                    arr[4]=false;
                    arr[5]=false;
                    arr[6]=false;

                  });
                },
                child: Padding(
                  padding: const EdgeInsets.only(right: 30),
                  child: Container(
                    decoration: BoxDecoration(
                       color:arr[1]? Colors.greenAccent:Colors.transparent,
                        borderRadius: BorderRadius.only(
                            bottomRight: Radius.circular(10),
                            topRight: Radius.circular(10))),
                    child: ListTile(
                      title: Text(
                        "Action Weeks",
                        style: TextStyle(fontSize: 20),
                      ),
                      leading: Container(
                        height: 20,
                        width: 20,
                        child: Image(
                            fit: BoxFit.cover,
                            image: AssetImage('assets/images/icon2.png')),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    arr[0]=false;
                    arr[1]=false;
                    arr[2]=true;
                    arr[3]=false;
                    arr[4]=false;
                    arr[5]=false;
                    arr[6]=false;

                  });
                },
                child: Padding(
                  padding: const EdgeInsets.only(right: 30),
                  child: Container(
                    decoration: BoxDecoration(
                      color:arr[2]? Colors.greenAccent:Colors.transparent,
                        borderRadius: BorderRadius.only(
                            bottomRight: Radius.circular(10),
                            topRight: Radius.circular(10))),
                    child: ListTile(
                      title: Text(
                        "To Do List",
                        style: TextStyle(fontSize: 20),
                      ),
                      leading: Container(
                        child: Image(
                            fit: BoxFit.cover,
                            image: AssetImage('assets/images/icon3.png')),
                        height: 20,
                        width: 20,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              GestureDetector(
                onTap: (){
                  setState(() {
                    arr[0]=false;
                    arr[1]=false;
                    arr[2]=false;
                    arr[3]=true;
                    arr[4]=false;
                    arr[5]=false;
                    arr[6]=false;

                  });
                },
                child: Padding(
                  padding: const EdgeInsets.only(right: 30),
                  child: Container(
                    decoration: BoxDecoration(
                        color:arr[3]? Colors.greenAccent:Colors.transparent,
                        borderRadius: BorderRadius.only(
                            bottomRight: Radius.circular(10),
                            topRight: Radius.circular(10))),
                    child: ListTile(
                      title: Text(
                        "Daily Journal",
                        style: TextStyle(fontSize: 20),
                      ),
                      leading: Container(
                        child: Image(
                            fit: BoxFit.cover,
                            image: AssetImage('assets/images/icon4.png')),
                        height: 20,
                        width: 20,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    arr[0]=false;
                    arr[1]=false;
                    arr[2]=false;
                    arr[3]=false;
                    arr[4]=true;
                    arr[5]=false;
                    arr[6]=false;

                  });
                },
                child: Padding(
                  padding: const EdgeInsets.only(right: 30),
                  child: Container(
                    decoration: BoxDecoration(
                        color:arr[4]? Colors.greenAccent:Colors.transparent,
                        borderRadius: BorderRadius.only(
                            bottomRight: Radius.circular(10),
                            topRight: Radius.circular(10))),
                    child: ListTile(
                      title: Text(
                        "Stats And Analytics",
                        style: TextStyle(fontSize: 20),
                      ),
                      leading: Container(
                        child: Image(
                            fit: BoxFit.cover,
                            image: AssetImage('assets/images/icon5.png')),
                        height: 20,
                        width: 20,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    arr[0]=false;
                    arr[1]=false;
                    arr[2]=false;
                    arr[3]=false;
                    arr[4]=false;
                    arr[5]=true;
                    arr[6]=false;

                  });
                },
                child: Padding(
                  padding: const EdgeInsets.only(right: 30),
                  child: Container(
                    decoration: BoxDecoration(
                       color:arr[5]? Colors.greenAccent:Colors.transparent,
                        borderRadius: BorderRadius.only(
                            bottomRight: Radius.circular(10),
                            topRight: Radius.circular(10))),
                    child: ListTile(
                      title: Text(
                        "Quotes Management",
                        style: TextStyle(fontSize: 20),
                      ),
                      leading: Container(
                        child: Image(
                            fit: BoxFit.cover,
                            image: AssetImage('assets/images/icon6.png')),
                        height: 20,
                        width: 20,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    arr[0]=false;
                    arr[1]=false;
                    arr[2]=false;
                    arr[3]=false;
                    arr[4]=false;
                    arr[5]=false;
                    arr[6]=true;

                  });
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (_) => LoginScreen()));
                },
                child: Padding(
                  padding: const EdgeInsets.only(right: 30),
                  child: Container(
                    decoration: BoxDecoration(
                       color:arr[6]? Colors.greenAccent:Colors.transparent,
                        borderRadius: BorderRadius.only(
                            bottomRight: Radius.circular(10),
                            topRight: Radius.circular(10))),
                    child: ListTile(
                      title: Text(
                        "Logout",
                        style: TextStyle(fontSize: 20),
                      ),
                      leading: Container(
                        child: Image(
                            fit: BoxFit.cover,
                            image: AssetImage('assets/images/icon7.png')),
                        height: 20,
                        width: 20,
                      ),
                    ),
                  ),
                ),
              )
              // Row(

              //   children: [
              //     Container(
              //       color: Colors.black,
              //       height: 20,width: 20,
              //     ),
              //     Text("Kanban Board"),
              //   ],
              // ),

              // DrawerHeader(

              //   child:

              //   Row(
              //   children: [
              //      CircleAvatar(
              //    radius: 50,
              //    child: Text("image"),
              //  ),
              //  Column(
              //   crossAxisAlignment: CrossAxisAlignment.start,
              //    children: [
              //      Text("Ryan Mahone"),
              //      Row(
              //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //        children: [
              //          Text('LV.3'),
              //          Text('LV.4'),
              //        ],
              //      ),
              //      LinearProgressIndicator(value: 50,),
              //      Row(
              //        mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //        children: [
              //          Text('300XP'),
              //          Text('400XP'),
              //        ],
              //      )
              //    ],
              //  ),
              //   ],
              // )

              // )
            ],
          ),
        ),
      ),
      extendBodyBehindAppBar: true,
    );

    // Scaffold(
    //   appBar: AppBar(

    //     backgroundColor: Colors.transparent,
    //   ),
    //   body: Column(
    //     children: [
    //       SizedBox(height: 30,),
    //       Align(
    //         alignment: Alignment.centerRight,
    //         child: IconButton(onPressed: () {

    //       }, icon: Icon(Icons.notifications)),
    //       ),
    //       Align(
    //         alignment: Alignment.centerRight,
    //         child:

    //          Drawer(
    //           backgroundColor: Colors.red,
    //           child: Text("jjjjjj"),
    //         ),
    //       ),
    //       Container(

    //     child: Text("home "),
    //   ),
    //     ],
    //   ),

    //   drawer: Drawer(
    //           backgroundColor: Colors.red,
    //           child: Text("jjjjjj"),
    //         ),
    // );
  }
}
