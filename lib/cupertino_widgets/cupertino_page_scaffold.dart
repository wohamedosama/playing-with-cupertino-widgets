import 'package:cupertino_widgets_test/cupertino_widgets/second_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TestScreen extends StatefulWidget {
  const TestScreen({super.key});

  @override
  State<TestScreen> createState() => _TestScreenState();
}

class _TestScreenState extends State<TestScreen> {
  DateTime dateTime = DateTime(2025, 9, 22, 10, 20);

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      backgroundColor: Colors.indigo,
      navigationBar: CupertinoNavigationBar(
        automaticBackgroundVisibility: false,
        middle: Text('Playing with Cupertino'),
        backgroundColor: Colors.black45,
        brightness: Brightness.dark,
      ),
      child: Center(
        child: CupertinoButton(
          child: Text(
            'Cupertino Page Route',
            style: TextStyle(color: Colors.white),
          ),
          onPressed: () {
            Navigator.of(
              context,
            ).push(CupertinoPageRoute(builder: (context) => SecondPage()));
          },
        ),
      ),
    );
  }
}
