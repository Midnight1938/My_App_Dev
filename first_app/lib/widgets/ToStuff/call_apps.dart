import 'package:first_app/widgets/ToStuff/call_apps_desk.dart';
import 'package:first_app/widgets/ToStuff/call_apps_mobile.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class toApps extends StatelessWidget {
  final String word;
  const toApps({required this.word});

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: toAppsMobile(word: word),
      tablet: toAppsDesk(word: word),
    );
  }
}
