import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TestScreen extends StatelessWidget {
  const TestScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      backgroundColor: Colors.indigo,
      navigationBar: CupertinoNavigationBar(
        automaticBackgroundVisibility: false,
        middle: Text('Testing'),
        backgroundColor: Colors.black45,
        brightness: Brightness.dark,
      ),
      child: Center(
        child: CupertinoActivityIndicator(color: Colors.yellow, radius: 20),
      ),
    );
  }
}
