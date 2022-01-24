import 'package:adminapp/list_customer/component/shared_card.dart';
import 'package:flutter/material.dart';

class WidgetBusyTables extends StatefulWidget {
  const WidgetBusyTables({Key? key}) : super(key: key);

  @override
  _WidgetBusyTablesState createState() => _WidgetBusyTablesState();
}

class _WidgetBusyTablesState extends State<WidgetBusyTables> {
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
            color: const Color(0xFFFFF6F5),
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
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 50.0,
                          width: 50.0,
                          decoration: BoxDecoration(
                            color: Colors.redAccent,
                            border: Border.all(color: Colors.redAccent),
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
                const Divider(
                  thickness: 1.0,
                ),
                const SizedBox(
                  height: 3.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: const [
                    Text(
                      "زيتون مشكل",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.normal,
                          fontSize: 14.0),
                    ),
                    SizedBox(
                     width: 30.0
                    ),
                    Text(
                      "X",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.normal,
                          fontSize: 14.0),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 3.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: const [
                    Text(
                      "عسل ابيض",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.normal,
                          fontSize: 14.0),
                    ),
                    SizedBox(
                        width: 30.0
                    ),
                    Text(
                      "X",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.normal,
                          fontSize: 14.0),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 3.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: const [
                    Text(
                      "مشكل جبن تركي",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.normal,
                          fontSize: 14.0),
                    ),
                    SizedBox(
                        width: 30.0
                    ),
                    Text(
                      "X",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.normal,
                          fontSize: 14.0),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 3.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: const [
                    Text(
                      "خبز سويسري طازج",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.normal,
                          fontSize: 14.0),
                    ),
                    SizedBox(
                        width: 20.0
                    ),
                    Text(
                      "X",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.normal,
                          fontSize: 14.0),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 2.0,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20.0,right: 20.0),
                  child: SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      child: const Text('تعديل الطلبات'),
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        shape: const StadiumBorder(),
                        primary: Colors.grey,
                        textStyle: const TextStyle(
                            color: Colors.black54,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 6.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children:  [
                    const Text('50 ريال',style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 20.0),),
                    GestureDetector(
                      child: Container(
                        width: 120.0,
                        decoration:  BoxDecoration(
                          border: Border.all(color: Colors.red),
                          borderRadius: const BorderRadius.all(
                            Radius.circular(20.0),
                          ),
                        ),
                        child: const Center(
                          child: Text(
                            "تأكيد الأستلام",
                            style: TextStyle(
                                color: Colors.red,
                                fontWeight: FontWeight.bold,
                                fontSize: 16.0),
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
                            "تحرير",
                            style: TextStyle(
                                color: Colors.green,
                                fontWeight: FontWeight.bold,
                                fontSize: 16.0),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 6.0,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
