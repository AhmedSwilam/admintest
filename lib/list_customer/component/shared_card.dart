import 'package:flutter/material.dart';

class AppCard extends StatefulWidget {
  final Color color;
  final Widget widget;

  const AppCard({Key? key, required this.color, required this.widget})
      : super(key: key);

  @override
  _AppCardState createState() => _AppCardState();
}

class _AppCardState extends State<AppCard> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
          ),
          margin: const EdgeInsets.all(10),
          color: widget.color,
          child: Container(
              padding: const EdgeInsets.all(10),
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(20.0),
                ),
              ),
              child: widget.widget),
        ),
      ],
    );
  }
}
