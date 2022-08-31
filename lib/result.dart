import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/main.dart';

class Result extends StatelessWidget {
  final int resultScore;

  Result(this.resultScore);

  String get resultPharse {
    String text;
    if (resultScore <= 5) {
      text = 'you are Bad!';
    } else if (resultScore <= 15) {
      text = "You are innocent";
    } else if (resultScore <= 24) {
      text = 'you are to good';
    } else {
      text = 'You are Top of World';
    }
    return text;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Center(
          child: Text(
            resultPharse,
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 34, fontWeight: FontWeight.bold),
          ),
        ),
        Center(
          child: ElevatedButton.icon(
            icon : Icon(Icons.restart_alt),
            onPressed: (() {
              Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => MyApp()),);
              print('you presses');
            }),
            label: Text(
              'Restart Quiz',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 18),
            ),
          ),
        ),
      ],
    );
  }
}
