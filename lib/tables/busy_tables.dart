import 'package:adminapp/widgets/widget_busy_tables.dart';
import 'package:adminapp/widgets/widget_reserved_tables.dart';
import 'package:flutter/material.dart';

class BusyTables extends StatefulWidget {
  const BusyTables({Key? key}) : super(key: key);

  @override
  _BusyTablesState createState() => _BusyTablesState();
}

class _BusyTablesState extends State<BusyTables> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children:  const [
              WidgetBusyTables(),
              SizedBox(
                height: 20.0,
              ),
              WidgetBusyTables(),
            ],
          ),
        )
    );
  }
}
