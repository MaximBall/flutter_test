import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:hello_flutter/pages/page_hex.dart';
import 'dart:math';

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

  void generateColor() {
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
    return Scaffold(
      appBar: AppBar(
        title: const Text('RGB'),
      ),
      body: GestureDetector(
        onTap: () => generateColor(),
        child: Container(
          alignment: Alignment.center,
          color: _color,
          child: const Text(
            "Hello",
            style: TextStyle(fontSize: 50, color: Colors.black),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color(0xff03dac6),
        foregroundColor: Colors.black,
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const RGBscreen()),
          );
        },
        child: const Text(
          'HEX',
        ),
      ),
    );
  }
}
