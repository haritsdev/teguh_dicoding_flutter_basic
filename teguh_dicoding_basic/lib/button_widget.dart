// ignore: file_names
import 'package:flutter/material.dart';

class ButtonWidget extends StatefulWidget {
  const ButtonWidget({Key key}) : super(key: key);

  @override
  State<ButtonWidget> createState() => _ButtonWidgetState();
}

class _ButtonWidgetState extends State<ButtonWidget> {
  String language;
  TextEditingController _controller = TextEditingController();
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
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.all(5),
            child: ElevatedButton(
              onPressed: () {},
              child: Text("Elevated Button"),
            ),
          ),
          Container(
            margin: EdgeInsets.all(5),
            child: TextButton(
              onPressed: () {},
              child: Text("Text Button"),
            ),
          ),
          Container(
            margin: EdgeInsets.all(5),
            child: OutlinedButton(
              onPressed: () {},
              child: Text("Outlined Button"),
            ),
          ),
          Container(
            margin: EdgeInsets.all(5),
            child: IconButton(
              icon: Icon(Icons.volume_down),
              onPressed: () {},
              tooltip: 'Decrease volume',
            ),
          ),
          Container(
              margin: EdgeInsets.all(10),
              child: DropdownButton<String>(
                items: const <DropdownMenuItem<String>>[
                  DropdownMenuItem<String>(
                    value: 'Dart',
                    child: Text('Dart'),
                  ),
                  DropdownMenuItem<String>(
                    value: 'Kotlin',
                    child: Text('Kotlin'),
                  ),
                  DropdownMenuItem<String>(
                    value: 'Swift',
                    child: Text('Swift'),
                  )
                ],
                value: language,
                hint: Text('Select language'),
                onChanged: (String value) {
                  setState(() {
                    language = value;
                  });
                },
              ))
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
      ),
    );
  }
}
