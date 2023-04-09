import 'package:first_app/widgets/Details/about_me.dart';
import 'package:flutter/material.dart';
import 'package:first_app/widgets/ToStuff/call_apps.dart';

class ContentMobileView extends StatelessWidget {
  const ContentMobileView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.center,
      children: const [
        InfoMe(),
        SizedBox(height: 100),
        toApps(word: 'My Github'),
      ],
    );
  }
}
