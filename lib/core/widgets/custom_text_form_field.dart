import 'package:app_fruit/core/utils/app_colors.dart';
import 'package:app_fruit/core/utils/styles.dart';
import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
const CustomTextFormField({ Key? key, this.hintText, this.keyboardType, this.suffixIcon }) : super(key: key);
final String? hintText;
// final TextEditingController? controller;
final TextInputType? keyboardType;
final Widget? suffixIcon;
  @override
  Widget build(BuildContext context){
    return TextFormField(
      keyboardType: keyboardType,
cursorHeight: 20,
      decoration: InputDecoration(
        suffixIcon: suffixIcon,
      
        hintText: hintText,
        hintStyle: Styles.textStyle13.copyWith(
          color: AppColors.eColor,
        ),
       
        contentPadding: const EdgeInsets.symmetric(vertical: 8, horizontal: 12,),
        filled: true,
        fillColor: const Color(0xffF9FAFA),
        border: buildBorder() ,
        enabledBorder: buildBorder(),
        focusedBorder: buildBorder()
        
      ),
    );
  }


  OutlineInputBorder buildBorder() {
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(4),
        
        borderSide:const  BorderSide(
          width: 1,
          color: Color(0xffE6E9E9)
        )
      );
  }
}