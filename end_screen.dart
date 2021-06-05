import 'package:flutter/material.dart';
import 'second_screen.dart';

class EndScreen extends StatefulWidget {
  @override
  _EndScreenState createState() => _EndScreenState();
}

class _EndScreenState extends State<EndScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Back'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Correct:',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Text(
             'Incorrect:',
             style: TextStyle(fontWeight: FontWeight.bold),
             ),
            ElevatedButton(
              // Within the `StartScreen` widget
              onPressed: () {
                // Navigate to the survey screen using a named route.
                // Navigator.pushNamed(context, '/second');
                Navigator.pushNamed(context, '/');
                setState(() {});
              },
              child: Text('Continue'),
            ),
          ],
        ),
      ),
    );
  }
}
