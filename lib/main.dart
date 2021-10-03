import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:hello_flutter/pages/page_rgb.dart';

void main() {
  debugPaintSizeEnabled = false;
  return runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
      home: const App(title: 'HelloFlutter'),
    );
  }
}