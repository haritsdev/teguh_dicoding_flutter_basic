import 'package:flutter/material.dart';
import 'package:teguh_dicoding_basic/button_widget.dart';
import 'package:teguh_dicoding_basic/input_widget.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(primarySwatch: Colors.blue),
        home: InputWidget());
  }
}
