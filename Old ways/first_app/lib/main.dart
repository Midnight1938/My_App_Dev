import 'package:flutter/material.dart';
import 'package:first_app/views/home/home_view.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'First Flutter',
        theme: ThemeData(
            primarySwatch: Colors.blue,
            textTheme: Theme.of(context).textTheme.apply(fontFamily: 'Mirava')),
        home: HomeView());
  }
}
