import 'dart:html';

import 'package:flutter/material.dart';

void main() {
  runApp(CounterApplication());
}

class CounterApplication extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Counter Application Tugas 7 PBP',
      home: CounterScreenState(),
    );
  }
}

class CounterScreenState extends StatefulWidget {
  @override 
  CounterScreen createState() => CounterScreen();
}

class CounterScreen extends State<CounterScreenState>{

  int _count = 0;
  String _status = "";

  void incrementCount() {
    setState(() {
      _count++;
    });
    if (_count % 2 == 0) {
      _status = "GENAP";
    }
    else {
      _status = "GANJIL";
    }
  }

  void decrementCount() {
    if (_count < 1) {
      return;
    }
    setState(() {
      _count--;
    });
    if (_count % 2 == 0) {
      _status = "GENAP";
    }
    else {
      _status = "GANJIL";
    }
  }

  @override 
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text('Program Counter'),),
    body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          if (_count % 2 == 0) ...[
              const Text("GENAP",
                        style: TextStyle(
                        color: Colors.red,
                        )),
            ] else ...[
              const Text("GANJIL",
                        style: TextStyle(
                        color: Colors.blue,
                        )),
            ],
          Text("${_count}", style: Theme.of(context).textTheme.headline4,),
        ],
      ),
    ),
    floatingActionButton: Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          FloatingActionButton(
            child: Icon(Icons.remove),
            onPressed: decrementCount
          ),
          FloatingActionButton(
            child: Icon(Icons.add),
            onPressed: incrementCount
          )
        ],
      )
    ), 
    );
  }
}