import 'dart:async';

import 'package:flutter/material.dart';

class WeightSelect extends StatefulWidget {
  @override
  _WeightSelectState createState() => _WeightSelectState();
}

class _WeightSelectState extends State<WeightSelect> {
  var _weight = 0;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          GestureDetector(
            child: Center(
              child: Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                  color: const Color(0xFFF8F8F8),
                  borderRadius: BorderRadius.circular(14),
                ),
                child: Image.asset("assets/svg/Icons- Minus- 24px.png"),
              ),
            ),
            onTap: () {
              setState(() {
                if (_weight > 0) _weight--;
              });
            },
          ),
          const SizedBox(width: 30.0),
          Container(
            height: 60,
            width: 60,
            decoration: BoxDecoration(
              color: const Color(0xFFF8F8F8),
              borderRadius: BorderRadius.circular(14),
            ),
            child: Center(
              child: Text(
                "$_weight",
                style: const TextStyle(
                  color: Colors.grey,
                  fontWeight: FontWeight.bold,
                  fontSize: 30.0,
                ),
              ),
            ),
          ),
          const SizedBox(width: 20.0),
          GestureDetector(
            child: Center(
              child: Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                  color: const Color(0xFFF8F8F8),
                  borderRadius: BorderRadius.circular(14),
                ),
                child: Image.asset("assets/svg/Icons- Add- 24px.png"),
              ),
            ),
            onTap: () {
              setState(() {
                _weight++;
              });
            },
          ),
        ],
      ),
    );
  }
}
