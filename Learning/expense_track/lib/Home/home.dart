import 'package:flutter/material.dart';
import 'package:numberpicker/numberpicker.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Icon(Icons.holiday_village_rounded, size: 100.0),
          Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
            _ExpenseVals(),
          ]),
          const Text(
            'This is the Home Price',
            style: TextStyle(fontSize: 20),
          )
        ],
      ),
    );
  }
}

class _ExpenseVals extends StatefulWidget {
  @override
  __ExpenseValsState createState() => __ExpenseValsState();
}

class __ExpenseValsState extends State<_ExpenseVals> {
  int _valThos = 1;
  int _valHuns = 2;
  int _valTens = 3;
  int _valOnes = 4;
  int _valFinal = 0;
  // Widget Vals
  final _infiLoop = true;
  final _numHapticc = true;
  final _numStyle = TextStyle(fontSize: 30);
  final _numCount = 5;
  final _numHeight = 65.0;
  final _numWidth = 55.0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Row(
          children: <Widget>[
            const SizedBox(height: 16),
            NumberPicker(
              infiniteLoop: _infiLoop,
              itemWidth: _numWidth,
              itemHeight: _numHeight,
              itemCount: _numCount,
              textStyle: _numStyle,
              haptics: _numHapticc,
              value: _valThos,
              minValue: 0,
              maxValue: 9,
              onChanged: (value) => setState(() => _valThos = value),
            ),
            const SizedBox(height: 16),
            NumberPicker(
              infiniteLoop: _infiLoop,
              itemWidth: _numWidth,
              itemHeight: _numHeight,
              itemCount: _numCount,
              textStyle: _numStyle,
              haptics: _numHapticc,
              value: _valHuns,
              minValue: 0,
              maxValue: 9,
              onChanged: (value) => setState(() => _valHuns = value),
            ),
            const SizedBox(height: 16),
            NumberPicker(
              infiniteLoop: _infiLoop,
              itemWidth: _numWidth,
              itemHeight: _numHeight,
              itemCount: _numCount,
              textStyle: _numStyle,
              haptics: _numHapticc,
              value: _valTens,
              minValue: 0,
              maxValue: 9,
              onChanged: (value) => setState(() => _valTens = value),
            ),
            const SizedBox(height: 16),
            NumberPicker(
              infiniteLoop: _infiLoop,
              itemWidth: _numWidth,
              itemHeight: _numHeight,
              itemCount: _numCount,
              textStyle: _numStyle,
              haptics: _numHapticc,
              value: _valOnes,
              minValue: 0,
              maxValue: 9,
              onChanged: (value) => setState(() => _valOnes = value),
            ),
          ],
        ),
        NumberPicker(
          axis: Axis.horizontal,
          itemCount: 3,
          value: ((_valThos * 1000) +
              (_valHuns * 100) +
              (_valTens * 10) +
              (_valOnes)),
          minValue: 0,
          maxValue: 9999,
          onChanged: (value) => setState(() => _valFinal = value),
        ),
      ],
    );
  }
}
