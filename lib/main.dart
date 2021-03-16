import 'package:flutter/material.dart';

void main() {
  runApp(
    MyApp(),
  );
}

class MyApp extends StatelessWidget {
  Expanded buildcode({Color color, int soundnumber}) {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {},
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildcode(color: Colors.red),
              buildcode(color: Colors.orange),
              buildcode(color: Colors.yellow),
              buildcode(color: Colors.green),
              buildcode(color: Colors.teal),
              buildcode(color: Colors.blue),
              buildcode(color: Colors.purple),
            ],
          ),
        ),
      ),
    );
  }
}
