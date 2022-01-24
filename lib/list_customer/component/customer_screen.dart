import 'package:adminapp/list_customer/component/food_list.dart';
import 'package:adminapp/list_customer/component/shared_app_title.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomerScreen extends StatefulWidget {
  const CustomerScreen({Key? key}) : super(key: key);

  @override
  _CustomerScreenState createState() => _CustomerScreenState();
}

class _CustomerScreenState extends State<CustomerScreen> {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var padding = width * 0.044;
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Scaffold(
        body: Column(
          children: [
            const SizedBox(
              height: 30.0,
            ),
            SharedAppTitle(
              title: GestureDetector(
                onTap: (){
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (BuildContext context) =>
                      const FoodList(),),
                  );
                },
                child: const Text(
                  "العملاء",
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
                      const FoodList(),),
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
            Expanded(
              child: ListView.builder(
                itemCount: 4,
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: const EdgeInsets.only(top: 1.0,right: 10.0,left: 10.0,bottom: 1.0),
                    child: Card(
                      color: const Color(0xFFF5F5F5),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      elevation: 4.0,
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 30.0,top: 4.0,right: 30.0,bottom: 4.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: const [
                                Text(
                                  "احمد سويلم",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18.0),
                                ),
                                Text("اسم العميل",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18.0)),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 30.0,top: 0.0,right: 30.0,bottom: 4.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: const [
                                Text(
                                  "+966 5070855",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18.0),
                                ),
                                Text("رقم الهاتف",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18.0),),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 30.0,top: 0.0,right: 30.0,bottom: 4.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: const [
                                Text(
                                  "25",
                                  style: TextStyle(
                                      color: Colors.green,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18.0),
                                ),
                                Text(
                                  "عدد مرات الطلب",
                                  style: TextStyle(
                                      color: Colors.green,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18.0),
                                ),
                              ],
                            ),
                          ),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: SizedBox(
                              width: 140.0,
                              child: Padding(
                                padding: const EdgeInsets.only(left: 30.0,top: 0.0,right: 0.0,bottom: 4.0),
                                child: ElevatedButton(
                                  onPressed: () {},
                                  child: const Center(
                                    child: Text(
                                      "ارسال عرض",
                                    ),
                                  ),
                                  style: ElevatedButton.styleFrom(
                                    shape: RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.circular(25), // <-- Radius
                                    ),
                                    primary: Colors.deepOrange,
                                    padding: const EdgeInsets.all(4.0),
                                    textStyle: const TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18.0),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
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
