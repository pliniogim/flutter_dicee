import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: const Text('Dices'),
          backgroundColor: Colors.red,
        ),
        body: const DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  const DicePage({Key? key}) : super(key: key);

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  var random = Random();
  int leftDiceNumber = 1;
  int rightDiceNumber = 1;

  @override
  Widget build(BuildContext context) {

    void changeDice() {
      setState(() {
        leftDiceNumber = random.nextInt(6) + 1;
        rightDiceNumber = random.nextInt(6) + 1;
      });
    }

    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextButton(
                style: TextButton.styleFrom(primary: Colors.transparent),
                onPressed: () {
                  changeDice();
                },
                child: Image.asset(
                  'images/dice$leftDiceNumber.png',
                ),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextButton(
                style: TextButton.styleFrom(primary: Colors.transparent),
                onPressed: () {
                  changeDice();
                },
                child: Image.asset(
                  'images/dice$rightDiceNumber.png',
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}