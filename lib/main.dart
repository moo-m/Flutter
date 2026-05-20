import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  int counter = 0;

  void increase() {
    setState(() {
      counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Flutter APK Test"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              Text(
                "Counter:",
                style: TextStyle(fontSize: 30),
              ),

              SizedBox(height: 20),

              Text(
                "$counter",
                style: TextStyle(fontSize: 50),
              ),

              SizedBox(height: 30),

              ElevatedButton(
                onPressed: increase,
                child: Text("Increase"),
              )

            ],
          ),
        ),
      ),
    );
  }
}
