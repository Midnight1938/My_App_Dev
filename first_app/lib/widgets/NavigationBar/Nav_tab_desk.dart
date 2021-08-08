import 'package:flutter/material.dart';
import 'nav_logo.dart';
import 'NavItems.dart';

class NavBarDesk extends StatelessWidget {
  const NavBarDesk({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          NavLogo(),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              NavBarItem('Sub Categs'),
              SizedBox(
                width: 60,
              ),
              NavBarItem('About Me'),
            ],
          )
        ],
      ),
    );
  }
}
