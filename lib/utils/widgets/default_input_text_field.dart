import 'package:flutter/material.dart';
import 'package:driver_ok_delivery/utils/custom_color.dart';
import 'package:driver_ok_delivery/utils/custom_style.dart';

class DefaultTextInputField extends StatelessWidget {
  const DefaultTextInputField({
    Key? key,
    required this.controller,
    required this.hintText,
    required this.keyboardType,
    required this.icon,
  }) : super(key: key);
  final TextEditingController controller;
  final String hintText;
  final TextInputType? keyboardType;
  final Icon icon;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autofocus: false,
      controller: controller,
      keyboardType: keyboardType,
      textInputAction: TextInputAction.next,
      onSaved: (value) => controller.text = value!,
      decoration: InputDecoration(
        prefixIcon: Container(
          width: 66,
          height: 55,
          margin: const EdgeInsets.only(right: 17),
          decoration: BoxDecoration(
            color: CustomColor.textInputIconBgColor,
            borderRadius: BorderRadius.circular(10.00 * 0.5),
          ),
          child: icon,
        ),
        hintText: hintText,
        hintStyle: CustomStyle.hintTextStyle,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.00 * 0.5),
          borderSide: BorderSide.none,
        ),
        filled: true,
        fillColor: Colors.black.withOpacity(0.05),
      ),
    );
  }
}
