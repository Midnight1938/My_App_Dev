import 'package:first_app/views/home/home_contentdesk.dart';
import 'package:first_app/views/home/home_contentmobile.dart';
import 'package:first_app/widgets/NavDrawer/NavDrawer.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

import 'package:first_app/widgets/NavigationBar/navigation_bar.dart';
import 'package:first_app/widgets/ToStuff/call_apps.dart';
import 'package:first_app/widgets/Details/about_me.dart';
import 'package:first_app/widgets/CenteredView/center_view.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
        builder: (context, sizingInfo) => Scaffold(
              drawer: sizingInfo.deviceScreenType == DeviceScreenType.mobile
                  ? NavDrawer()
                  : null,
              backgroundColor: Colors.white,
              body: CenteredView(
                child: Column(
                  children: [
                    NavigationBar(),
                    Expanded(
                      child: ScreenTypeLayout(
                        desktop: ContentDeskView(),
                        mobile: ContentMobileView(),
                      ),
                    ),
                  ],
                ),
              ),
            ));
  }
}
