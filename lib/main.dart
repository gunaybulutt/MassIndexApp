import 'package:flutter/material.dart';
import 'package:mass_index_app/MainPage.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MainPage(),
    );
  }

}