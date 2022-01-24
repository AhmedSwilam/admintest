import 'dart:ui';
import 'package:adminapp/list_customer/component/shared_card.dart';
import 'package:flutter/material.dart';

class EmptyTable extends StatefulWidget {
  const EmptyTable({Key? key}) : super(key: key);

  @override
  _EmptyTableState createState() => _EmptyTableState();
}

class _EmptyTableState extends State<EmptyTable> {
  @override
  Widget build(BuildContext context) {
    List<int> text = [1, 2, 7, 12, 3, 8, 4, 6, 5];
    return Scaffold(
      body: Container(
        decoration:  const BoxDecoration(
          borderRadius: BorderRadius.all(
            Radius.circular(30.0),
          ),
        ),
        child: AppCard(
          color: const Color(0xFFF5FFF8),
          widget: Column(
            children: [
              const Text(
                "اضغط لاظهار خيارات الطاولة",
                style: TextStyle(
                    color: Colors.green,
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 400.0,
                child: GridView.count(
                  crossAxisCount: 3,
                  childAspectRatio: 1.0,
                  padding: const EdgeInsets.all(4.0),
                  mainAxisSpacing: 4.0,
                  crossAxisSpacing: 4.0,
                  children: List.generate(text.length, (index) {
                    return Container(
                      margin: const EdgeInsets.all(15.0),
                      padding: const EdgeInsets.all(3.0),
                      height: 60.0,
                      width: 60.0,
                      decoration:  BoxDecoration(
                          border: Border.all(color: Colors.green),
                        borderRadius: const BorderRadius.all(
                            Radius.circular(20.0),
                        ),
                          ),
                      child: Center(
                        child: Text(
                          text[index].toString(),
                          style: const TextStyle(
                              fontSize: 20.0,
                              color: Colors.green,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    );
                  }),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
