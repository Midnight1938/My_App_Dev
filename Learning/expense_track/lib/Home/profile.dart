import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Icon(Icons.person_add_alt_1_rounded, size: 100.0),
          Text(
            'This is the Profile',
            style: TextStyle(fontSize: 20),
          )
        ],
      ),
    );
  }
}
