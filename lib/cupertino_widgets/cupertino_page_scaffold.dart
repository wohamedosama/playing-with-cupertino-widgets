import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TestScreen extends StatefulWidget {
  const TestScreen({super.key});

  @override
  State<TestScreen> createState() => _TestScreenState();
}

class _TestScreenState extends State<TestScreen> {
  double value = 100;

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
        padding: const EdgeInsets.only(left: 16.0, right: 16, top: 150),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text('${value.toString()} '),
            SizedBox(height: 30),
            SizedBox(
              width: double.infinity,
              child: CupertinoSlider(
                min: 10,
                max: 600,
                divisions: 10,
                thumbColor: Colors.black45,
                value: value,
                onChanged: (index) {
                  setState(() {
                    value = index;
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
