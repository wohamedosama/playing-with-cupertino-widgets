import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TestScreen extends StatefulWidget {
  const TestScreen({super.key});

  @override
  State<TestScreen> createState() => _TestScreenState();
}

class _TestScreenState extends State<TestScreen> {
  bool isLight = false;

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
      child: Padding(
        padding: const EdgeInsets.only(left: 16.0, right: 16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: CupertinoSwitch(
                inactiveThumbColor: Colors.grey,
                value: isLight,
                onChanged: (isLight) {
                  setState(() {
                    this.isLight = isLight;
                  });
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
