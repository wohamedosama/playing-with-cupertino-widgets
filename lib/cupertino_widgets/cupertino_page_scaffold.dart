import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TestScreen extends StatelessWidget {
  const TestScreen({super.key});

  @override
  // Cupertino widgets provide iOS-style UI components for Flutter apps
  // CupertinoNavigationBar it's like Appbar widget
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      backgroundColor: Colors.deepPurpleAccent,
      navigationBar: CupertinoNavigationBar(
        //Whether the navigation bar appears transparent when no content is scrolled under.
        //If you choose false you can see your app bar
        automaticBackgroundVisibility: false,
        // like title in the app bar widget
        middle: Text('Testing'),
        backgroundColor: Colors.black45,
        // you can choose here the brightness for the notificatin bar color
        brightness: Brightness.dark,

        //Manually specify the previous route's title when automatically implying the leading back button.
        previousPageTitle: 'String',
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.arrow_back, color: Colors.white),
        ),
      ),
      child: Column(children: [Container()]),
    );
  }
}
