import 'package:flutter/material.dart';

class NavLogo extends StatelessWidget {
  const NavLogo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      width: 100,
      child: Image.asset('assets/Skull-7.png'),
    );
  }
}
