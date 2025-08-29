
import 'package:app_fruit/core/utils/styles.dart';
import 'package:app_fruit/core/widgets/custom_appbar.dart';
import 'package:app_fruit/features/auth/login/presentation/view/widgets/login_view_body.dart';
import 'package:flutter/material.dart';



class LoginView extends StatelessWidget {
  const LoginView({super.key});
static const  routeName = 'loginView';

  @override
  Widget build(BuildContext context) {
    return const  Scaffold(
      appBar: CustomAppbar(title: 'تسجيل الدخول '),
      body: LoginViewBody()
    ,
    );
  }
}

