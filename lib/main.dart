import 'package:flutter/material.dart';
import 'package:tarea_01/screens/home.dart';
import 'package:tarea_01/screens/login.dart';
import 'package:tarea_01/screens/scrollable.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
      // ignore: prefer_const_constructors
      home: LoginPage(),
    );
  }
}