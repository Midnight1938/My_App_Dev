import 'package:flutter/material.dart';
import 'package:first_app/widgets/Details/about_me.dart';
import 'package:first_app/widgets/ToStuff/call_apps.dart';

class ContentDeskView extends StatelessWidget {
  const ContentDeskView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        InfoMe(),
        Expanded(
            child: Center(
          child: toApps(word: 'My Github'),
        ))
      ],
    );
  }
}
