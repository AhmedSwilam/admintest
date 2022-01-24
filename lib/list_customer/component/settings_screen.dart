import 'package:adminapp/tables/mainTableScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'customer_screen.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  _SettingsScreenState createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  bool isSwitched = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Scaffold(
        body: Column(
          children: [
            const SizedBox(
              height: 40.0,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30.0, right: 30.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (BuildContext context) => MainBodyApp(),
                          ),
                        );
                      },
                      child: Stack(
                        clipBehavior: Clip.none,
                        children: [
                          SizedBox(
                            child:
                                SvgPicture.asset("assets/svg/notification.svg"),
                          ),
                          Positioned(
                            bottom: 15.0,
                            right: 15.0,
                            child:
                                SvgPicture.asset("assets/svg/notiNumber.svg"),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const Text(
                    "الإعدادات",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 22.0,
                        fontWeight: FontWeight.bold),
                  ),
                  Container(
                    height: 32.0,
                    width: 32.0,
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child:
                          SvgPicture.asset("assets/svg/Icons- Left- 24px.svg"),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 1.0,
            ),
            Expanded(
                child: Padding(
              padding: const EdgeInsets.only(left: 30.0, right: 30.0),
              child: Column(
                children: [
                  headerWidget(),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: settingTextWidget("العروض", () {}),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: settingTextWidget("الطاولات", () {}),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: settingTextWidget("فريق العمل", () {}),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: settingTextWidget("المطعم", () {}),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: settingTextWidget("لاعادة الخطوات الارشاديه", () {}),
                  ),
                ],
              ),
            )),
          ],
        ),
      ),
    );
  }

  Widget settingTextWidget(String txt, Function onPress) {
    return GestureDetector(
      onTap: () => onPress(),
      child: Container(
        decoration: const BoxDecoration(
          color: Colors.green,
          borderRadius: BorderRadius.all(
            Radius.circular(18),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Align(
                alignment: Alignment.centerLeft,
                child: Icon(
                  Icons.arrow_back,
                  size: 30,
                  color: Colors.white,
                ),
              ),
              Text(
                txt,
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget headerWidget() {
    bool isSwitched = false;
    void toggleSwitch(bool value) {
      if (isSwitched == false) {
        setState(() {
          isSwitched = true;
        });
        print('Switch Button is ON');
      } else {
        setState(() {
          isSwitched = false;
        });
        print('Switch Button is OFF');
      }
    }

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          const SizedBox(
            height: 10.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Switch(
                activeColor: Colors.green,
                value: isSwitched,
                onChanged: toggleSwitch,
                activeTrackColor: Colors.greenAccent,
                inactiveThumbColor: Colors.green,
                inactiveTrackColor: Colors.greenAccent,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Column(
                    children: const [
                      Text(
                        'احمد سويلم',
                        style: TextStyle(
                            fontSize: 18,
                            color: Colors.green,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'مدير المطعم',
                        style: TextStyle(
                            fontSize: 16,
                            color: Colors.grey,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  SizedBox(
                      height: 70.0,
                      width: 70.0,
                      child: Image.asset("assets/svg/Photo placeholder.png")),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
