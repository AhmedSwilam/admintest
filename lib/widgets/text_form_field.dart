import 'package:flutter/material.dart';

import 'app_colors.dart';

class MyTextFormField extends StatelessWidget {
  final TextEditingController? controller;
  final FocusNode? focusNode;
  final String? Function(String? val)? validate;
  final String? labelText;
  final String? hintText;
  final int? maxLines;
  final int? minLines;
  final Function(String? val)? onSaved;
  final bool? obscureText;
  final Widget? suffix;
  final TextInputType? keyboardType;

  const MyTextFormField({
    Key? key,
    @required this.controller,
    @required this.focusNode,
    @required this.validate,
    @required this.hintText,
    @required this.onSaved,
    this.labelText,
    this.keyboardType,
    this.obscureText = false,
    this.suffix,
    this.maxLines,
    this.minLines,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    // Color color = focusNode!.hasFocus ? AppColors.textColor : Colors.grey;
    return TextFormField(
      controller: controller,
      maxLines: maxLines ?? 1,
      minLines: minLines,
      keyboardType: keyboardType,
      validator: validate,
      obscureText: obscureText!,
      cursorColor: AppColors.primaryColor,
      decoration: InputDecoration(
        fillColor: const Color(0xffF8F8F8),
        filled: true,
        suffix: suffix,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.0),
          borderSide: const BorderSide(color: AppColors.textFieldBoderColor),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.0),
          borderSide: const BorderSide(color: AppColors.textFieldBoderColor),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.0),
          borderSide: const BorderSide(color: AppColors.errorColor),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.0),
          borderSide: const BorderSide(color: AppColors.errorColor),
        ),
        // labelText: labelText,
        // labelStyle:
        //     Theme.of(context).textTheme.bodyText2.copyWith(color: color),
        hintText: hintText,
        isDense: true,
        errorStyle: Theme.of(context)
            .textTheme
            .subtitle1!
            .copyWith(color: Colors.red, fontSize: 12),
        hintStyle:
            Theme.of(context).textTheme.bodyText2!.copyWith(color: Colors.grey),
      ),
      style: Theme.of(context).textTheme.bodyText2!.copyWith(fontSize: 16),
      focusNode: focusNode,
      onSaved: onSaved,
    );
  }
}
