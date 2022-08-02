import 'package:day7/shades_page.dart';
import 'package:day7/shades_with_params.dart';
import 'package:flutter/material.dart';
import 'home_page.dart';

const accents = [100, 20, 400, 700];

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
      home: const MyHomePage(title: 'Colors'),
      routes: {
        '/shades': (context) => ShadesWithParams(),
      },
    );
  }
}