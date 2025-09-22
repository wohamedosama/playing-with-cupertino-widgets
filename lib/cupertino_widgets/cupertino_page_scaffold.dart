import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TestScreen extends StatefulWidget {
  const TestScreen({super.key});

  @override
  State<TestScreen> createState() => _TestScreenState();
}

class _TestScreenState extends State<TestScreen> {
  DateTime dateTime = DateTime(2025, 9, 22, 10, 20);

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
            '${dateTime.day} - ${dateTime.month} - ${dateTime.year}',
            style: TextStyle(color: Colors.white),
          ),
          onPressed: () {
            showCupertinoModalPopup(
              context: context,
              builder: (BuildContext context) {
                return Container(
                  height: 250,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(32),
                  ),
                  child: CupertinoDatePicker(
                    backgroundColor: Colors.black12,
                    showTimeSeparator: true,
                    initialDateTime: dateTime,
                    onDateTimeChanged: (DateTime date) {
                      setState(() {
                        dateTime = date;
                      });
                    },
                  ),
                );
              },
            );
          },
        ),
      ),
    );
  }
}
