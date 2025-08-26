import 'package:app_fruit/core/utils/app_colors.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({Key? key, this.onPressed, required this.text, this.style})
      : super(key: key);
  final void Function()? onPressed;
  final String text;
  final TextStyle? style;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: TextButton(
          style: TextButton.styleFrom(
              backgroundColor: AppColors.primaryColor,
   
              shape:
                  RoundedRectangleBorder(borderRadius: BorderRadius.circular(16))),
          onPressed: onPressed,
          child: Text(
            text,
            style: style,
          )),
    );
  }
}
