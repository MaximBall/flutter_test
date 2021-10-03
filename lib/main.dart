import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:hello_flutter/pages/page_hex.dart';
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
      home: const RGBscreen(title: 'HelloFlutter'),
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

  final _random = Random();
  final double _oppacity = 1;

  Color _color = Colors.orangeAccent;

  void generateColor(){
    setState(() {
      _color = Color.fromRGBO(
        _random.nextInt(256), 
        _random.nextInt(256), 
        _random.nextInt(256), 
        _oppacity,
        );
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