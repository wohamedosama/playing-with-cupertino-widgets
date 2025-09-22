import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TestScreen extends StatefulWidget {
  const TestScreen({super.key});

  @override
  State<TestScreen> createState() => _TestScreenState();
}

final TextEditingController textEditingController = TextEditingController();

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
      child: Padding(
        padding: const EdgeInsets.only(left: 16.0, right: 16, top: 100),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            CupertinoSearchTextField(
              keyboardType: TextInputType.phone,
              backgroundColor: Colors.black45,
              controller: textEditingController,
            ),
          ],
        ),
      ),
    );
  }
}
