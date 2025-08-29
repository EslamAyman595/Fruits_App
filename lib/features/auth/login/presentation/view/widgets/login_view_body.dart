import 'package:app_fruit/constants.dart';
import 'package:app_fruit/core/utils/app_colors.dart';
import 'package:app_fruit/core/utils/app_images.dart';
import 'package:app_fruit/core/utils/styles.dart';
import 'package:app_fruit/core/widgets/custom_button.dart';
import 'package:app_fruit/core/widgets/custom_text_form_field.dart';
import 'package:app_fruit/core/widgets/dont_have_acount_widget.dart';
import 'package:app_fruit/core/widgets/or_divider.dart';
import 'package:app_fruit/features/auth/login/presentation/view/widgets/scoial_login_button.dart';
import 'package:flutter/material.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: kHorzontalPadding),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 12,
              ),
              const CustomTextFormField(
                hintText: 'البريد الالكتروني',
                keyboardType: TextInputType.emailAddress,
              ),
              const SizedBox(
                height: 12,
              ),
              CustomTextFormField(
                hintText: 'الكلمة المرور',
                keyboardType: TextInputType.visiblePassword,
                suffixIcon: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.remove_red_eye,
                    color: Colors.grey,
                  ),
                  color: const Color(0xffC9CECF),
                ),
              ),
              const SizedBox(
                height: 12,
              ),
              Row(mainAxisAlignment: MainAxisAlignment.end, children: [
                Text(
                  'نسيت كلمة المرور؟',
                  style: Styles.textStyle13
                      .copyWith(color: AppColors.lightPrimaryColor),
                  textAlign: TextAlign.start,
                ),
              ]),
              const SizedBox(
                height: 16,
              ),
              CustomButton(
                text: 'تسجيل الدخول',
                onPressed: () {},
                style: Styles.textStyle16,
              ),
              const SizedBox(
                height: 16,
              ),
              const DontHaveAnAcountWidget(),
              const SizedBox(
                height: 12,
              ),
              const OrDivider(),
              const SizedBox(
                height: 12,
              ),
              ScoialLoginButton(
                image: Assets.imagesGoogleIcon,
                title: 'تسجيل بواسطة جوجل',
                onPressed: () {},
              ),
              const SizedBox(
                height: 12,
              ),
              ScoialLoginButton(
                image: Assets.imagesAppleIcon,
                title: 'تسجيل بواسطة أبل',
                onPressed: () {},
              ),
              const SizedBox(
                height: 12,
              ),
              ScoialLoginButton(
                image: Assets.imagesFaceIcon,
                title: 'تسجيل بواسطة فيسبوك',
                onPressed: () {},
              )
            ],
          ),
        ),
      ),
    );
  }
}
