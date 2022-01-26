import 'package:adminapp/list_customer/component/offers_screen.dart';
import 'package:adminapp/list_customer/component/shared_app_title.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'customer_screen.dart';

class FoodList extends StatefulWidget {
  const FoodList({Key? key}) : super(key: key);

  @override
  _FoodListState createState() => _FoodListState();
}

class _FoodListState extends State<FoodList> {
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
            SharedAppTitle(
              title: GestureDetector(
                onTap: (){
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (BuildContext context) =>
                      const OffersScreen(),),
                  );
                },
                child: const Text(
                  "قائمة الطعام",
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
                      const OffersScreen(),),
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
            const SizedBox(
              height: 10.0,
            ),
            Expanded(
              child: ListView.builder(
                itemCount: 4,
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      elevation: 8.0,
                      child: Padding(
                        padding: const EdgeInsets.only(
                            left: 00.0, top: 4.0, right: 4.0, bottom: 00.0),
                        child: Align(
                          alignment: Alignment.bottomCenter,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding:
                                const EdgeInsets.all(8.0),
                                child: SizedBox(
                                  width: 120.0,
                                  height: 40,
                                  child: ElevatedButton(
                                    onPressed: () {
                                      Navigator.pushReplacement(
                                        context,
                                        MaterialPageRoute(
                                            builder: (BuildContext
                                            context) =>
                                            const CustomerScreen(),),
                                      );
                                    },
                                    child: const Center(
                                      child: Text(
                                        "تعديل الصنف",
                                      ),
                                    ),
                                    style:
                                    ElevatedButton.styleFrom(
                                      shape:
                                      RoundedRectangleBorder(
                                        borderRadius:
                                        BorderRadius.circular(
                                            25), // <-- Radius
                                      ),
                                      primary: Colors.green,
                                      padding:
                                      const EdgeInsets.all(
                                          4.0),
                                      textStyle: const TextStyle(
                                          color: Colors.white,
                                          fontWeight:
                                          FontWeight.bold,
                                          fontSize: 18.0),
                                    ),
                                  ),
                                ),
                              ),
                              Column(
                                children: const [
                                  Text(
                                    "خس طازج",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18.0),
                                  ),
                                  Text(
                                    "وصف المنتج",
                                    style: TextStyle(
                                        color: Colors.grey,
                                        fontWeight: FontWeight.normal,
                                        fontSize: 14.0),
                                  ),
                                  SizedBox(
                                    width: 50.0,
                                  ),
                                  Text(
                                    "200 ريال",
                                    style: TextStyle(
                                        color: Colors.yellow,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18.0),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 120.0,
                                child: Image.asset(
                                    "assets/svg/Photo placeholder.png"),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
