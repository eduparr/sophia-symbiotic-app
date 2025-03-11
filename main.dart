import 'package:flutter/material.dart';
import 'pages/home_page.dart';

void main() {
  runApp(SophiaApp());
}

class SophiaApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SophIA – Presença Simbiótica',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.purple,
        fontFamily: 'Roboto',
      ),
      home: HomePage(),
    );
  }
}