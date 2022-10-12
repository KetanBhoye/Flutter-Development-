import 'package:flutter/material.dart';
import 'package:draggable_fab/draggable_fab.dart';

void main() {
  runApp(MaterialApp(
    home: MyButton(),
  ));
}

class MyButton extends StatefulWidget {
  @override
  MyButtonState createState() {
    return MyButtonState();
  }
}

class MyButtonState extends State<MyButton> {
  int counter = 0;
  int numbers = 0;
  List<String> spanishnumbers = [
    "uno",
    "dos",
    "tres",
    "cuatro",
    "cinco",
    "seis",
    "seite",
    "ocho",
    "nueve",
    "dietz"
  ];
  String defaultText = "Spanish numbers";
  void displaySNumbers() {
    setState(() {
      defaultText = spanishnumbers[counter];
      if (counter < 9) {
        counter++;
      } else {
        counter = 0;
      }
      if (numbers < 10) {
        numbers++;
      } else {
        numbers = 1;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'My stateful widget',
          style: TextStyle(
            color: Color(0xff3f3f3f),
          ),
        ),
        backgroundColor: Colors.white,
      ),
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                defaultText,
                style: TextStyle(
                  fontSize: 50.0,
                  fontWeight: FontWeight.bold,
                  color: Color(0xff3f3f3f),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(0, 0, 0, 50.0),
              ),
              Text(
                numbers.toString(),
                style: TextStyle(
                  fontSize: 70.0,
                  color: Color(0xff3f3f3f),
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: DraggableFab(
        child: FloatingActionButton.large(
          onPressed: displaySNumbers,
          backgroundColor: Color(0xff3f3f3f),
          child: const Icon(Icons.fast_forward_sharp),
        ),
      ),
      backgroundColor: Color(0xffefefed),
    );
  }
}
