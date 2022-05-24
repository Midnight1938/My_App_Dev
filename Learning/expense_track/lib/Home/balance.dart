import 'package:flutter/material.dart';

class Balance extends StatelessWidget {
  const Balance({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Icon(Icons.balance_rounded, size: 100.0),
          Text(
            'This is the Balance',
            style: TextStyle(fontSize: 20),
          )
        ],
      ),
    );
  }
}
