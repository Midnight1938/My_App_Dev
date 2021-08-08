import 'package:first_app/widgets/NavigationBar/nav_logo.dart';
import 'package:flutter/material.dart';
import 'package:first_app/widgets/NavigationBar/NavItems.dart';
import 'package:responsive_builder/responsive_builder.dart';

import 'Nav_tab_desk.dart';
import 'Nav_tab_mobile.dart';

class NavigationBar extends StatelessWidget {
  const NavigationBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: NavBarMobile(),
      tablet: NavBarDesk(),
      desktop: NavBarDesk(),
    );
  }
}
