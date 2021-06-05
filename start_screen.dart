import 'package:flutter/material.dart';
import 'second_screen.dart';

class StartScreen extends StatefulWidget {
  @override
  _StartScreenState createState() => _StartScreenState();
}

class _StartScreenState extends State<StartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Quiz'),
      ),
      body: Center(
        child: ElevatedButton(
          // Within the `StartScreen` widget
          onPressed: () {
            // Navigate to the survey screen using a named route.
            Navigator.pushNamed(context, '/second');
            setState(() {});
          },
          child: Text('Start'),
        ),
      ),
    );
  }
}
