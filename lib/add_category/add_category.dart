
import 'package:adminapp/list_customer/component/settings_screen.dart';
import 'package:adminapp/list_customer/component/shared_card.dart';
import 'package:adminapp/tables/mainTableScreen.dart';
import 'package:adminapp/widgets/app_colors.dart';
import 'package:adminapp/widgets/text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AddCategory extends StatefulWidget {
  const AddCategory({Key? key}) : super(key: key);

  @override
  _AddCategoryState createState() => _AddCategoryState();
}

class _AddCategoryState extends State<AddCategory> {
  TextEditingController categoryNameController = TextEditingController();
  TextEditingController categoryPriceController = TextEditingController();
  TextEditingController categoryDetailsController = TextEditingController();
  final FocusNode categoryNameFocus = FocusNode();
  final FocusNode categoryPriceFocus = FocusNode();
  final FocusNode categoryDetailsFocus = FocusNode();
  String? categoryName;
  String? categoryPrice;
  String? couponDetails;
  String? value;
  final items = ['Apple', 'Banana', 'Grapes', 'Orange', 'watermelon', 'Pineapple'];
  @override
  Widget build(BuildContext context) {

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.only(left: 14.0, right: 14.0),
          child: Column(
            children: [
              const SizedBox(
                height: 20.0,
              ),
              Row(
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
                      child: Text(""),
                    ),
                  ),
                  const Text(
                    "اضافة صنف",
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
              const SizedBox(
                height: 40.0,
              ),
              MyTextFormField(
                controller: categoryNameController,
                focusNode: categoryNameFocus,
                keyboardType: TextInputType.name,
                // validate: (value) =>
                //     Validator.phoneValidate(value!, context),
                labelText: ('اسم الصنف'),
                hintText: ('اسم الصنف'),
                onSaved: (value) {
                  categoryName = value;
                },
                validate: (String? val) {},
              ),
              const SizedBox(
                height: 20.0,
              ),
              MyTextFormField(
                controller: categoryPriceController,
                focusNode: categoryPriceFocus,
                keyboardType: TextInputType.name,
                // validate: (value) =>
                //     Validator.phoneValidate(value!, context),
                labelText: ('سعر الصنف'),
                hintText: ('سعر الصنف'),
                onSaved: (value) {
                  categoryPrice = value;
                },
                validate: (String? val) {},
              ),
              const SizedBox(
                height: 40.0,
              ),
              MyTextFormField(
                controller: categoryDetailsController,
                focusNode: categoryDetailsFocus,
                keyboardType: TextInputType.name,
                // validate: (value) =>
                //     Validator.phoneValidate(value!, context),
                labelText: ('وصف الصنف'),
                hintText: ('وصف الصنف'),
                onSaved: (value) {
                  couponDetails = value;
                },
                validate: (String? val) {},
              ),
              const SizedBox(
                height: 20.0,
              ),
              AppCard(
                color: AppColors.whiteColor,
                widget: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(""),
                        const SizedBox(
                          height: 30.0,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: SizedBox(
                            width: 140.0,
                            height: 35,
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
                                  "أضف صورة الصنف ",
                                ),
                              ),
                              style: ElevatedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.circular(18), // <-- Radius
                                ),
                                primary: AppColors.greenColor,
                                padding: const EdgeInsets.all(4.0),
                                textStyle: const TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 14.0),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Image.asset("assets/svg/Photoplaceholder.png")
                  ],
                ),
              ),
              const SizedBox(
                height: 10.0,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: const Color(0xFFF8F8F8),
                    borderRadius: BorderRadius.circular(14),
                  ),
                  child: DropdownButtonHideUnderline(
                    child: DropdownButton(
                      hint:  const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text("اضافة طبق جانبي",
                          style: TextStyle(
                              color: Colors.grey, fontSize: 18.0, fontWeight: FontWeight.normal
                        ),
                      ),),
                      isExpanded: true,
                      value: value,
                      icon: const Icon(Icons.keyboard_arrow_down),
                      items: items.map(buildMenuItem).toList(),
                      onChanged: (value)=>setState(() {
                        this.value = value as String?;
                      }),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 60.0,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  width: 200.0,
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
                        "تأكيد",
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18), // <-- Radius
                      ),
                      primary: AppColors.greenColor,
                      padding: const EdgeInsets.all(4.0),
                      textStyle: const TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 24.0),
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

  DropdownMenuItem<String> buildMenuItem(String item) => DropdownMenuItem(
    value: item,
        child: Text(
          item,
          style: const TextStyle(
              color: Colors.grey, fontSize: 18.0, fontWeight: FontWeight.normal),
        ),
      );
}
