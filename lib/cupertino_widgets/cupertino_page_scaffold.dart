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
        child: SizedBox(
          height: 100,
          width: 100,
          child: CupertinoContextMenu(
            enableHapticFeedback: true,
            actions: [
              CupertinoContextMenuAction(child: Text('Share it')),
              CupertinoContextMenuAction(
                child: Text('Send it to....'),
                onPressed: () => Navigator.pop(context),
              ),
            ],
            child: Icon(Icons.facebook, size: 72, color: Colors.white),
          ),
        ),
      ),
    );
  }
}
