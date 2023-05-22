import 'package:driver_ok_delivery/utils/custom_color.dart';
import 'package:driver_ok_delivery/utils/custom_style.dart';
import 'package:flutter/material.dart';

class DefaultButton extends StatelessWidget {
  const DefaultButton({Key? key, required this.title, required this.onPresssed})
      : super(key: key);
  final String title;
  final VoidCallback onPresssed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPresssed,
      style: ElevatedButton.styleFrom(
        primary: CustomColor.primaryColor,
      ),
      child: Text(
        title,
        style: CustomStyle.defaultButtonStyle,
      ),
    );
  }
}
