import 'package:adminapp/add_category/add_category.dart';
import 'package:adminapp/list_customer/component/settings_screen.dart';
import 'package:adminapp/widgets/app_colors.dart';
import 'package:adminapp/widgets/text_form_field.dart';
import 'package:adminapp/widgets/weight_widget.dart';
import 'package:flutter/material.dart';

class AddOfferScreen extends StatefulWidget {
  const AddOfferScreen({Key? key}) : super(key: key);

  @override
  _AddOferScreenState createState() => _AddOferScreenState();
}

class _AddOferScreenState extends State<AddOfferScreen> {
  TextEditingController couponNumberController = TextEditingController();
  TextEditingController couponDetailsController = TextEditingController();
  final FocusNode couponNumberFocus = FocusNode();
  final FocusNode couponDetailsFocus = FocusNode();
  String? couponNumber;
  String? couponDetails;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.only(left: 14.0,right: 14.0),
          child: Column(
            children: [
              const SizedBox(
                height: 20.0,
              ),
              const Align(
                alignment: Alignment.center,
                child:  Text(
                  "إضافة عرض",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 22.0,
                      fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(
                height: 40.0,
              ),
              MyTextFormField(
                controller: couponNumberController,
                focusNode: couponNumberFocus,
                keyboardType: TextInputType.name,
                // validate: (value) =>
                //     Validator.phoneValidate(value!, context),
                labelText: ('رقم الكوبون'),
                hintText: ('رقم الكوبون'),
                onSaved: (value) {
                  couponNumber = value;
                }, validate: (String? val) {  },
              ),
              const SizedBox(
                height: 20.0,
              ),
              MyTextFormField(
                controller: couponDetailsController,
                focusNode: couponDetailsFocus,
                keyboardType: TextInputType.name,
                // validate: (value) =>
                //     Validator.phoneValidate(value!, context),
                labelText: ('تفاصيل الكوبون'),
                hintText: ('تفاصيل الكوبون'),
                onSaved: (value) {
                  couponDetails = value;
                }, validate: (String? val) {  },
              ),
              const SizedBox(
                height: 40.0,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Align(
                  alignment: Alignment.centerRight,
                  child: Text("مدة الكوبون",style: Theme.of(context)
                      .textTheme
                      .subtitle1!
                      .copyWith(color: AppColors.grayColor, fontSize: 18),),
                ),
              ),
              const SizedBox(
                height: 40.0,
              ),
              WeightSelect(),
              const SizedBox(
                height: 20.0,
              ),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: const <Widget>[
                  Text(
                    "أيام من تاريخ الانشاء",
                    style: TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.bold,
                      fontSize: 12.0,
                    ),
                  ),
                  SizedBox(width: 5.0),
                  Text(
                   "5",
                    style: TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.bold,
                      fontSize: 12.0,
                    ),
                  ),
                  SizedBox(width: 5.0),
                  Text(
                    "صالح لمدة",
                    style: TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.bold,
                      fontSize: 12.0,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20.0,
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
                            const AddCategory(),),
                      );
                    },
                    child: const Center(
                      child: Text(
                        "تأكيد الكوبون",
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25), // <-- Radius
                      ),
                      primary: AppColors.greenColor,
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
      ),
    );
  }
}
