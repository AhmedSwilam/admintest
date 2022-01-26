import 'package:adminapp/tables/mainTableScreen.dart';
import 'package:flutter/material.dart';

import 'add_offer/add_offer.dart';
import 'list_customer/component/customer_screen.dart';
import 'list_customer/component/offers_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Flutter Demo',
      home: AddOfferScreen(),
    );
  }
}
