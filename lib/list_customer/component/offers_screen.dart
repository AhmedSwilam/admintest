import 'package:adminapp/list_customer/component/customer_screen.dart';
import 'package:adminapp/list_customer/component/settings_screen.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class OffersScreen extends StatefulWidget {
  const OffersScreen({Key? key}) : super(key: key);

  @override
  _OffersScreenState createState() => _OffersScreenState();
}

class _OffersScreenState extends State<OffersScreen> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Scaffold(
        body: Column(
          children: [
            const SizedBox(
              height: 20.0,
            ),
            const Text(
              "العروض",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 22.0,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 4.0,
            ),
            Expanded(
              child: ListView.builder(
                itemCount: 4,
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: DottedBorder(
                      color: Colors.grey,
                      strokeWidth: .6,
                      child: Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 30.0,
                                  top: 0.0,
                                  right: 30.0,
                                  bottom: 4.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: const [
                                  Text(
                                    "fee22545",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 14.0),
                                  ),
                                  Text("رقم الكوبون",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 14.0)),
                                ],
                              ),
                            ),
                            const Align(
                              alignment: Alignment.bottomRight,
                              child: Padding(
                                padding: EdgeInsets.only(
                                    left: 0.0,
                                    top: 0.0,
                                    right: 20.0,
                                    bottom: 0.0),
                                child: SizedBox(
                                  width: 180.0,
                                  child: Text(
                                      "هذا الكوبون بقيمة خصم 20 % على جميع الطاولات في المطعم",
                                      style: TextStyle(
                                          color: Colors.grey,
                                          fontWeight: FontWeight.normal,
                                          fontSize: 14.0)),
                                ),
                              ),
                            ),
                            Align(
                              alignment: Alignment.centerLeft,
                              child: SizedBox(
                                width: 140.0,
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      left: 30.0,
                                      top: 0.0,
                                      right: 0.0,
                                      bottom: 4.0),
                                  child: ElevatedButton(
                                    onPressed: () {},
                                    child: const Center(
                                      child: Text(
                                        "تعطيل",
                                      ),
                                    ),
                                    style: ElevatedButton.styleFrom(
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(
                                            25), // <-- Radius
                                      ),
                                      primary: Colors.deepOrange,
                                      padding: const EdgeInsets.all(4.0),
                                      textStyle: const TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 14.0),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                width: 220.0,
                height: 50,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (BuildContext context) =>
                              const SettingsScreen()),
                    );
                  },
                  child: const Center(
                    child: Text(
                      "إضافة صنف",
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25), // <-- Radius
                    ),
                    primary: Colors.red,
                    padding: const EdgeInsets.all(4.0),
                    textStyle: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 22.0),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
