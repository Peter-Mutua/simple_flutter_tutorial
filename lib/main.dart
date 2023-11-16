// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:project_1/pages/first_page.dart';
import 'package:project_1/pages/home_page.dart';
import 'package:project_1/pages/second_page.dart';
import 'package:project_1/pages/setting_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget { 
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FirstPage(),
      routes: {
        '/secondpage':(context) => SecondPage(),
        '/firstpage':(context) => FirstPage(),
        '/homepage':(context) => HomePage(),
        '/settingspage':(context) => SettingsPage(),
      }
      // home: Scaffold(
      //   appBar: AppBar(
      //     title: Text("My App Bar"),
      //     backgroundColor: Colors.blue,
      //     elevation: 0,
      //     leading: Icon(Icons.menu),
      //     actions: [IconButton(onPressed: () {}, icon: Icon(Icons.logout))],
      //   ),
      //   // body: Center(
      //   //   child: Container(
      //   //     height: 300,
      //   //     width: 300,
      //   //     decoration: BoxDecoration(
      //   //       color: Colors.green,
      //   //       //curve the edges
      //   //       borderRadius: BorderRadius.circular(20)
      //   //     ),
      //   //     padding: EdgeInsets.all(30),
      //   //     // child: Text(
      //   //     //   "Hello, Peter",
      //   //     //   style: TextStyle(
      //   //     //     color: Colors.white,
      //   //     //     fontSize: 28,
      //   //     //     fontWeight: FontWeight.bold
      //   //     //   ),
      //   //     //   ),
      //   //     child: Icon(
      //   //       Icons.favorite,
      //   //       color: Colors.white,
      //   //       size: 64,
      //   //       ),
      //   //   ),
      //   // ),
      //   // body: Column(
      //   body: ListView(
      //     // mainAxisAlignment: MainAxisAlignment.center,
      //     // crossAxisAlignment: CrossAxisAlignment.start,
      //     children: [
      //       //1st Box
      //       Expanded(
      //         child: Container(
      //           height: 200,
      //           // width: 200,
      //           color: Colors.black12,
      //         ),
      //       ),

      //       //2nd Box
      //       Expanded(
      //         flex: 2,
      //         child: Container(
      //           height: 200,
      //           // width: 200,
      //           color: Colors.deepPurple[300],
      //         ),
      //       ),

      //       // //3rd Box
      //       // Container(
      //       //   height: 200,
      //       //   width: 200,
      //       //   color: Colors.deepPurple[100],
      //       // ),

      //       //3rd Box
      //       Expanded(
      //         child: Container(
      //           height: 400,
      //           // width: 200,
      //           color: Colors.deepPurple[100],
      //         ),
      //       )
      //     ],
      //   ),
      // ),
    );
  }
}
