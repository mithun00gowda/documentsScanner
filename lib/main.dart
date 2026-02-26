import 'package:documentscanner/screens/authentication/rootScreen.dart';
import 'package:documentscanner/screens/homescreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {

    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
      ),
      home: Rootscreen(),
    );
  }
}
