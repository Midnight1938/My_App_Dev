import 'package:flutter/material.dart';

class History extends StatelessWidget {
  const History({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Icon(Icons.work_history_rounded, size: 100.0),
          Text(
            'This is the History',
            style: TextStyle(fontSize: 20),
          )
        ],
      ),
    );
  }
}
