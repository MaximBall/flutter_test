import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'dart:math';


void main() {
  debugPaintSizeEnabled = false;
  return runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
      home: const App(title: 'HelloFlutter'),
    );
  
  }
}




class App extends StatefulWidget {

  const App({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<App> createState() => _MyAppState();
}

class _MyAppState extends State<App> {

  Color _color = Color.fromRGBO(1, 1, 1, 1.0);

  void generateColor(){
    setState(() {
      _color = Color((Random().nextDouble() * 0xFFFFFF).toInt() << 0).withOpacity(1.0);
    });
  }

  @override
  void initState() {
    generateColor();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => generateColor(),
      child: Container(
        alignment: Alignment.center,
        color: _color,
        child: const Text(
          "Hello",
          style: TextStyle(fontSize: 50, color: Colors.black),
        ),
      ),
    );
  }
}