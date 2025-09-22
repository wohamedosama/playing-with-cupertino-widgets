import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TestScreen extends StatefulWidget {
  const TestScreen({super.key});

  @override
  State<TestScreen> createState() => _TestScreenState();
}

class _TestScreenState extends State<TestScreen> {
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
      child: CupertinoScrollbar(
        thickness: 0.6,
        child: ListView.separated(
          itemBuilder: (context, index) {
            return Center(
              child: Text(
                '${index + 1}',
                style: TextStyle(color: Colors.white, fontSize: 28),
              ),
            );
          },
          separatorBuilder: (context, index) {
            return Divider(color: Colors.black45);
          },
          itemCount: 50,
        ),
      ),
    );
  }
}
