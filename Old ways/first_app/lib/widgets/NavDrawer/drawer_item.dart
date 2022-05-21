import 'package:first_app/widgets/NavigationBar/NavItems.dart';
import 'package:flutter/material.dart';

class DrawerItem extends StatelessWidget {
  final String title;
  final IconData icon;
  const DrawerItem({required this.icon, required this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 30, top: 60),
      child: Row(
        children: [Icon(icon), SizedBox(width: 30), NavBarItem(title)],
      ),
    );
  }
}
