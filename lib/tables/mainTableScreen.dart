import 'package:adminapp/list_customer/component/customer_screen.dart';
import 'package:adminapp/list_customer/component/settings_screen.dart';
import 'package:adminapp/list_customer/component/shared_app_title.dart';
import 'package:adminapp/tables/reserved_table.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_svg/svg.dart';

import 'busy_tables.dart';
import 'empty_table.dart';

enum Page { screenReservedTable, screenEmptyTables, screenBusyTables }

extension on Page {
  String get route => describeEnum(this);
}

class MainBodyApp extends HookWidget {
  final Map<Page, Widget> _fragments = {
    Page.screenEmptyTables: const EmptyTable(),
    Page.screenReservedTable: const ReservedTableScreen(),
    Page.screenBusyTables: const BusyTables(),
  };

  @override
  Widget build(BuildContext context) {
    final navigatorKey = GlobalObjectKey<NavigatorState>(context);

    return WillPopScope(
      onWillPop: () async {
        if (navigatorKey.currentState!.canPop()) {
          navigatorKey.currentState!.pop();
          return false;
        }
        return true;
      },
      child: Scaffold(
        body: Column(
          children: <Widget>[
            const SizedBox(
              height: 30.0,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 12.0),
              child: SharedAppTitle(
                title: GestureDetector(
                  onTap: (){
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (BuildContext context) =>
                        const CustomerScreen(),),
                    );
                  },
                  child: const Text(
                    "الطاولات",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 22.0,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                notify: GestureDetector(
                  onTap: (){
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (BuildContext context) =>
                        const SettingsScreen(),
                      ),
                    );
                  },
                  child: Stack(
                    children: [
                      Stack(
                        clipBehavior: Clip.none,
                        children: [
                          SizedBox(
                            child: SvgPicture.asset("assets/svg/notification.svg"),
                          ),
                          Positioned(
                            bottom: 15.0,
                            right: 15.0,
                            child: SvgPicture.asset("assets/svg/notiNumber.svg"),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                title1: const Text(
                  "",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 22.0,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            const SizedBox(
              height: 20.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                GestureDetector(
                  onTap: ()=>navigatorKey.currentState
                      ?.pushNamed(Page.screenReservedTable.route),
                  child: Column(
                    children: const [
                      Text("12",style: TextStyle(
                        fontWeight: FontWeight.bold,color: Colors.orangeAccent,fontSize: 20
                      ),),
                      Text('محجوزة',style: TextStyle(
                          fontWeight: FontWeight.normal,color: Colors.orangeAccent,fontSize: 20
                      ),),
                      Divider(
                        thickness: 4.0,
                        height: 4.0,
                        color: Colors.green,
                      ),
                    ],
                  ),
                ),
                GestureDetector(
                  onTap: ()=>navigatorKey.currentState
                      ?.pushNamed(Page.screenEmptyTables.route),
                  child: Column(
                    children: const [
                      Text("6",style: TextStyle(
                          fontWeight: FontWeight.bold,color: Colors.green,fontSize: 20
                      ),),
                      Text('متاحة',style: TextStyle(
                          fontWeight: FontWeight.normal,color: Colors.green,fontSize: 20
                      ),),
                      Divider(
                        thickness: 4.0,
                        height: 4.0,
                        color: Colors.green,
                      ),
                    ],
                  ),
                ),
                GestureDetector(
                  onTap: ()=>navigatorKey.currentState
                      ?.pushNamed(Page.screenBusyTables.route),
                  child: Column(
                    children: const [
                      Text("9",style: TextStyle(
                          fontWeight: FontWeight.bold,color: Colors.red,fontSize: 20
                      ),),
                      Text('مشغولة',style: TextStyle(
                          fontWeight: FontWeight.normal,color: Colors.red,fontSize: 20
                      ),),
                      Divider(
                        thickness: 4.0,
                        height: 4.0,
                        color: Colors.green,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Expanded(
              child: Navigator(
                key: navigatorKey,
                initialRoute: Page.screenEmptyTables.route,
                onGenerateRoute: (settings) {
                  final pageName = settings.name;

                  final page = _fragments.keys.firstWhere(
                          (element) => describeEnum(element) == pageName);

                  return MaterialPageRoute(settings: settings,
                      builder: (context) => _fragments[page]!);
                },
              ),
            ),

          ],
        ),
      ),
    );
  }
}

class UserProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Text(' screenProfile ...'),
    );
  }
}

class DashboardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Text(' screenDashboard ...'),
    );
  }
}

class SearchPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Text(' screenSearch ...'),
    );
  }
}
