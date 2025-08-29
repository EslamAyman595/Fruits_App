import 'package:app_fruit/core/utils/styles.dart';
import 'package:flutter/material.dart';

class OrDivider extends StatelessWidget {
  const OrDivider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Divider(
            color: Color(0xffdcdede),
            thickness: 1,
            endIndent: 10,
            indent: 15,
            height: 1,
          ),
        ),
        Text(
          'أو',
          style: Styles.textStyle16.copyWith(color: Color(0xff949D9E)),
        ),
        Expanded(
          child: Divider(
            color: Color(0xffdcdede),
            thickness: 1,
            endIndent: 10,
            indent: 15,
            // height: 1,
          ),
        ),
      ],
    );
  }
}
