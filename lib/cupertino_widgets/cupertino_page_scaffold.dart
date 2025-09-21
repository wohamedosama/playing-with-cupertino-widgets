import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TestScreen extends StatelessWidget {
  const TestScreen({super.key});

  @override
  // Cupertino widgets provide iOS-style UI components for Flutter apps
  // CupertinoPageScaffold it's like Scaffold widget
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      backgroundColor: Colors.redAccent,
      navigationBar: CupertinoNavigationBar(),
      child: Column(children: [Container()]),
    );
  }
}
