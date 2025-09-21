import 'package:flutter/cupertino.dart';

class TestScreen extends StatelessWidget {
  const TestScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text('Cupertino Appliaction Testing'),
        backgroundColor: CupertinoColors.systemBlue.withOpacity(0.7),
        automaticBackgroundVisibility: false,
        brightness: Brightness.light,
      ),
      child: Center(child: Text('Testing')),
    );
  }
}
