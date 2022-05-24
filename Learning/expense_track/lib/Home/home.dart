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
  int _numValue1 = 1;
  int _numValue2 = 2;
  int _numValue3 = 3;
  int _numValue4 = 4;
  int _finalValue = 0;
  // Widget Vals
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
            NumberPicker(
              itemWidth: _numWidth,
              itemHeight: _numHeight,
              itemCount: _numCount,
              textStyle: _numStyle,
              haptics: _numHapticc,
              value: _numValue1,
              minValue: 0,
              maxValue: 9,
              onChanged: (value) => setState(() => _numValue1 = value),
            ),
            NumberPicker(
              itemWidth: _numWidth,
              itemHeight: _numHeight,
              itemCount: _numCount,
              textStyle: _numStyle,
              haptics: _numHapticc,
              value: _numValue2,
              minValue: 0,
              maxValue: 9,
              onChanged: (value) => setState(() => _numValue2 = value),
            ),
            NumberPicker(
              itemWidth: _numWidth,
              itemHeight: _numHeight,
              itemCount: _numCount,
              textStyle: _numStyle,
              haptics: _numHapticc,
              value: _numValue3,
              minValue: 0,
              maxValue: 9,
              onChanged: (value) => setState(() => _numValue3 = value),
            ),
            NumberPicker(
              itemWidth: _numWidth,
              itemHeight: _numHeight,
              itemCount: _numCount,
              textStyle: _numStyle,
              haptics: _numHapticc,
              value: _numValue4,
              minValue: 0,
              maxValue: 9,
              onChanged: (value) => setState(() => _numValue4 = value),
            )
          ],
        ),
        NumberPicker(
          axis: Axis.horizontal,
          //itemWidth: _numWidth,
          //itemHeight: _numHeight,
          itemCount: 3,
          value: ((_numValue1 * 1000) +
              (_numValue2 * 100) +
              (_numValue3 * 10) +
              (_numValue4)),
          minValue: 0,
          maxValue: 9999,
          onChanged: (value) => setState(() => _finalValue = value),
        ),
      ],
    );
  }
}
