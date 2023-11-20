import 'package:flutter/material.dart';

class CounterPage extends StatefulWidget {
  const CounterPage({super.key});

  @override
  State<CounterPage> createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  //variable
  int _counter = 0;

  // method
  void _incrementCounter() {
    //sets the new counter or state by rebuilding the widget
    setState(() {
      _counter++;
    });
  }

//UI
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //message
            Text("You have pressed this button this many times: "),

            //counter value
            Text(
              _counter.toString(),
              style: TextStyle(
                fontSize: 39,
              ),
            ),

            //button
            ElevatedButton(
              onPressed: _incrementCounter,
              child: Text('Increment!'),
            )
          ],
        ),
      ),
    );
  }
}
