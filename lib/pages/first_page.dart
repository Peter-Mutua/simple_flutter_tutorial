// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

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
      body: Center(
        child: ElevatedButton(
          child: const Text('Go To Second Page'),
          onPressed: () {
            //Navigate to the second page
            // Navigator.push(
            //   context,
            //   MaterialPageRoute(
            //     builder: (context) => SecondPage(),
            //   ),
            // );
            Navigator.pushNamed(context, '/secondpage');
          },
        ),
      ),
    );
  }
}
