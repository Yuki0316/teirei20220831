import 'dart:html';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: InteractiveViewer(
          child: Container(
            width: 400,
            height: 400,
            child: FittedBox(
              child: Image.asset("assets/background.png"),
            ),
          ),
        ),
      )
    );
  }
}
class CustomCard extends StatefulWidget {
  const CustomCard({Key? key}) : super(key: key);
   @override
  State<StatefulWidget> createState() {
    return CustomCardState();
  }
}

class CustomCardState extends State<CustomCard> {
  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: Align(
        alignment: Alignment.topCenter,
        child: Image.asset('image/image.jpg', fit: BoxFit.fill),
      ),
      elevation: 10,
    );
  }
}
