import 'dart:math';

import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(Application());
}

class Application extends StatefulWidget {
  Application({Key? key}) : super(key: key);

  @override
  State<Application> createState() => _ApplicationState();
}

class _ApplicationState extends State<Application> {
  int top = 1;
  int bottom = 1;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.grey[850],
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            'Rock Paper Scissors',
            style: TextStyle(color: Colors.amber),
          ),
          backgroundColor: Colors.grey[900],
        ),
        body: SafeArea(
          child: Center(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'User 1',
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.blue),
                ),
                Image(
                  image: AssetImage('Images/$top.png'),
                ),
                SizedBox(height: 150),
                TextButton(
                  onPressed: () {
                    setState(
                      () {
                        setState(() {
                          top = Random().nextInt(3) + 1;
                          bottom = Random().nextInt(3) + 1;
                        });
                      },
                    );
                  },
                  child: Text(
                    'Start Game',
                    style: TextStyle(
                        color: Colors.amber,
                        fontSize: 36.0,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(height: 150),
                Text(
                  'User 2',
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.red),
                ),
                Image(
                  image: AssetImage('Images/$bottom.png'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
