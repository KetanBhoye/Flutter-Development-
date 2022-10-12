import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context){

    return MaterialApp(
    title: 'Flutter App',
    debugShowCheckedModeBanner: false,
    theme:
        ThemeData(primaryColor: Colors.greenAccent, accentColor: Colors.orange),
    home: Scaffold(
      appBar: AppBar(
        title: Text('Flutter'),
        backgroundColor: Colors.black,
      ),
      body: (Center(
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text('Username'),
              Text('Password'),
              ElevatedButton(
                onPressed: () {},
                child: Text('Signup'),
                
                
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.greenAccent,
                


                ),
              )
            ]),
      )),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(
          Icons.add_a_photo,
          color: Colors.black,
        ),
      ),
    ),
  );
  }
}
