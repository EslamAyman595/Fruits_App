import 'package:app_fruit/core/utils/app_colors.dart';
import 'package:app_fruit/core/utils/styles.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class DontHaveAnAcountWidget extends StatelessWidget {
  const DontHaveAnAcountWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text.rich(
        TextSpan(
        text: 'ليس لديك حساب؟',
        style: Styles.textStyle16.copyWith(color: AppColors.eColor),
        children: [
          TextSpan(
            text: ' قم بانشاء حساب' ,
            style: Styles.textStyle13.copyWith(color:const Color(0xff1b5e37)),
            recognizer: TapGestureRecognizer()..onTap = () {
              // Navigate to create account
            },
          ),
        ],
      )
    );
  }
}