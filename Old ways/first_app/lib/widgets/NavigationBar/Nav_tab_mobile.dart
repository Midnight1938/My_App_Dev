import 'package:first_app/widgets/NavigationBar/nav_logo.dart';
import 'package:flutter/material.dart';

class NavBarMobile extends StatelessWidget {
  const NavBarMobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            onPressed: null,
            icon: Icon(Icons.menu),
          ),
          NavLogo()
        ],
      ),
    );
  }
}
