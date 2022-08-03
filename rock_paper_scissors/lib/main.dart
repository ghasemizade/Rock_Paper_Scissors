import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(Application());
}

class Application extends StatelessWidget {
  const Application({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String top = 'paper';
    String bottom = 'scissors';

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.teal,
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            'Rock Paper Scissors',
            style: TextStyle(color: Colors.amber),
          ),
          backgroundColor: Colors.teal[700],
        ),
        body: SafeArea(
            child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image(
                image: AssetImage('Images/$top.png'),
              ),
              SizedBox(height: 150),
              TextButton(
                onPressed: (() {}),
                child: Text(
                  'Start Game',
                  style: TextStyle(
                      color: Colors.amber,
                      fontSize: 28.0,
                      fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(height: 150),
              Image(
                image: AssetImage('Images/$bottom.png'),
              ),
            ],
          ),
        )),
      ),
    );
  }
}
