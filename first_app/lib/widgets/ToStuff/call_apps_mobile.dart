import 'package:first_app/Constants/app_colours.dart';
import 'package:flutter/material.dart';

class toAppsMobile extends StatelessWidget {
  final String word;
  const toAppsMobile({required this.word});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      alignment: Alignment.center,
      child: Text(
        word,
        style: TextStyle(
            fontSize: 18, fontWeight: FontWeight.w800, color: Colors.white),
      ),
      decoration: BoxDecoration(
        color: primaryUseColour,
        borderRadius: BorderRadius.circular(5),
      ),
    );
  }
}
