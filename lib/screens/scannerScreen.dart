import 'package:flutter/material.dart';

class Scannerscreen extends StatefulWidget {
  const Scannerscreen({super.key});

  @override
  State<Scannerscreen> createState() => _ScannerscreenState();
}

class _ScannerscreenState extends State<Scannerscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('Scanner Screen'),
      ),
    );
  }
}
