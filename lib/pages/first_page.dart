// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:project_1/pages/home_page.dart';
import 'package:project_1/pages/profile_page.dart';
import 'package:project_1/pages/setting_page.dart';

class FirstPage extends StatefulWidget {
  FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  //this keeps track of the current page to display
  int _selectedIndex = 0;

  //this method updates the selected index
  void _navigateBottomBar(int index) {
    //set the state and update the index
    setState(() {
      _selectedIndex = index;
    });
  }

  //this are the pages in our app
  final List _pages = [
    //home page
    HomePage(),

    //profile page
    ProfilePage(),

    //settings page
    SettingsPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        backgroundColor: Colors.deepPurpleAccent[100],
        child: Column(
          children: [
            //common to place a drawer header here
            DrawerHeader(
              child: Icon(
                Icons.favorite,
                size: 48,
              ),
            ),

            //home page list tile
            ListTile(
              leading: Icon(Icons.home),
              title: Text('H O M E'),
              onTap: () {
                //pop the drawer so that when we go back to the first page the drawer is closed
                Navigator.pop(context);

                //go to home page
                Navigator.pushNamed(context, '/homepage');
              },
            ),

            //setting page list tile
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('S E T T I N G'),
              onTap: () {
                //pop the drawer so that when we go back to the first page the drawer is closed
                Navigator.pop(context);

                //got to settings page
                Navigator.pushNamed(context, '/settingspage');
              },
            )
          ],
        ),
      ),
      appBar: AppBar(
        title: const Text('First Page Title'),
        centerTitle: true,
        elevation: 0,
      ),
      // body: Center(
      //   child: ElevatedButton(
      //     child: const Text('Go To Second Page'),
      //     onPressed: () {
      //       //Navigate to the second page
      //       // Navigator.push(
      //       //   context,
      //       //   MaterialPageRoute(
      //       //     builder: (context) => SecondPage(),
      //       //   ),
      //       // );
      //       Navigator.pushNamed(context, '/secondpage');
      //     },
      //   ),
      // ),
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _navigateBottomBar,
        items: [
          //home
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),

          //profile
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),

          //settings
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          )
        ],
      ),
    );
  }
}
