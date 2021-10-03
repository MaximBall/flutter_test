import 'package:flutter/material.dart';
import 'dart:math';


class RGBscreen extends StatefulWidget {

  const RGBscreen({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<RGBscreen> createState() => _RGBscreen();
}

class _RGBscreen extends State<RGBscreen> {

  final _random = Random();

  bool pressed = false;
  Color _color = Colors.purple;
  final double _oppacity = 1;

  void generate_color(){
      _color = Color((Random().nextDouble() * 0xFFFFFF).toInt() << 0).withOpacity(1.0);
  }

  void generate_press(){
    setState(() {
      pressed = !pressed;
      generate_color();
    });
  }

  @override
  Widget build(BuildContext context) {

    double width_screen = MediaQuery.of(context).size.width;
    double height_screen = MediaQuery.of(context).size.height;

    double height = pressed ? 150 : height_screen;
    double width = pressed ? 100 : width_screen;
    Color  color_screen = pressed ? _color : _color;

    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(1.0),
        child: Center(
          child: InkWell(
            onTap: generate_press,
            child: AnimatedContainer(
              duration: Duration(seconds: 5),
              color: color_screen,
              width: width,
              height: height,
            ),
          ),
        ),
      ),
    );
  }
}