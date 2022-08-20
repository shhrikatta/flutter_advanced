import 'package:flutter/material.dart';

class MyApp extends StatefulWidget {
  // const MyApp({Key? key}) : super(key: key); // default constructor
  // ignore: prefer_const_constructors_in_immutables
  MyApp._internal(); // private name constructor

  int appState = 0;

  static final MyApp instance = MyApp._internal(); // single instance
  factory MyApp() => instance; // factory for class instance

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
