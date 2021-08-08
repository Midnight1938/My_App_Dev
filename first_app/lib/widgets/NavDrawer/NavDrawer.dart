import 'package:first_app/widgets/NavDrawer/drawer_header.dart';
import 'package:first_app/widgets/NavDrawer/drawer_item.dart';
import 'package:flutter/material.dart';

class NavDrawer extends StatelessWidget {
  const NavDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(color: Colors.black12, blurRadius: 16),
        ],
      ),
      child: Column(
        children: [
          DrawerHead(),
          DrawerItem(icon: Icons.video_label, title: 'Some Videos'),
          DrawerItem(icon: Icons.help, title: 'About Me')
        ],
      ),
    );
  }
}
