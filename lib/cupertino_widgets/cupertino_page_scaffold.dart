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
        child: CupertinoButton(
          child: Text(
            'Cupertino Action Sheet',
            style: TextStyle(color: Colors.white),
          ),
          onPressed: () {
            showCupertinoSheet(
              context: context,
              builder: (context) {
                return CupertinoActionSheet(
                  actionScrollController: ScrollController(
                    initialScrollOffset: 0.5,
                  ),
                  message: Text('Action Sheet'),
                  actions: <CupertinoActionSheetAction>[
                    CupertinoActionSheetAction(
                      isDefaultAction: true,
                      child: Text(
                        'Pick Image from the gallery',
                        style: TextStyle(color: Colors.white),
                      ),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                    CupertinoActionSheetAction(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: Text('Cancel'),
                    ),
                  ],
                );
              },
            );
          },
        ),
      ),
    );
  }
}
