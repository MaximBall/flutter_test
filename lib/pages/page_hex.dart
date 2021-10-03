import 'package:flutter/material.dart';
import 'dart:math';

class RGBscreen extends StatefulWidget {
  const RGBscreen({Key? key}) : super(key: key);

  @override
  State<RGBscreen> createState() => _RGBscreen();
}

class _RGBscreen extends State<RGBscreen> {
  bool pressed = false;
  Color _color = Colors.purple;

  void generate_color() {
    _color =
        Color((Random().nextDouble() * 0xFFFFFF).toInt() << 0).withOpacity(1.0);
  }

  void generate_press() {
    setState(() {
      pressed = !pressed;
      generate_color();
    });
  }

  @override
  Widget build(BuildContext context) {
    double width_screen = MediaQuery.of(context).size.width;
    double height_screen = MediaQuery.of(context).size.height;

    double _size = pressed ? 12 : 45;
    double height = pressed ? 150 : height_screen;
    double width = pressed ? 100 : width_screen;
    Color color_screen = pressed ? _color : _color;

    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(1.0),
        child: Center(
          child: InkWell(
            onTap: generate_press,
            child: AnimatedContainer(
              duration: const Duration(seconds: 3),
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