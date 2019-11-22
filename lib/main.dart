import "package:flutter/material.dart";

void main() => runApp(MyDemoApp01());

class MyDemoApp01 extends StatelessWidget {
  void answerQuestion() {
    print("Question answered!");
  }

  // BuildContext ist der Type, context einfach ein variablen Name
  // Widget ist der returning Type
  @override
  Widget build(BuildContext context) {
    var questions = [
      "What's your fav color?",
      "What's your fav food?",
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Demo App 01"),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("Question"),
            RaisedButton(
              child: Text("Answer 1"),
              onPressed: answerQuestion,
            ),
            RaisedButton(
              child: Text("Answer 2"),
              onPressed: () {
                print("anonym");
              },
            ),
            RaisedButton(
              child: Text("Answer 3"),
              onPressed: answerQuestion,
            )
          ],
        ),
      ),
    );
  }
}
