import 'package:flutter/material.dart';

class Data extends StatelessWidget {
  const Data({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Icon(Icons.money_rounded, size: 100.0),
          Text(
            'This is the Data',
            style: TextStyle(fontSize: 20),
          )
        ],
      ),
    );
  }
}
