import 'package:flutter/material.dart';
import 'start_screen.dart';
import 'second_screen.dart';
import 'end_screen.dart';

void main() {
  runApp(
    MaterialApp(
      title: 'abc',
      // Start the app with the "/" named route. In this case, the app starts
      // on the FirstScreen widget.
      initialRoute: '/',
      routes: {
        // When navigating to the "/" route, build the FirstScreen widget.
        '/': (BuildContext context) => StartScreen(),
        // When navigating to the "/second" route, build the SecondScreen widget.
        '/second': (BuildContext context) => SecondScreen(),
        '/third': (BuildContext context) => EndScreen(),
      },
    ),
  );
}
