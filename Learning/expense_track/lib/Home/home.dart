import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Icon(Icons.holiday_village_rounded, size: 100.0),
          Text(
            'This is the Home',
            style: TextStyle(fontSize: 20),
          )
        ],
      ),
    );
  }
}
