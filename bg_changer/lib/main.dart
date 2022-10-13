import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BG Changer',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Random Background'),
        ),
        body: Homepage(),
      ),
    );
  }
}

class Homepage extends StatefulWidget {
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  var colors = [
    Colors.amber,
    Colors.green,
    Colors.yellow,
    Colors.red,
    Colors.blue,
    Colors.orange,
    Colors.pink
  ];
  var currentColor = Colors.white;
  setRandomColor() {
    var rnd = Random().nextInt(colors.length);
    setState(() {
      currentColor = colors[rnd];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: currentColor,
      child: Center(
        child: SizedBox(
          height: 80,
          width: 200,
          child:  ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: currentColor,
            padding: const EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30.0),
              
            ),
            elevation: 15, 
            shadowColor: Colors.black,
                     ),
          onPressed: setRandomColor,
          child: const Text(
            'Change it!',
            style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
          ),
        )),
      ),
    );
  }
}
