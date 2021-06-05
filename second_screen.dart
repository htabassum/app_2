import 'package:flutter/material.dart';
import 'question.dart';
import 'end_screen.dart';

class SecondScreen extends StatefulWidget {
  SecondScreen({Key key}) : super(key: key);

  @override
  _SecondScreenState createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  List<Question> questions = [
    Question('Some cats are actually allergic to humans', true),
    Question('You can lead a cow down stairs but not up stairs.', false),
    Question('Approximately one quarter of human bones are in the feet.', true),
  ];

  int count = 0;

  // final tickIcon = Icon(Icons.check, color: Colors.green);
  //final crossIcon = Icon(Icons.cancel, color: Colors.red);

  int correct = 0;
  int incorrect = 0;

  //List<Widget> iconsList = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Quiz'),
        ),
        // floatingActionButton: FloatingActionButton(),
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ///
              /// Question Text
              ///
              SizedBox(height: 150),

              Padding(
                padding: const EdgeInsets.only(left: 5, right: 5),
                child: Text(
                  questions[count].text,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.blueAccent,
                    fontSize: 20,
                  ),
                ),
              ),

              SizedBox(height: 20),

              //Text(
              // 'Correct: $correct,   Incorrect: $incorrect',
              // style: TextStyle(color: Colors.white),
              //),

              // FloatingActionButton(
              //   child: Icon(Icons.add),
              //   onPressed: () {
              //     print('Add');
              //   },
              // ),
              // FloatingActionButton(
              //   child: Icon(Icons.cancel),
              //   onPressed: () {
              //     print('Subtract');
              //   },
              // ),
              ElevatedButton(
                // Within the `StartScreen` widget
                onPressed: () {
                  // Navigate to the survey screen using a named route.
                  // Navigator.pushNamed(context, '/second');
                  Navigator.pushNamed(context, '/third');

                  setState(() {});
                },
                child: Text('Score'),
              ),
              Spacer(),
              // SizedBox(height: 330),

              ///
              /// True Button
              ///
              Padding(
                padding: const EdgeInsets.only(left: 5, right: 5, bottom: 10),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(primary: Colors.green, padding: const EdgeInsets.only(top: 20, bottom: 20)),
                  onPressed: () {
                    if (questions[count].answer == true) {
                      /// Correct answer
                      // iconsList.add(tickIcon);
                      correct++;
                      // print('Correct Answer');
                    } else {
                      /// Incorrect
                      // iconsList.add(crossIcon);
                      incorrect++;
                      // print('Incorrect Answer');
                    }
                    count++;
                    setState(() {});
                  },
                  child: Text('TRUE'),
                ),
              ),

              ///
              /// False Button
              ///
              Padding(
                padding: const EdgeInsets.only(left: 5, right: 5),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.red,
                    padding: EdgeInsets.only(top: 20, bottom: 20),
                  ),
                  onPressed: () {
                    if (questions[count].answer == false) {
                      /// Correct Answer
                      //iconsList.add(tickIcon);
                      correct++;
                      // print('Correct answer');
                    } else {
                      /// Incorrect answer
                      //iconsList.add(crossIcon);
                      incorrect++;
                      //print('Incorrect answer');
                    }
                    count++;
                    setState(() {});
                  },
                  child: Text('False'),
                ),
              ),

              //SizedBox(height: 10),

              ///
              /// Row of tick and cross icons
              ///
              //Row(
              // children: iconsList,
              //),
            ],
          ),
        ));
  }
}

/// MYAPP:
///   Homescreen
///     Text
///     Button1
///     button2
///     Tick and cross icons
///
