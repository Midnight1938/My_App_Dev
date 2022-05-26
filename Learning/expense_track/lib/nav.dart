import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

import 'package:expense_track/Home/home.dart';
import 'package:expense_track/Home/transaction.dart';
import 'package:expense_track/Home/balance.dart';
import 'package:expense_track/Home/profile.dart';

class Nav extends StatefulWidget {
  const Nav({Key? key}) : super(key: key);

  @override
  State<Nav> createState() => _NavState();
}

class _NavState extends State<Nav> {
  int _selectedIndex = 0;
  final List<Widget> _widgetOptions = <Widget>[
    const Home(), //? Main area
    const Transaction(), //? Money spent
    const Balance(), //? Allowance
    const Profile(), //? Settings and export
  ];

  void _onItemTap(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.transparent,
        buttonBackgroundColor: Colors.blueGrey,
        color: Colors.cyanAccent,
        animationDuration: const Duration(milliseconds: 300),
        items: const <Widget>[
          Icon(Icons.home, size: 40), //* Home
          Icon(Icons.shopping_bag_rounded, size: 40), //* transaction
          Icon(Icons.currency_rupee_rounded, size: 40), //* balance
          Icon(Icons.person_outline_rounded, size: 40), //* profile
        ],
        onTap: _onItemTap,
      ),
    );
  }
}
