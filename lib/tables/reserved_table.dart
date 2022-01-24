import 'package:adminapp/widgets/widget_reserved_tables.dart';
import 'package:flutter/material.dart';

  class ReservedTableScreen extends StatefulWidget {
  const ReservedTableScreen({Key? key}) : super(key: key);

  @override
  _ReservedTableScreenState createState() => _ReservedTableScreenState();
}

class _ReservedTableScreenState extends State<ReservedTableScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: const [
            ReservedTablesWidget(),
            ReservedTablesWidget(),
          ],
        ),
      )
    );
  }
}
