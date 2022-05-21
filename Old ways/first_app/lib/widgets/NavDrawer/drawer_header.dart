import 'package:first_app/Constants/app_colours.dart';
import 'package:flutter/material.dart';

class DrawerHead extends StatelessWidget {
  const DrawerHead({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      color: primaryUseColour,
      alignment: Alignment.center,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            'Youre On Mobile??',
            style: TextStyle(
                fontSize: 18, fontWeight: FontWeight.w800, color: Colors.white),
          ),
          Text(
            'Or maybe a thin browser',
            style: TextStyle(color: Colors.white),
          )
        ],
      ),
    );
  }
}
