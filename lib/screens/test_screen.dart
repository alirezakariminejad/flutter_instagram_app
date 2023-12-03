import 'package:flutter/material.dart';

class TestApp extends StatefulWidget {
  const TestApp({super.key});

  @override
  State<TestApp> createState() => _TestAppState();
}

class _TestAppState extends State<TestApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: ElevatedButton(
            onPressed: () {
              setState(() {
                showModalBottomSheet(
                  context: context,
                  builder: (BuildContext context) {
                    return Container(
                      height: 200.0,
                      child: Center(
                        child: Text('showModalBottomSheet'),
                      ),
                    );
                  },
                );
              });
            },
            child: Text('Click Me'),
          ),
        ),
      ),
    );
  }
}
