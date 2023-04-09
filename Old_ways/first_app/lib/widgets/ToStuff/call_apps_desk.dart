import 'package:first_app/Constants/app_colours.dart';
import 'package:flutter/material.dart';

class toAppsDesk extends StatelessWidget {
  final String word;
  const toAppsDesk({required this.word});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 60, vertical: 50),
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
