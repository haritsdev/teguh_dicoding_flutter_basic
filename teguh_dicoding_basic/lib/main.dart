import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(primarySwatch: Colors.blue),
        home: FirstScreen());
  }
}

class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          leading: IconButton(
            icon: const Icon(Icons.menu, color: Colors.white),
            onPressed: () {},
          ),
          title: const Text('first screen'),
          actions: <Widget>[
            IconButton(
                icon: const Icon(Icons.search, color: Colors.white),
                onPressed: () {})
          ]),
      body: Container(
        child: const Text('Hi',
            style: TextStyle(
              fontSize: 40,
            )),
        decoration: BoxDecoration(
            color: Colors.red,
            border: Border.all(color: Colors.green, width: 3),
            borderRadius: BorderRadius.circular(10)),
        padding: const EdgeInsets.all(10),
        margin: const EdgeInsets.all(10),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
      ),
    );
  }
}
