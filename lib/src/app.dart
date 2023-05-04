// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

// import 'package:contador/src/pages/home_page.dart';
import 'package:contador/src/pages/contador_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(context) {
    return MaterialApp(
      home: Center(
        // child: HomePage(),
        child: Contador(),
      ),
    );
  }
}