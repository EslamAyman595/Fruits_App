import 'package:app_fruit/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ScoialLoginButton extends StatelessWidget {
  const ScoialLoginButton(
      {Key? key, required this.image, required this.title, this.onPressed})
      : super(key: key);
  final String image;
  final String title;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: double.infinity,
        height: 56,
        child: TextButton(
          style: TextButton.styleFrom(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                  side: const BorderSide(color: Color(0xffdcdede)))),
          onPressed: onPressed,
          child: ListTile(
            visualDensity:const VisualDensity(
              vertical: VisualDensity.minimumDensity
            ),
            leading: SvgPicture.asset(image),
            title: Text(
              title,
              textAlign: TextAlign.center,
              style:
                  Styles.textStyle16.copyWith(color: const Color(0xff0c0d0d)),
            ),
          ),
        ));
  }
}
