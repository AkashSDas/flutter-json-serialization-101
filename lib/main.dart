import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Json Serilization 101',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: Text('Flutter Json Serilization 101')),
        body: Container(
          child: Center(
            child: Text('Lets Go!!!'),
          ),
        ),
      ),
    );
  }
}
