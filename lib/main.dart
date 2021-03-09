import 'package:flutter/material.dart';

void main() => runApp(Calculator());

class Calculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.pink),
      home: Scaffold(
        appBar: AppBar(
          title: Text("kCalculator"),
        ),
        body: Column(
          children: [
            Text("display goes here"),
            buttonGrid()
            // generateButton("buttonTitle", Colors.pink)
          ],
        ),
      ),
    );
  }

  Widget generateButton(String buttonTitle, Color color) {
    return MaterialButton(
      onPressed: () => {},
      child: Text(
        buttonTitle,
        style: TextStyle(color: color),
      ),
      elevation: 13, colorBrightness: Brightness.light,
      padding: EdgeInsets.all(9),
      // color: color,
    );
  }

  Widget buttonGrid() {
    return Column(
      children: [
        Row(children: [
          Expanded(child: generateButton("C", Colors.black)),
          Expanded(child: generateButton("%", Colors.black)),
          Expanded(child: generateButton("clear", Colors.black)),
          Expanded(child: generateButton("%", Colors.black)),
        ]),
        Row(children: [
          Expanded(child: generateButton("7", Colors.black)),
          Expanded(child: generateButton("8", Colors.black)),
          Expanded(child: generateButton("9", Colors.black)),
          Expanded(child: generateButton("X", Colors.black)),
        ]),
        Row(children: [
          Expanded(child: generateButton("4", Colors.black)),
          Expanded(child: generateButton("5", Colors.black)),
          Expanded(child: generateButton("6", Colors.black)),
          Expanded(child: generateButton("-", Colors.black)),
        ]),
        Row(children: [
          Expanded(child: generateButton("1", Colors.black)),
          Expanded(child: generateButton("2", Colors.black)),
          Expanded(child: generateButton("3", Colors.black)),
          Expanded(child: generateButton("+", Colors.black)),
        ]),
        Row(
          children: [
            Expanded(child: generateButton("0", Colors.black)),
            Expanded(child: generateButton("=", Colors.black))
          ],
        )
      ],
    );
  }
}
