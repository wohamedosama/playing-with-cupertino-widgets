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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CupertinoButton(
              child: Text(
                'Cupertino Button',
                style: TextStyle(color: Colors.white, fontSize: 22),
              ),
              onPressed: () {},
            ),
            SizedBox(height: 20),
            CupertinoButton.filled(
              color: Colors.black,
              child: Text(
                'Cupertino Button',
                style: TextStyle(color: Colors.white, fontSize: 22),
              ),
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
