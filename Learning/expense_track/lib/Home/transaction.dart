import 'package:flutter/material.dart';

class Transaction extends StatelessWidget {
  const Transaction({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Icon(Icons.currency_exchange_rounded, size: 100.0),
          Text(
            'This is the Transaction',
            style: TextStyle(fontSize: 20),
          )
        ],
      ),
    );
  }
}
