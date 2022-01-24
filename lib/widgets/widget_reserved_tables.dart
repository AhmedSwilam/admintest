import 'package:adminapp/list_customer/component/shared_card.dart';
import 'package:flutter/material.dart';

class ReservedTablesWidget extends StatefulWidget {
  const ReservedTablesWidget({Key? key}) : super(key: key);

  @override
  _ReservedTablesWidgetState createState() => _ReservedTablesWidgetState();
}

class _ReservedTablesWidgetState extends State<ReservedTablesWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(
            Radius.circular(30.0),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            AppCard(
              color: const Color(0xFFFFFADC),
              widget: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width:300.0,
                        child: AppCard(
                          color: Colors.white,
                          widget: Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: const [
                                  Text(
                                    "احمد سويلم",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 14.0),
                                  ),
                                  Text(
                                    "اسم العميل",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 14.0),
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: const [
                                  Text(
                                    "+966 5070855",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 14.0),
                                  ),
                                  Text(
                                    "رقم الهاتف",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 14.0),
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: const [
                                  Text(
                                    "#1215555",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 14.0),
                                  ),
                                  Text(
                                    "رقم الحجز",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 14.0),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Container(
                            height: 50.0,
                            width: 50.0,
                            decoration: BoxDecoration(
                              color: Colors.orangeAccent,
                              border: Border.all(color: Colors.orangeAccent),
                              borderRadius: const BorderRadius.all(
                                Radius.circular(20.0),
                              ),
                            ),
                            child: const Center(
                              child: Text(
                                "6",
                                style: TextStyle(
                                    fontSize: 20.0,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 50.0,
                            child: Text("رقم الطاولة",
                              style: TextStyle(color: Colors.grey,fontSize: 18,fontWeight: FontWeight.normal),),),
                        ],
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text(
                        "12 mon  - 11:00 Pm",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 16.0),
                      ),
                      Text(
                        "التاريخ",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 16.0),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text(
                        "5",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 16.0),
                      ),
                      Text(
                        "عدد الأفراد",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 16.0),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 6.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children:  [
                      SizedBox(
                        width: 110,
                        child: ElevatedButton.icon(
                          icon: const Icon(
                            Icons.call,
                            color: Colors.white,
                            size: 20.0,
                          ),
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            shape: StadiumBorder(),
                            primary: Colors.green,
                            textStyle: const TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),), label: Text('اتصال'),
                        ),
                      ),
                      GestureDetector(
                        child: Container(
                          width: 90.0,
                          decoration:  BoxDecoration(
                            border: Border.all(color: Colors.red),
                            borderRadius: const BorderRadius.all(
                              Radius.circular(20.0),
                            ),
                          ),
                          child: const Center(
                            child: Text(
                              "الغاء",
                              style: TextStyle(
                                  color: Colors.red,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20.0),
                            ),
                          ),
                        ),
                      ),
                      GestureDetector(
                        child: Container(
                          width: 90.0,
                          decoration:  BoxDecoration(
                            border: Border.all(color: Colors.green),
                            borderRadius: const BorderRadius.all(
                              Radius.circular(20.0),
                            ),
                          ),
                          child: const Center(
                            child: Text(
                              "تأكيد",
                              style: TextStyle(
                                  color: Colors.green,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20.0),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      );
  }
}
