import 'package:flutter/material.dart';

class InputWidget extends StatefulWidget {
  @override
  State<InputWidget> createState() => _InputWidgetState();
}

class _InputWidgetState extends State<InputWidget> {
  final TextEditingController _controller = TextEditingController();
  bool lightOn = false;
  String language;
  bool agree = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Widget input')),
      body: SingleChildScrollView(
        child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(children: [
              TextField(
                controller: _controller,
                decoration: const InputDecoration(
                    hintText: 'Write your name here', labelText: 'your name'),
              ),
              const SizedBox(
                height: 10,
              ),
              ElevatedButton(
                onPressed: () {
                  showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                            content: Text('Hello ${_controller.text}'));
                      });
                },
                child: Text('Submit'),
              ),
              const SizedBox(
                height: 10,
              ),
              Switch(
                  value: lightOn,
                  onChanged: (bool value) {
                    setState(() {
                      lightOn = value;
                    });

                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                        content: Text(lightOn ? 'Light on' : 'Light off'),
                        duration: Duration(seconds: 1)));
                  }),
              const SizedBox(
                height: 10,
              ),
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  ListTile(
                      leading: Radio<String>(
                          value: 'Dart',
                          groupValue: language,
                          onChanged: (String value) {
                            setState(() {
                              language = value;
                              showSnackbar();
                            });
                          }),
                      title: const Text('Dart')),
                  ListTile(
                    leading: Radio(
                        value: 'Kotlin',
                        groupValue: language,
                        onChanged: (String value) {
                          setState(() {
                            language = value;
                            showSnackbar();
                          });
                        }),
                    title: Text('Kotlin'),
                  ),
                  ListTile(
                    leading: Radio(
                        value: 'Swift',
                        groupValue: language,
                        onChanged: (String value) {
                          setState(() {
                            language = value;
                            showSnackbar();
                          });
                        }),
                    title: const Text('Swift'),
                  ),
                  ListTile(
                    leading: Checkbox(
                      value: agree,
                      onChanged: (bool value) {
                        setState(() {
                          agree = value;
                        });
                      },
                    ),
                    title: Text('Agree / Disagree'),
                  ),
                ],
              )
            ])),
      ),
    );
  }

  void showSnackbar() {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Text('$language selected'),
      duration: const Duration(seconds: 4),
    ));
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
